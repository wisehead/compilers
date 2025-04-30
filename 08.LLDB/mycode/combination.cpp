#include <iostream>
#include <vector>

// 计算阶乘的辅助函数
long long factorial(int n) {
    if (n == 0) return 1;
    long long result = 1;
    for (int i = 1; i <= n; ++i) {
        result *= i;
    }
    return result;
}

// 计算组合数 C(n, k) 的函数
long long combination(int n, int k) {
    if (k > n) return 0;
    return factorial(n) / (factorial(k) * factorial(n - k));
}

// 生成组合的辅助函数
void generateCombinations(std::vector<int>& arr, int start, int k, std::vector<int>& combination, std::vector<std::vector<int>>& result) {
    if (k == 0) {
        result.push_back(combination);
        return;
    }
    for (int i = start; i <= arr.size() - k; ++i) {
        combination.push_back(arr[i]);
        generateCombinations(arr, i + 1, k - 1, combination, result);
        combination.pop_back();
    }
}

// 生成组合的主函数
std::vector<std::vector<int>> combinations(int n, int k) {
    std::vector<int> arr(n);
    for (int i = 0; i < n; ++i) {
        arr[i] = i + 1;
    }
    std::vector<int> temp;
    std::vector<std::vector<int>> result;
    generateCombinations(arr, 0, k, temp, result);
    return result;
}


int main() {
    int n = 5;
    int k = 3;
    // 计算组合数
    long long combNum = combination(n, k);
    std::cout << "C(" << n << ", " << k << ") = " << combNum << std::endl;

    // 生成组合
    std::vector<std::vector<int>> combs = combinations(n, k);
    for (const auto& comb : combs) {
        for (int num : comb) {
            std::cout << num << " ";
        }
        std::cout << std::endl;
    }
    return 0;
}