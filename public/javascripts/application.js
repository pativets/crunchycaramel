// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function price_toggle(){
  var selectmenu=document.getElementById("event_category")
  selectmenu.onchange=function(){ //run some code when "onchange" event fires
    var chosenoption=this.options[this.selectedIndex] //this refers to "selectmenu"
    if (chosenoption.value=="Cheap"){
      document.getElementById('price_field').setAttribute("class", "data_row");
    }
    else if (chosenoption.value=="Free"){
      document.getElementById('price_field').setAttribute("class", "hidden_elem");
    }
    else {
      // do nothing for now...
    }
  }
}