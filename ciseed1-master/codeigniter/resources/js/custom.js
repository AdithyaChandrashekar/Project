$(document).ready(function(){
    $("button").click(function(){
        console.log("test");
        $.ajax({url: "/students/show_all", success: function(result){
            $("#div1").html(result);
        }});
    });
});


$.post("/students/create_student",
    {
        name: "Donald Duck",
        password: "Duckburg"
    },
    function(data, status){
        console.log("Data: " + data + "\nStatus: " + status);
    });

    $.post("/students/update_student",
        {
            id: 5,
            name: "Donald Duck",
            password: "dd"
        },
        function(data, status){
            console.log("Data: " + data + "\nStatus: " + status);
        });
