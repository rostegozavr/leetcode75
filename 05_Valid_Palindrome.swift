class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var str: String = s.lowercased()
        str = str.filter { $0.isLetter || $0.isNumber }
        let array = Array(str)
        guard !array.isEmpty else {
            return true
        }
        for i in 0...array.count / 2 {
            print("\(array[i]) \(array[array.count-i-1])")
            if array[i] != array[array.count-i-1] {
                return false
            }
        }
        return true
    }
}

print(Solution().isPalindrome("0p"))