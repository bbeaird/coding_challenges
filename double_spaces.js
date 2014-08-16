function checkForDoubleSpaces(string) {
  var doubleSpacesFlag = false;
  for (i = 0; i < string.length; i++) {
    if (string[i] === " " && string[i-1] === " ") {
      alert("You have double spaces in your string!");
      doubleSpacesFlag = true;
      break;
    }
  }
  if (doubleSpacesFlag === false) {
    alert("There are no double spaces in your string!");
  }
}

var checkForDoubleSpacesVar = function(string) {
  var doubleSpacesFlag = false;
  for (i = 0; i < string.length; i++) {
    if (string[i] === " " && string[i-1] === " ") {
      alert("You have double spaces in your string!");
      doubleSpacesFlag = true;
      break;
    }
  }
  if (doubleSpacesFlag === false) {
    alert("There are no double spaces in your string!");
  }
}

checkForDoubleSpaces("My name is Brantley!");
checkForDoubleSpaces("My  name is Brantley!");

checkForDoubleSpacesVar("My name is Brantley!");
checkForDoubleSpacesVar("My  name is Brantley!");