class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var max = 0
        var table = [Character: String.Index]()
        var left = s.startIndex
        var right = left

        for index in s.indices {
            if table[s[index]] != nil && table[s[index]]!.encodedOffset >= left.encodedOffset {
                left = s.index(after: table[s[index]]!)
            }
            table[s[index]] = index
            right = index
            let length = right.encodedOffset - left.encodedOffset + 1
            if max < length {
                max = length
            }
        }

        return max
    }
}

let s = "abcabcbb"
let s1 = "bbbbb"
let s2 = "pwwkew"
let s3 = ""
let s4 = " "
let s5 = "abba"
let s6 = "aabaab!bb"

print(Solution().lengthOfLongestSubstring(s))
print(Solution().lengthOfLongestSubstring(s1))
print(Solution().lengthOfLongestSubstring(s2))
print(Solution().lengthOfLongestSubstring(s3))
print(Solution().lengthOfLongestSubstring(s4))
print(Solution().lengthOfLongestSubstring(s5))
print(Solution().lengthOfLongestSubstring(s6))