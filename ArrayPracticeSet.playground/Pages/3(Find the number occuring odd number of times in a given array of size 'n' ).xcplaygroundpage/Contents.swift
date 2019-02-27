//Find the number occuring odd number of times in a given array of size 'n'

//Given an array of positive integers. All numbers occur even number of times except one number which occurs odd number of times.

import Foundation

var arr = [3,4,5,3,4,5,5]
//Desired Output: 5
var output: Int = 0

//Method 1
//Do hashing , time complexity as O(n) : space complexity as O(n)

var dict :[String:Int] = [:]
for value in arr{
    dict["\(value)"] = (dict["\(value)"] ?? 0) + 1
}

for key in dict.keys{
    if let count = dict[key]{
        if count%2 != 0{
            print(key)
            break
        }
    }
}

//Method 2 (Best solution)
//Do XOR , time complexity as O(n) : space complexity as O(1)

//NOTE: XOR of two same elements is zero , so will get the odd one.
output = 0
for value in arr{
    output = output^value
}
print(output)
