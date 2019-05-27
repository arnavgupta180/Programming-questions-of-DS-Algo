//Find the median of two sorted arrays of same size

/*Problem:
here are 2 sorted arrays A and B of size n each. Write an algorithm to find the median of the array obtained after merging the above 2 arrays(i.e. array of length 2n).
*/

/*Procedure:
 1) Calculate the medians m1 and m2 of the input arrays ar1[]
 and ar2[] respectively.
 2) If m1 and m2 both are equal then we are done.
 return m1 (or m2)
 3) If m1 is greater than m2, then median is present in one
 of the below two subarrays.
 a)  From first element of ar1 to m1 (ar1[0...|_n/2_|])
 b)  From m2 to last element of ar2  (ar2[|_n/2_|...n-1])
 4) If m2 is greater than m1, then median is present in one
 of the below two subarrays.
 a)  From m1 to last element of ar1  (ar1[|_n/2_|...n-1])
 b)  From first element of ar2 to m2 (ar2[0...|_n/2_|])
 5) Repeat the above process until size of both the subarrays
 becomes 2.
 6) If size of the two arrays is 2 then use below formula to get
 the median.
 Median = (max(ar1[0], ar2[0]) + min(ar1[1], ar2[1]))/2
*/

import UIKit

var first = [2,4,6,8]
var second = [2,4,6,8]

//median of odd numbers is (n + 1)/2
//median of even numbers is (n + (n + 1))/2
func medianOfArrays(first: [Int], second: [Int]) -> Int{
    if first.count != second.count{
        print("length of firstArray should be equal to length of second array")
    }
    var firstArray = first
    var secondArray = second
   let firstMedian = median(array: firstArray)
   let secondMedian = median(array: secondArray)
    if firstArray.count == 2{
        return (max(firstArray.first ?? 0, secondArray.first ?? 0) +
               min(firstArray.last ?? 0, secondArray.last ?? 0))/2
    }
    if firstMedian == secondMedian {
        return firstMedian
    }else if firstMedian > secondMedian{
        firstArray = Array(firstArray[0...(firstArray.count - 1)/2])
        secondArray = Array(secondArray[((secondArray.count - 1)/2)...])
        return medianOfArrays(first: firstArray, second: secondArray)
    }
    else{
        firstArray = Array(firstArray[((firstArray.count - 1)/2)...])
        secondArray = Array(secondArray[...((secondArray.count - 1)/2)])
        return medianOfArrays(first: firstArray, second: secondArray)
    }
}

func median(array: [Int]) -> Int{
    let n = (array.count - 1)/2
    if array.count%2 == 0 {
        return array[n + 1]/2
    }else{
        return (array[n] + array[n + 1])/2
    }
}

let med = medianOfArrays(first: first, second: second)
print(med)
