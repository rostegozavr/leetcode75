func isBadVersion(_ version: Int) -> Bool {
    // Implementation
    return true
}

class Solution {
    func firstBadVersion(_ n: Int) -> Int {
        var c: Int
        var b = n
        var a = 0
        while b - a > 1 {
            c = Int((a + b) / 2)
            print("a=\(a) b=\(b) c=\(c)")
            if isBadVersion(c) {
                b = c
            } else {
                a = c
            }
        }
        return b
    }
}