import "reflect-metadata";
import dotenv from "dotenv";
import { Environment } from "../src/helpers/Environment";
import { Pool, DBCreator } from "@churchapps/apihelper";

const init = async () => {

  dotenv.config();
  await Environment.init(process.env.APP_ENV?.toString() || "");
  console.log("Connecting");
  Pool.initPool();


  const attendanceTables: { title: string, file: string }[] = [
    { title: "Campuses", file: "campuses.mysql" },
    { title: "Services", file: "services.mysql" },
    { title: "Service Times", file: "serviceTimes.mysql" },
    { title: "Group Service Times", file: "groupServiceTimes.mysql" },
    { title: "Sessions", file: "sessions.mysql" },
    { title: "Settings", file: "settings.mysql" },
    { title: "Visits", file: "visits.mysql" },
    { title: "Visit Sessions", file: "visitSessions.mysql" }
  ];

  await initTables("Attendance", attendanceTables);
}

const initTables = async (displayName: string, tables: { title: string, file: string }[]) => {
  console.log("");
  console.log("SECTION: " + displayName);
  for (const table of tables) await DBCreator.runScript(table.title, "./tools/dbScripts/" + table.file, false);
}

init()
  .then(() => { console.log("Database Created"); process.exit(0); })
  .catch((ex) => {
    console.log(ex);
    console.log("Database not created due to errors");
    process.exit(0);
  });

