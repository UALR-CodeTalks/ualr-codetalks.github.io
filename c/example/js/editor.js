
var editor = ace.edit("editor");

editor.setTheme("ace/theme/monokai");
editor.getSession().setMode("ace/mode/javascript");
editor.getSession().setTabSize(4);

editor.resize();

function changeTheme(selectTheme) {
    var value = selectTheme.options[selectTheme.selectedIndex].value;

    editor.setTheme("ace/theme/"+value);
}

function changeMode(selectMode) {
    var value = selectMode.options[selectMode.selectedIndex].value;

    editor.getSession().setMode("ace/mode/"+value);
}
