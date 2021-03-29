class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var table = [Int: Int]()
        for (index, num) in nums.enumerated() {
            if let termIndex = table[target - num] {
                return [index, termIndex]
            } else {
                table[num] = index
            }
        }
        return [Int]()
    }
}

let nums: [Int] = [2, 7, 11, 15]

print(Solution().twoSum(nums, 9))