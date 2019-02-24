//Find a pair in an array of size 'n', whose sum is X


import UIKit

let arr = [3,4,5,6,10,8]
let target = 9
var arrPair : [(Int,Int)] = []

//Method 1 (Order of complexity O(n^2))
var arrRemove = arr
for (index,value) in arr.enumerated(){
    for secondElement in arrRemove{
        if value + secondElement == target{
            arrPair.append((value,secondElement))
            arrRemove.remove(at:arrRemove.firstIndex(of: value) ?? 0)
            break
        }
    }
}
print(arrPair)



//Method 2 (Order of complexity O(n))
var dict : [String:Int] = [:]
arrPair = []
for (index,value) in arr.enumerated(){
    let secondElement = target - value
    if dict["\(secondElement)"] != nil{
        if value == dict["\(secondElement)"]{
            arrPair.append((secondElement,value))
        }
    }else{
    dict["\(value)"] = secondElement
    }
}
print(arrPair)

