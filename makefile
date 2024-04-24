package.json:
	npm install `cat npm-requirements.txt`

remark: package.json
	npx remark ./*.md ./lectures-materials --rc-path .remarkrc
