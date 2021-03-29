class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var newNum = 0
        var num = x
        while num != 0 {
            newNum = newNum * 10 + num % 10
            num /= 10
        }
        return x == newNum
    }
}

print(Solution().isPalindrome(121))
print(Solution().isPalindrome(-121))
print(Solution().isPalindrome(10))
print(Solution().isPalindrome(-101))
print(Solution().isPalindrome(0))