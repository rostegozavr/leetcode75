class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        func fill(_ r: Int, _ c: Int, _ firstColor: Int) {
            img[r][c] = color
            if r > 0 && img[r-1][c] == firstColor {
                //print(1)
                fill(r-1,c,firstColor)
            }
            if r < img.count-1 && img[r+1][c] == firstColor {
                //print(2)
                fill(r+1,c,firstColor)
            }
            if c > 0 && img[r][c-1] == firstColor {
                //print(3)
                fill(r,c-1,firstColor)
            }
            if c < img[0].count-1 && img[r][c+1] == firstColor {
                //print(4)
                fill(r,c+1,firstColor)
            }
        }
        var img = image
        let firstColor = img[sr][sc]
        if firstColor != color {
            fill(sr,sc,firstColor)
        }
        return img
    }
}

//print(Solution().floodFill([[1,1,1],[1,1,0],[1,0,1]],1,1,2))
print(Solution().floodFill([[0,0,0],[0,0,0]],0,0,0))