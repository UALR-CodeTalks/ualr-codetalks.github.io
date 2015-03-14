


function dropDiv(icon, divNumber) {
    var divList = document.getElementsByClassName("belowline");
    var div = divList[divNumber];

    if(icon.className == "fa fa-caret-up fa-2x caret") {
        icon.className = "fa fa-caret-down fa-2x caret";

        div.style.position="relative";
        div.style.top="0px";
        div.style.right="0px";
    }

    else {
        icon.className = "fa fa-caret-up fa-2x caret";

        div.style.position="relative";
        div.style.top="-100px";
        div.style.right="0px";

        div.style.overflow="hidden";
    }
}
