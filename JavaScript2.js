//UserProfile
function displayform() {
    var x = document.getElementById("form20");
    var y = document.getElementById("form2");
    var z = document.getElementById("form3");
    if (x.style.display == "none") {
        x.style.display = "block";
        y.style.display = "none";
        z.style.display = "none";

    }

}
function displayform12() {
    var x = document.getElementById("form20");
    var y = document.getElementById("form2");
    var z = document.getElementById("form3");

    if (y.style.display == "none") {
        y.style.display = "block";
        x.style.display = "none";
        z.style.display = "none";

    }

}
function displayform4() {
    var x = document.getElementById("form20");
    var y = document.getElementById("form2");
    var z = document.getElementById("form3");
    if (z.style.display == "none") {
        z.style.display = "block";
        x.style.display = "none";
        y.style.display = "none";

    }

}
//UserProfile

function displayform6() {
    var z = document.getElementById("form7");
    var p = document.getElementById("form6");
    if (p.style.display == "none") {
        p.style.display = "block";
        z.style.display = "none";


    }

}
function displayform7() {
    var z = document.getElementById("form7");
    var p = document.getElementById("form6");
    if (z.style.display == "none") {
        z.style.display = "block";
        p.style.display = "none";


    }
}
//Agent info
//AgentProfile
function displayform16() {
    var x = document.getElementById("form18");
    var y = document.getElementById("form19");
    if (x.style.display == "none") {
        x.style.display = "block";
        y.style.display = "none";
    }

}
function displayform10() {
    var x = document.getElementById("form18");
    var y = document.getElementById("form19");
    if (y.style.display == "none") {
        y.style.display = "block";
        x.style.display = "none";
    }

}


function visible() {
    document.getElementById("v_1").style.display = "none";
    document.getElementById("v_2").style.display = "block";
    document.getElementById("ContentPlaceHolder1_exampleInputPassword1").type = "text";
}
function Notvisible() {
    document.getElementById("v_2").style.display = "none";
    document.getElementById("v_1").style.display = "block";
    document.getElementById("ContentPlaceHolder1_exampleInputPassword1").type = "password";
}


//rating
function testFunction() {
    var i = 1;
    var s1 = "starU";
    var s2 = "starV";
    var radio = "butt"
    var check = radio + i;
    var temp = "";
    var curr = "";
    var ret = 0;
    while (!document.getElementById(check).checked) {

        temp = s2 + i;
        curr = s1 + i;
        document.getElementById(curr).style.display = "none";
        document.getElementById(temp).style.display = "block";
        check = "";
        temp = "";
        curr = "";
        i++;
        check = radio + i;
    }
    temp = s2 + i;
    curr = s1 + i;
    document.getElementById(curr).style.display = "none";
    document.getElementById(temp).style.display = "block";
    ret = i;
    i++;
    temp = "";
    curr = "";
    for (; i <= 5; i++) {
        temp = s2 + i;
        curr = s1 + i;
        document.getElementById(temp).style.display = "none";
        document.getElementById(curr).style.display = "block";
    }
    check = "";
    for (var j = 1; j <= 5; j++) {
        check = radio + j;
        document.getElementById(check).checked = false;
    }
    document.cookie = "index=" + ret;
}




