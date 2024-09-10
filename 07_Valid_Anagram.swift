class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var letters1: [Character: Int] = .init()
        var letters2: [Character: Int] = .init()
        for c: Character in s {
            if let count = letters1[c] {
                letters1[c] = count + 1
            } else {
                letters1[c] = 1
            }
        } 
        for c: Character in t {
            if let count = letters2[c] {
                letters2[c] = count + 1
            } else {
                letters2[c] = 1
            }
        } 
        return letters1 == letters2
    }
}

print(Solution().isAnagram("asd", "dsa"))