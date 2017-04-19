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