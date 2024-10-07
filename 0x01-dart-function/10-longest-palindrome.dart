String isPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }
  String reversed = s.split('').reversed.join('');
  return s == reversed ? s : "none";
}

String longestPalindrome(String s) {
  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);

      if (isPalindrome(substring) != "none" && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest;
}