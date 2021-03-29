class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        var rows = Array(repeating: "", count: numRows)
        var result = ""
        let cycle = (numRows * 2) - 2
        for (index, char) in s.enumerated() {
            let pos = index % cycle
            if pos < numRows {
                rows[pos] += String(char)
            } else {
                rows[numRows * 2 - pos - 2] += String(char)
            }
        }
        for row in rows {
            result += row
        }
        return result
    }
}

print(Solution().convert("PAYPALISHIRING", 3))
print(Solution().convert("PAYPALISHIRING", 2))
print(Solution().convert("PAYPALISHIRING", 4))
print(Solution().convert("A", 1))