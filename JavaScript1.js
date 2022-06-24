function displayform3() {
    var x = document.getElementById("a1");
    var y = document.getElementById("a2");

    x.style.display = "block";
    y.style.display = "none";

}

//$('.imgUpload').on('click', function () {
//    $('.uploadFile').click();
//});


function visible() {
    document.getElementById("v_1").style.display = "none";
    document.getElementById("v_2").style.display = "block";
    document.getElementById("ContentPlaceHolder1_Pg2Password").type = "text";
    document.getElementById("ContentPlaceHolder1_ConfirmPg2Password1").type = "text";
 
}
function Notvisible() {
    document.getElementById("v_2").style.display = "none";
    document.getElementById("v_1").style.display = "block";
    document.getElementById("ContentPlaceHolder1_Pg2Password").type = "password";
    document.getElementById("ContentPlaceHolder1_ConfirmPg2Password1").type = "password";
}

   




  





