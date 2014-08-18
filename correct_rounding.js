function correctRounding(num) {
  num = num.toString();
  if (num.charAt(num.length - 1) === '5') {
    num = num.slice(0, num.length - 1) + '6';
  }
  num = Number(num);
  return num.toFixed(2);
}

correctRounding(1.55); // want to return 1.56 as a string