class Solution {
    func romanToInt(_ s: String) -> Int {
        let romans: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var result = 0
        var lastVal = 1001

        for char in s {
            let curr = romans[char]!
            if curr > lastVal {
                result += curr - 2 * lastVal
            } else {
                result += curr
            }
            lastVal = curr
        }
        return result
    }
}

print(Solution().romanToInt("III"))
print(Solution().romanToInt("IV"))
print(Solution().romanToInt("IX"))
print(Solution().romanToInt("LVIII"))
print(Solution().romanToInt("MCMXCIV"))