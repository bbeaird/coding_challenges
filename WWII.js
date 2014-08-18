var newYorkerText = "Back in World War II, there were lots of soliders. Many of the soldiers in World War II were killed. It is sad that so many people died in World War II."

function replaceWWII(string) {
  var newString = string.slice(0);
  var firstChar = 0;
  while (firstChar !== -1) {
    firstChar = newString.indexOf("World War II");
    if (firstChar !== -1) {
      newString = newString.slice(0, firstChar) + "the Second World War" + newString.slice(firstChar + 12);
    }
  }
  console.log(newString);
}

replaceWWII(newYorkerText);