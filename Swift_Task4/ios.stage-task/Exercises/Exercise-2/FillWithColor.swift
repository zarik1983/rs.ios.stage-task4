import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        var outputImage = image
                
        let tempRow = row
        let tempColumn = column
                
        outputImage[row][column] = newColor
        
//        if (row-1 >= 0) {
//            if (image[row-1][column] == oldColor) {
//                arrCords.append([row-1, column])
//            }
//        }
//
//        if (row+1 < image.count) {
//            if (image[row+1][column] == oldColor) {
//                arrCords.append([row+1, column])
//            }
//        }
//
//        if (column-1 >= 0) {
//            if (image[row][column-1] == oldColor) {
//                arrCords.append([row, column-1])
//            }
//        }
//
//        if (column+1 < image[row].count) {
//            if (image[row][column+1] == oldColor) {
//                arrCords.append([row, column+1])
//            }
//        }
//
//        for i in 0..<arrCords.count {
//            outputImage = fillWithColor(outputImage, i, 1, newColor)
//        }
     
        /*for i in 0..<image.count {
            for j in 0..<image[i].count {
             
                if (i == row || j == column) && (i != row && j != column) {
                    outputImage = fillWithColor(outputImage, i, j, newColor)
                }
            }
        }*/
        
        for i in 0..<image.count {
            if (image[i][tempColumn] == image[row][column]) && (i != tempRow) {
                outputImage[i][tempColumn] = newColor
            }
        }
        for j in 0..<image[row].count {
            if (image[tempRow][j] == image[row][column]) && (j != tempColumn) {
                outputImage[tempRow][j] = newColor
            }
        }
        
        for i in 0..<image.count {
            for j in 0..<image[i].count {
             
                if (i == tempRow || j == tempColumn) && (i != tempRow && j != tempColumn) {
                    outputImage = fillWithColor(outputImage, i, j, newColor)
                }
            }
        }
        
        return outputImage
    }
}
