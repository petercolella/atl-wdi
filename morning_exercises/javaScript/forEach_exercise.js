words = ["Ho", "Chi", "Minh", "City", "was", "once", "known", "as", "Prey", "Nokor"];

words.forEach(function(n, index, words) {
    words[index] = n.toUpperCase;
});

console.log(words)