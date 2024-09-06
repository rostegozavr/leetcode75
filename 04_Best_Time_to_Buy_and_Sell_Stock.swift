class Solution {
    func maxProfitOld(_ prices: [Int]) -> Int {
        guard prices.count >= 2 else {
            return 0
        }
        var max = Int.min
        for i in 0...prices.count - 2 {
            for j in i...prices.count - 1 {
                if prices[j] - prices[i] > max {
                    max = prices[j] - prices[i]
                }
            }
        }
        return max
    }

    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count >= 2 else {
            return 0
        }
        var minPrice = Int.max
        var maxProfit = 0
        for i in 0...prices.count - 1 {
            if prices[i] < minPrice {
                minPrice = prices[i]
            }
            let profit = prices[i] - minPrice
            if profit > maxProfit {
                maxProfit = profit
            }
        }
        return maxProfit
    }
}

print(Solution().maxProfit([5,6,2,3,4,1]))