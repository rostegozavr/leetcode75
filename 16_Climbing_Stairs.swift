class Solution {
    func climbStairs(_ n: Int) -> Int {
        // if n == 0 || n == 1 {
        //     return 1
        // } else {
        //     return climbStairs(n-1) + climbStairs(n-2)
        // } 
        if n == 0 || n == 1 {
            return 1
        }
        var n1 = 1
        var n2 = 0
        for i in 2...n {
            let tmp = n1;
            n1 = n1 + n2;
            n2 = tmp;
        }
        return n1 + n2;
    }
}