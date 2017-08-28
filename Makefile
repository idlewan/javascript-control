all: manifest.json background.js
	apack javascript_control.zip *.js *.json js.png js_disabled.png

manifest.json: manifest.yaml
	remarshal -if yaml -of json --indent-json $< > $@

