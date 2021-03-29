public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let overflow = (l1!.val + l2!.val) / 10
        let result = ListNode((l1!.val + l2!.val) % 10)
        result.next = solve(l1?.next, l2?.next, overflow)
        return result
    }

    func solve(_ l1: ListNode?, _ l2: ListNode?, _ overflow: Int) -> ListNode? {
        let result: ListNode?
        if let l1Val = l1?.val {
            if let l2Val = l2?.val {
                result = ListNode((l1Val + l2Val + overflow) % 10)
                let overflow = (l1Val + l2Val + overflow) / 10
                result?.next = solve(l1?.next, l2?.next, overflow)
            } else {
                result = ListNode((l1Val + overflow) % 10)
                let overflow = (l1Val + overflow) / 10
                result?.next = solve(l1?.next, l2?.next, overflow)
            }
        } else if let l2Val = l2?.val {
            result = ListNode((l2Val + overflow) % 10)
            let overflow = (l2Val + overflow) / 10
            result?.next = solve(l1?.next, l2?.next, overflow)
        } else if overflow > 0 {
            result = ListNode(overflow)
        } else {
            result = nil
        }
        return result
    }
}

class Solution1 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode(0)
        var point = result
        var overflow = 0

        var ll1 = l1
        var ll2 = l2

        while ll1 != nil || ll2 != nil || overflow != 0 {
            let sum = (ll1 != nil ? ll1!.val : 0) + (ll2 != nil ? ll2!.val : 0) + overflow
            point.val = sum % 10
            overflow = sum / 10

            ll1 = ll1 != nil ? ll1?.next : nil
            ll2 = ll2 != nil ? ll2?.next : nil

            if ll1 != nil || ll2 != nil || overflow != 0 {
                point.next = ListNode(0)
                point = point.next!
            }
        }

        return result
    }
}

let l1 = ListNode(2)
let l11 = ListNode(4)
let l111 = ListNode(3)
l1.next = l11
l11.next = l111

let l2 = ListNode(5)
let l22 = ListNode(6)
let l222 = ListNode(4)
l2.next = l22
l22.next = l222

let test = Solution().addTwoNumbers(l1, l2)
let test1 = Solution1().addTwoNumbers(l1, l2)