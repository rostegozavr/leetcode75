class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let pairs: [Character: Character] = [")": "(", "}": "{", "]": "["]
        for c in s {
            if c == "(" || c == "{" || c == "[" {
                stack.append(c)
            } else if let pair = pairs[c] {
                if stack.isEmpty || pair != stack.removeLast() {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}