var longestPhrase = ["Sara", "Sara is my name","Sara = me", "I am Sara!"]

// write a method that finds the longest phrase
//loop through each, during each loop find the phrase at that index, print that and find the phrase length
  // if somehow phrase(1) is longest, print phrase at 1

function findLongest(longestPhrase){
  for (var i = 0; i < longestPhrase.length; i++){
      var current = longestPhrase[i]
      if (longestPhrase.length < current.length){
      return longestPhrase[i];
    }
  }
}

console.log(findLongest(longestPhrase))