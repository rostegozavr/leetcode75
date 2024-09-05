class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0...nums.count-2 {
            for j in i+1...nums.count-1 { 
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}