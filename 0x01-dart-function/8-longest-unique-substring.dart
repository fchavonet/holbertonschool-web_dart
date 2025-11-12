String longestUniqueSubstring(String str) {
  String longest = '';
  String current = '';

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    // Check if the character is already in the current substring.
    if (current.contains(char)) {
      int index = current.indexOf(char);
      current = current.substring(index + 1);
    }

    // Add the current character to the substring.
    current += char;

    // Update longest if the current substring is longer.
    if (current.length > longest.length) {
      longest = current;
    }
  }

  // Return the longest non-repeating substring.
  return longest;
}
