class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else {
            return -1
        }
        let index = Int((nums.count - 1) / 2)
        print(0, index, nums.count - 1, nums[index])
        if nums[index] == target {
            return index
        } else if nums[index] < target {
            return subsearch(nums, target, index + 1, nums.count - 1)
        }
        return subsearch(nums, target, 0, index - 1)
    }

    func subsearch(_ nums: [Int], _ target: Int, _ min: Int, _ max: Int) -> Int {
        guard min <= max else {
            return -1
        }
        let index = Int((max + min) / 2)
        print(min, index, max, nums[index])
        if nums[index] == target {
            return index
        } else if nums[index] < target && nums[max] >= target {
            return subsearch(nums, target, index + 1, max)
        } else if nums[index] > target && nums[min] <= target {
            return subsearch(nums, target, min, index - 1)
        }
        return -1
    }
}
print(Solution().search([2,5], 5))