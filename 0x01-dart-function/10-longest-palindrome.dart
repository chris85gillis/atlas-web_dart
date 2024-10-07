// Check if a string is a palindrome and its length is at least 3
bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  String longest = "";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j < s.length; j++) { // Ensure length >= 3
      String substring = s.substring(i, j + 1);

      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  // If no palindrome of length >= 3 found, return "none"
  return longest.isEmpty ? "none" : longest;
}