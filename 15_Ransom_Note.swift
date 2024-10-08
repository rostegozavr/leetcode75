class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict1: [Character: Int] = [:]
        var dict2: [Character: Int] = [:]
        for char in ransomNote {
            if let count = dict1[char] {
                dict1[char] = count + 1
            } else {
                dict1[char] = 1
            }
        }
        for char in magazine {
            if let count = dict2[char] {
                dict2[char] = count + 1
            } else {
                dict2[char] = 1
            }
        }
        for (char, count) in dict1 {
            print("char=\(char) count=\(count)")
            let stock = dict2[char] ?? 0
            if stock < count {
                return false
            }
        }
        return true
    }
}