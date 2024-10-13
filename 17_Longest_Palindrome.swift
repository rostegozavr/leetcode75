class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var letters: [Character: Int] = .init()
        for c: Character in s {
            if let count = letters[c] {
                letters[c] = count + 1
            } else {
                letters[c] = 1
            }
        } 
        var plusOne: Int = 0
        var sum: Int = 0
        for (index, item) in letters {
            print("index:\(index) item:\(item)")
            sum = sum + item - (item % 2)
            if plusOne == 0 {
                plusOne = (item % 2 == 0) ? 0 : 1
            }
        }
        return sum + plusOne
    }
}

print(Solution().longestPalindrome("abcccccddd"))