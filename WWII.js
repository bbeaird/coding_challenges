var newYorkerText = "Back in World War II, there were lots of soliders. Many of the soldiers in World War II were killed. It is sad that so many people died in World War II."

function replaceWWII(string) {
  var newString = "";
  for (var firstChar = 0; firstChar <= -1; firstChar++) {
    console.log("Inside for loop");
    firstChar = string.indexOf("World War II");
    console.log(firstChar);
    if (firstChar !== -1) {
      newString = string.slice(0, firstChar) + " the Second World War " + string.slice(firstChar + 1);
      console.log(newString);
    }
  }
  return newString;
}

replaceWWII(newYorkerText);