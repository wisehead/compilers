#include <iostream>
#include <vector>

class FenwickTree {
private:
    std::vector<int> bit;
    int n;

    int lowbit(int x) {
        return x & (-x);
    }

public:
    FenwickTree(int size) {
        n = size;
        bit.resize(n + 1, 0);
    }

    // 更新元素值
    void update(int index, int value) {
        while (index <= n) {
            bit[index] += value;
            index += lowbit(index);
        }
    }

    // 计算前缀和
    int prefixSum(int index) {
        int sum = 0;
        while (index > 0) {
            sum += bit[index];
            index -= lowbit(index);
        }
        return sum;
    }

    // 计算区间和 [left, right]
    int rangeSum(int left, int right) {
        return prefixSum(right) - prefixSum(left - 1);
    }
};

int main() {
    std::vector<int> arr = {1, 2, 3, 4, 5};
    FenwickTree ft(arr.size());
    for (int i = 0; i < arr.size(); ++i) {
        ft.update(i + 1, arr[i]);
    }

    std::cout << "Prefix sum up to index 3: " << ft.prefixSum(3) << std::endl;
    std::cout << "Range sum from index 2 to 4: " << ft.rangeSum(2, 4) << std::endl;

    // 更新元素
    ft.update(3, 2);
    std::cout << "Updated Prefix sum up to index 3: " << ft.prefixSum(3) << std::endl;
    std::cout << "Updated Range sum from index 2 to 4: " << ft.rangeSum(2, 4) << std::endl;

    return 0;
}