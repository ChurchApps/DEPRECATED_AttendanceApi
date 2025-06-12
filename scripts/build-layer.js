#!/usr/bin/env node

const fs = require('fs-extra');
const path = require('path');
const { execSync } = require('child_process');
const archiver = require('archiver');

const buildLayer = async () => {
  console.log('🔨 Building Lambda dependencies layer...');
  
  // Clean up previous builds
  if (fs.existsSync('layer')) {
    await fs.remove('layer');
  }
  if (fs.existsSync('layer.zip')) {
    await fs.remove('layer.zip');
  }

  // Create layer directory structure
  const layerDir = path.join(process.cwd(), 'layer', 'nodejs');
  await fs.ensureDir(layerDir);

  // Copy layer-specific package.json with production dependencies only
  await fs.copy('tools/layer-package.json', path.join(layerDir, 'package.json'));
  
  // Copy .npmrc if it exists
  if (fs.existsSync('.npmrc')) {
    await fs.copy('.npmrc', path.join(layerDir, '.npmrc'));
  }

  // Install production dependencies in layer
  console.log('📦 Installing production dependencies...');
  execSync('npm install --production --no-package-lock', {
    cwd: layerDir,
    stdio: 'inherit'
  });

  // Create the layer zip file
  console.log('🗜️  Creating layer.zip...');
  await createZip('layer', 'layer.zip');

  console.log('✅ Layer built successfully!');
  
  // Clean up layer directory (keep only the zip)
  await fs.remove('layer');
  
  // Show final size
  const stats = fs.statSync('layer.zip');
  console.log(`📊 Layer size: ${(stats.size / 1024 / 1024).toFixed(2)}MB`);
};

const createZip = (sourceDir, outputPath) => {
  return new Promise((resolve, reject) => {
    const output = fs.createWriteStream(outputPath);
    const archive = archiver('zip', { zlib: { level: 9 } });

    output.on('close', () => {
      console.log(`📦 Created ${outputPath} (${(archive.pointer() / 1024 / 1024).toFixed(2)}MB)`);
      resolve();
    });

    archive.on('error', reject);
    archive.pipe(output);
    archive.directory(sourceDir, false);
    archive.finalize();
  });
};

buildLayer().catch(console.error);