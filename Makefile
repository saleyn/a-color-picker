all: build.prod

build.prod: MINIFY=1 SOURCEMAP=1
build.prod: build

build: esbuild
	cd src && ../node_modules/.bin/esbuild acolorpicker.js --bundle$(if $(MINIFY), --minify)$(if $(SOURCEMAP), --sourcemap) --loader:.html=file --outfile=../dist/acolorpicker.$(if $(MINIFY),min.)js

esbuild: node_modules/esbuild/bin/esbuild
	npm install --save-exact --save-dev esbuild
