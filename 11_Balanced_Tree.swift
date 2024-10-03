public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        func isBalancedHeight(_ root: TreeNode?, _ level: Int) -> (Bool, Int) {
            var isBalancedL=true, isBalancedR=true
            var heightL=0, heightR=0
            if let left = root?.left {
                (isBalancedL, heightL) = isBalancedHeight(left, level+1)
            }
            if let right = root?.right {
                (isBalancedR, heightR) = isBalancedHeight(right, level+1)
            }
            let result = abs(heightL-heightR) <= 1 && isBalancedL && isBalancedR
            return (result, max(heightL, heightR)+1)
        }
        var isBalancedL=true, isBalancedR=true
        var heightL=0, heightR=0
        if let left = root?.left {
            (isBalancedL, heightL) = isBalancedHeight(left, 1)
        }
        if let right = root?.right {
            (isBalancedR, heightR) = isBalancedHeight(right, 1)
        } 
        return abs(heightL-heightR) <= 1 && isBalancedL && isBalancedR
    }
}