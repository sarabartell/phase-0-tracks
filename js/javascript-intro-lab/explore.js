// step 1: take a word into a function as an argument/parameter
// step 2: go through the string, and move each letter to its reverse spot, example, "hello" "h" goes from first letter to last letter, but certain letters like "l" will appear to not move even though they will
// want to go through the length - 1
// output the new string value reversed

function reverse(string) {
  var reversed = "";
  for (var i = string.length - 1; i >= 0; i -= 1){
    reversed += string[i];
  }
  return reversed;
}

console.log(reverse("hello"));

var reversed_word = console.log(reverse("sara"));

// console.log(reversed_word);