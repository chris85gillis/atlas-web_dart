String longestUniqueSubstring(String str) {
  String longest = "";
  String current = "";

  // A set to keep track of characters in the current substring
  Set<String> characters = {};

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    // If the character is not in the current substring, add it
    if (!characters.contains(char)) {
      current += char;
      characters.add(char);
    } else {
      // If a repeated character is found, check if the current substring is the longest
      if (current.length > longest.length) {
        longest = current;
      }

      // Move the start of the substring after the first occurrence of the repeated character
      int firstOccurrence = current.indexOf(char);
      current = current.substring(firstOccurrence + 1) + char;

      // Reset the characters set based on the new current substring
      characters = current.split('').toSet();
    }
  }

  // Check for the last substring in the string
  if (current.length > longest.length) {
    longest = current;
  }

  return longest;
}