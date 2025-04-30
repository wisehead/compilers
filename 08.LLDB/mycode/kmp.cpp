#include <iostream>
#include <string>
#include <vector>

// 计算模式串的前缀表（部分匹配表）
std::vector<int> computePrefixTable(const std::string &pattern) {
  int m = pattern.length();
  std::vector<int> prefixTable(m, 0);
  int len = 0;
  int i = 1;
  while (i < m) {
    if (pattern[i] == pattern[len]) {
      len++;
      prefixTable[i] = len;
      i++;
    } else {
      if (len != 0) {
        len = prefixTable[len - 1];
      } else {
        prefixTable[i] = 0;
        i++;
      }
    }
  }
  return prefixTable;
}

// KMP 搜索函数
std::vector<int> kmpSearch(const std::string &text,
                           const std::string &pattern) {
  int n = text.length();
  int m = pattern.length();
  std::vector<int> prefixTable = computePrefixTable(pattern);
  std::vector<int> indices;
  int i = 0; // 文本串的索引
  int j = 0; // 模式串的索引
  while (i < n) {
    if (pattern[j] == text[i]) {
      j++;
      i++;
    }
    if (j == m) {
      // 找到匹配，记录匹配的起始位置
      indices.push_back(i - j);
      j = prefixTable[j - 1];
    } else if (i < n && pattern[j] != text[i]) {
      if (j != 0) {
        j = prefixTable[j - 1];
      } else {
        i++;
      }
    }
  }
  return indices;
}

int main() {
  std::string text = "ABABDABACDABABCABAB";
  std::string pattern = "ABABC";
  std::vector<int> matches = kmpSearch(text, pattern);
  if (matches.empty()) {
    std::cout << "未找到匹配的子串。" << std::endl;
  } else {
    std::cout << "找到匹配的子串，起始位置为：";
    for (int index : matches) {
      std::cout << index << " ";
    }
    std::cout << std::endl;
  }
  return 0;
}