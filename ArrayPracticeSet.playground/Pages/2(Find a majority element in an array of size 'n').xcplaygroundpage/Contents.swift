//Find a majority element in an array of size 'n'.

import Foundation

var arr = [2,4,5,8,2,2,2,5,63,5,5,5,46,7,56,7]
//Desired Output : 5
var majorityElement : Int = 0
var majorityCount :Int = 0
var dict : [String:Int] = [:]
//creating dictionary with keys as array elements and values as the occurance count
for key in arr{
    dict["\(key)"] = (dict["\(key)"] ?? 0) + 1
}
//FInd the highest value of dictionary and assign it to majorityCount
for key in dict.keys{
    if let count = dict[key]{
        if count > majorityCount{
            majorityElement = Int(key) ?? 0
            majorityCount = count
        }
    }
}

print(majorityElement)
