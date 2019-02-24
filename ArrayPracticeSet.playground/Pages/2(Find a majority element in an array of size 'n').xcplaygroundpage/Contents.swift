//Find a majority element in an array of size 'n'.

import Foundation

var arr = [2,4,5,8,2,2,2,5,63,5,5,5,46,7,56,7]

var majorityElement : Int = 0
var majorityCount :Int = 0
var dict : [String:Int] = [:]
for value in arr{
    dict["\(value)"] = (dict["\(value)"] ?? 0) + 1
}

for value in dict.keys{
    if let count = dict[value]{
        if count > majorityCount{
            majorityElement = Int(value) ?? 0
            majorityCount = count
        }
    }
}

print(majorityElement)
