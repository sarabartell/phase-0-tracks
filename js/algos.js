

// funtion code
// write a method that finds the longest phrase
//loop through each, during each loop find the phrase at that index, print that and find the phrase length
  // if somehow phrase(1) is longest, print phrase at 1

// function findLongest(longestPhrase){
//   var largerThan = 0;

//   for(var i = 0; i < longestPhrase.length; i++){
//       if (longestPhrase[i].length > largerThan){
//       largerThan = longestPhrase[i].length;
//       word = longestPhrase[i];
//     }
//   }
//   return word;
// }


function findMatches(hash1,hash2){
  var match = false;
  for (var value in hash1){
    if (hash1[value] == hash2[value]){
      var match = true;
    }
    // else {

    // }
  }
  console.log(match);
}

findMatches({name: "Sara", age: 24}, {name: "Sara", age: 25});

findMatches({animal: "Door", legs: 3}, {animal: "Dog", legs: 4});

// return info code
// console.log(findLongest(["Sara", "Banana","Peanutbutter", "pizza"]));

// console.log(findLongest(["beans","limezzz","edamame","cauliflowers"]));

// console.log(findLongest(["water","skinny soy latte","t","tea"]));

