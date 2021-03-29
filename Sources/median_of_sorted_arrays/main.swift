class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let merged = (nums1 + nums2).sorted()
        let med = merged.count / 2
        if merged.count % 2 == 1 {
            return Double(merged[med])
        }
        return (Double(merged[med - 1]) + Double(merged[med])) / 2
    }
}

class Solution1 {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var (i, j) = (0, 0)
        var merged = [Int]()
        while i < nums1.count && j < nums2.count {
            if nums1[i] < nums2[j] {
                merged.append(nums1[i])
                i += 1
            } else {
                merged.append(nums2[j])
                j += 1
            }
        }
        merged += nums1[i...]
        merged += nums2[j...]
        let med = merged.count / 2
        if merged.count % 2 == 1 {
            return Double(merged[med])
        }
        return (Double(merged[med - 1]) + Double(merged[med])) / 2
    }
}


print(Solution().findMedianSortedArrays([1,3], [2]))
print(Solution().findMedianSortedArrays([1,2], [3,4]))
print(Solution().findMedianSortedArrays([0,0], [0,0]))
print(Solution().findMedianSortedArrays([], [1]))
print(Solution().findMedianSortedArrays([2], []))
print(Solution().findMedianSortedArrays([1,1], [1,2]))


print(Solution1().findMedianSortedArrays([1,3], [2]))
print(Solution1().findMedianSortedArrays([1,2], [3,4]))
print(Solution1().findMedianSortedArrays([0,0], [0,0]))
print(Solution1().findMedianSortedArrays([], [1]))
print(Solution1().findMedianSortedArrays([2], []))
print(Solution1().findMedianSortedArrays([1,1], [1,2]))
