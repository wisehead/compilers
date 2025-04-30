#include <algorithm>
#include <vector>
using namespace std;

class Solution {
public:
    int distributeCookies(vector<int>& cookies, int k) {
        int ret = bt(cookies, k);
        return ret;
    }

    vector<int> bt(vector<int>& cookies, vector<bool>& seen, int& last, int k) {
        // cout<<"k:"<<k<<",mask:"<<mask<<endl;
        int n = cookies.size();
        if (k == 0) {
            if (n==0) return 0;
            return INT_MAX;
        }
        int cnt = 0;
        int min_v = INT_MAX;
        int current = 0;
        for (int i = 0; i < n; i++) {
            if (seen[i]) continue;
            seen[i] = true;
            cnt += cookies[i];
            int last_sum = 0;
            int res1 = bt(cookies, seen, last_sum, k);
            last_sum = last_sum + cnt;
            int sum = max(last_sum, res1);
            if (sum < min_v) {
                min_v = sum;
                current = last_sum;
            }
            last_sum = 0;
            res1 = bt(cookies, seen, last_sum, k-1);
            sum = max(cnt, res1);
            if (sum < min_v) {
                min_v = sum;
                current = 0;
            }

            seen[i] = false;
            cnt -= cookies[i];
        }
        last = current;
        // cout<<"k:"<<k<<",min_v:"<<min_v<<endl;
        return min_v;
    }
};