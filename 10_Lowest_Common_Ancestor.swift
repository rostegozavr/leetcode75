public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let p, let q else {
            return nil
        }
        var current = root
        while let node = current {
            if p.val < node.val && q.val < node.val {
                current = node.left
            } else if p.val > node.val && q.val > node.val {
                current = node.right
            } else {
                return node
            }
        }
        return nil
    }
}