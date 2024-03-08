import UIKit

var greeting = "Hello, playground"
























func doubleArray(_ num1:Int, _ num2:Int) -> [[Int]] {
    

    var count = 1
    var arrB : [[Int]] = []

    for j in 0..<num2 {
        
        var arr1 = [Int]()
        
        for i in 0..<num1 {
            arr1.append(count*i)
        }

        arrB.append(arr1)
 }
    print(arrB)

 return arrB
}

doubleArray(10, 10)
