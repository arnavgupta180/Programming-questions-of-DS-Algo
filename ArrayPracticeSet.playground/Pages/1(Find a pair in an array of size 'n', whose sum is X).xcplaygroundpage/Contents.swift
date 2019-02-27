//Find a pair in an array of size 'n', whose sum is X


import UIKit

let arr = [3,4,5,6,10,8,1]
let target = 9
//Desired Output : [(3, 6), (4, 5)]
var arrPair : [(Int,Int)] = []

//Method 1 (Order of complexity O(n^2))
//var arrRemove = arr
//for value in arr{
//    for secondElement in arrRemove{
//        if value + secondElement == target{
//            arrPair.append((value,secondElement))
//            arrRemove.remove(at:arrRemove.firstIndex(of: value) ?? 0)
//            break
//        }
//    }
//}
//print(arrPair)



//Method 2 (Order of complexity O(n))
var dict : [String:Int] = [:]
arrPair = []
for key in arr{
    let value = target - key  //3
   // print("dict if \(dict["\(value)"])")
    if dict["\(value)"] != nil{  //dict["3"] ! = nil
        if key == dict["\(value)"]{
            arrPair.append((value,key))
        }
    }else{
        dict["\(key)"] = value  //dict{3] = 6
      //  print(dict)
    }
}
print(dict)
print(arrPair)

