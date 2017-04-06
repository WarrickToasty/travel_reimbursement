function configureDropDownLists(ddl1,ddl2) {
    var food = ['','Breakfast', 'Lunch', 'Dinner', 'Meal Tip'];
    var transportation = ['','Personal Car', 'Rental Car', 'Airfare', 'Bus/Train', 'Taxi/Shuttle', 'Gasoline', 'Parking/Tolls'];
    var other = ['', 'Business Calls', 'Other'];

    descHide();
    ddl2Hide();
    switch (ddl1.value) {
        case 'Food':
            ddl2Show();
            ddl2.options.length = 0;
            for (i = 0; i < food.length; i++) {
                createOption(ddl2, food[i], food[i]);
            }
            break;
        case 'Transportation':
        ddl2Show();
            ddl2.options.length = 0;
        for (i = 0; i < transportation.length; i++) {
            createOption(ddl2, transportation[i], transportation[i]);
            }
            break;
        case 'Lodging':
            ddl2.options.length = 0;
            for (i = 0; i < names.length; i++) {
                createOption(ddl2, names[i], names[i]);
            }
            break;
        case 'Other' :
        ddl2Show();
        ddl2.options.length = 0;
        for (i = 0; i < other.length; i++) {
            createOption(ddl2, other[i], other[i]);
        }
        break;
            default:
                ddl2.options.length = 0;
            break;

    }

}

function createOption(ddl, text, value) {
        var opt = document.createElement('option');
        opt.value = value;
        opt.text = text;
        ddl.options.add(opt);
}
function descHide(){
  document.getElementById("descValue").value = "";
  document.getElementById("desc").style.visibility = "hidden";
}
function descShow(){
    document.getElementById("desc").style.visibility = "visible";
}
function ddl2Hide(){
  document.getElementById("ddl2").value = '';
  document.getElementById("dd2").style.visibility = "hidden";
}
function ddl2Show(){
  document.getElementById("dd2").style.visibility = "visible";
}
function otherTest(){
  descHide();
  if (document.getElementById("ddl2").value == 'Other'){
    descShow();
  }
}
$('#sandbox-container .input-group.date').datepicker({
    format: "mm/dd/yy",
    todayBtn: true
});
