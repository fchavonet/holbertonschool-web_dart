String longestPalindrome(String s) {
  // Same code as in the task before (9-palindrome.dart)...
  bool isPalindrome(String s) {
    if (s.length < 3) {
      return false;
    }

    String reversed = s.split('').reversed.join('');
    return s == reversed;
  }

  String longest = 'none';

  // Loop through all possible substrings.
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String sub = s.substring(i, j);

      // If the substring is a palindrome and longer than the current one.
      if (isPalindrome(sub)) {
        if (longest == 'none' || sub.length > longest.length) {
          longest = sub;
        }
      }
    }
  }

  // Return the longest palindrome substring or 'none' if not found.
  return longest;
}
