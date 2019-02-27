//Algorithm to reverse an array

import Foundation

var arr = [2,5,8,6,10]

for index in 0...((arr.count)/2 - 1){
    print(index)
    let number = arr[index]
    let lastIndex = arr.count - 1
    arr[index] = arr[lastIndex - index]
    arr[lastIndex - index] = number

}
print(arr)
