

function selectLang() {
    var val = getLanguage();
    $.i18n.setLng(val, function () { if (typeof translateAll != "undefined") translateAll(); });
}

function getLanguage() {
    var sel = $("#langList");
    return sel.val();
}
    
