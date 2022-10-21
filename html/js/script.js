$(function(){
    window.addEventListener('message', function(event) {
        if (event.data.action == "ausmachen"){
            $("#pluginscreen").css("display", "none");
        }
        else if (event.data.action == "anmachen"){
            $("#pluginscreen").css("display", "block");
        }
    });

});


