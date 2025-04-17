all: esbuild build

esbuild: node_modules/.bin/esbuild
	npm install --save-exact --save-dev esbuild

build:
	cd src && ../node_modules/.bin/esbuild acolorpicker.js --bundle --minify --sourcemap --loader:.html=file --outfile=../dist/acolorpicker.min.js
