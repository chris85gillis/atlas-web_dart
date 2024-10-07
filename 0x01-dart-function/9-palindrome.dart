bool isPalindrome(String s) {
  // A palindrome must have a length of at least 3 characters
  if (s.length < 3) {
    return false;
  }

  // Check if the string is the same forwards and backwards
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}