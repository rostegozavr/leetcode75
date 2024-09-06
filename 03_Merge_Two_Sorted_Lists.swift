/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var condition = true
        var node1 = list1
        var node2 = list2
        var list: ListNode = ListNode(0)
        var node: ListNode? = list
        while (condition) {
            if node1 != nil && node2 != nil {
                if node1!.val >= node2!.val {
                    node!.next = ListNode(node2!.val)
                    node2 = node2!.next
                } else {
                    node!.next = ListNode(node1!.val)
                    node1 = node1!.next
                }
            } else if node1 != nil && node2 == nil {
                node!.next = ListNode(node1!.val)
                node1 = node1!.next
            } else if node1 == nil && node2 != nil {
                node!.next = ListNode(node2!.val)
                node2 = node2!.next
            } else if node1 == nil && node2 == nil {
                condition = false
            }
            node = node!.next
        }
        return list.next
    }
}