$(document).ready(function(){
    $(".calScore").click(function(e){
        e.preventDefault();
        var total = 0;
        $("input[type=radio]:checked").each(function() {
            total += parseFloat($(this).val());
        });
        
        $(".test_score").val(total);
    });
    
});


