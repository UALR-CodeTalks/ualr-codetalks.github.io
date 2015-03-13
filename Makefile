
all: m res u c-e p-dir p-gs p-wct

m: ./css/index.scss
	sass ./css/index.scss > ./css/index.css

res: ./resources/css/global.scss
	sass ./resources/css/global.scss > ./resources/css/global.css

p-dir: ./p/css/index.scss ./p/css/topic-grid.scss
	sass ./p/css/index.scss > ./p/css/index.css
	sass ./p/css/topic-grid.scss > ./p/css/topic-grid.css

p-gs: ./p/Getting\ Started/css/index.scss ./p/Getting\ Started/css/editor.scss ./p/Getting\ Started/css/comments.scss
	sass ./p/Getting\ Started/css/index.scss > ./p/Getting\ Started/css/index.css
	sass ./p/Getting\ Started/css/editor.scss > ./p/Getting\ Started/css/editor.css
	sass ./p/Getting\ Started/css/comments.scss > ./p/Getting\ Started/css/comments.css

p-wct: ./p/Why\ CodeTalks/css/index.scss ./p/Why\ CodeTalks/css/editor.scss ./p/Why\ CodeTalks/css/comments.scss
	sass ./p/Why\ CodeTalks/css/index.scss > ./p/Why\ CodeTalks/css/index.css
	sass ./p/Why\ CodeTalks/css/editor.scss > ./p/Why\ CodeTalks/css/editor.css
	sass ./p/Why\ CodeTalks/css/comments.scss > ./p/Why\ CodeTalks/css/comments.css

c-e: ./c/example/css/editor.scss
	sass ./c/example/css/editor.scss > ./c/example/css/editor.css

u: ./u/css/index.scss
	sass ./u/css/index.scss > ./u/css/index.css

commit: *
	git add *
	git add -u
	git add -u *
	git commit -m "update"
	git push origin master
	git status
