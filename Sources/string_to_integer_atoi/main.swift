class Solution {
    func myAtoi(_ s: String) -> Int {
        var numStarted = false
        var minus = false
        var result = 0
        for char in s {
            if numStarted {
                if char.isNumber {
                    result = result * 10 + Int(String(char))!
                    if !minus && result > Int32.max {
                        return Int(Int32.max)
                    } else if minus && -result < Int32.min {
                        return Int(Int32.min)
                    }
                } else {
                    break
                }
            } else {
                if char == " " {
                    continue
                }
                if char == "-" {
                    numStarted = true
                    minus = true
                } else if char.isNumber {
                    numStarted = true
                    result = result * 10 + Int(String(char))!
                } else if char == "+" {
                    numStarted = true
                } else {
                    break
                }
            }
        }
        if minus {
            return -result
        }
        return result
    }
}

print(Solution().myAtoi("-91283472332"))
print(Solution().myAtoi("123"))
print(Solution().myAtoi("   -42"))
print(Solution().myAtoi("4193 with words"))
print(Solution().myAtoi("4193with words"))
print(Solution().myAtoi("words and 987"))
print(Solution().myAtoi("+321"))
print(Solution().myAtoi("+-132"))
print(Solution().myAtoi("-+132"))
print(Solution().myAtoi("1-+132"))