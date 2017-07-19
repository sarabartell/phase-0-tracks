//var longestPhrase = ["Sara", "Sara is my name","Sara = me", "I am Sara!"]

// write a method that finds the longest phrase
//loop through each, during each loop find the phrase at that index, print that and find the phrase length
  // if somehow phrase(1) is longest, print phrase at 1

function findLongest(longestPhrase){
  var largerThan = 0;

  for(var i = 0; i < longestPhrase.length; i++){
      if (longestPhrase[i].length > largerThan){
      largerThan = longestPhrase[i].length;
      word = longestPhrase[i];
    }
  }
  return word;
}

console.log(findLongest(["Sara", "Banana","Peanutbutter", "pizza"]));

console.log(findLongest(["beans","limezzz","edamame","cauliflowers"]));

console.log(findLongest(["water","skinny soy latte","t","tea"]));