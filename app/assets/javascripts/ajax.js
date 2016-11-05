$(document).on('ready', function() {
    $("#submit").on('click', function(e) {
        e.preventDefault();
            var name = $("#ajax").val();
            $("#update").html('');
                $.ajax({url: "search/search", data: {name:name},async: false, success: function(result){
                    $("#update").html(result);
                }});

    });
});