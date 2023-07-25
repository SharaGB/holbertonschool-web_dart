String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return "";
  }

  int start = 0;
  int maxLength = 0;
  Map<String, int> charIndexMap = {};

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar] != null && charIndexMap[currentChar]! >= start) {
      start = charIndexMap[currentChar]! + 1;
    }

    charIndexMap[currentChar] = i;

    if (i - start + 1 > maxLength) {
      maxLength = i - start + 1;
    }
  }

  return str.substring(start, start + maxLength);
}
