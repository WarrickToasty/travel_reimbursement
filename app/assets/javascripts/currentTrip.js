/**
 * Created by Joey on 4/19/2017.
 */
function hideDiv() {
    if (document.getElementById('hide').classList.contains('hidden-row')) {
        document.getElementById('hide').classList.remove('hidden-row');
    }
    else {
        document.getElementById('hide').classList.add('hidden-row');
    }
}

function assignId(){
    var list = document.getElementsByClassName('current');
    for (var i = 0; i < list.length; i++) {
        var j = i+1
        list[i].setAttribute("id", "hide" + j);
    }
}
function assignLink(){
    var list = document.getElementsByClassName('currentLink');
    for (var i = 0; i < list.length; i++) {
        var j = i+1
        list[i].setAttribute("href", "#hide" + j);
    }
}

