class Solution {
    func reverse(_ x: Int) -> Int {
        var result = 0
        var dx = abs(x)
        while dx != 0 {
            result = result * 10 + dx % 10
            if result > Int32.max {
                return 0
            }
            dx /= 10
        }
        if x < 0 {
            return -result
        }
        return result
    }
}

class Solution1 {
    func reverse(_ x: Int) -> Int {
        var result = 0
        var dx = x
        while dx != 0 {
            let pop =  dx % 10
            dx /= 10
            if result > Int32.max / 10 || result == Int32.max / 10 && pop > 7 {
                return 0
            }
            if result < Int32.min / 10 || result == Int32.min / 10 && pop < -8 {
                return 0
            }
            result = result * 10 + pop
        }
        return result
    }
}

print(Solution().reverse(123))
print(Solution().reverse(-123))
print(Solution().reverse(120))
print(Solution().reverse(0))
print(Solution1().reverse(1534236469))
print(Solution1().reverse(1463847412))