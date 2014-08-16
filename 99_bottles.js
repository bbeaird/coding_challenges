var bottles = function(numBottles) {
  i = numBottles;
  for (var i = numBottles; i > 0; i--) {
    console.log(i + " bottles of beer on the wall, " + i + " bottles of beer.");
    console.log("You take one down and pass it around, " + (i - 1) + " bottles of beer on the wall.")
  }
}

bottles(99);