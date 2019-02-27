//Algorithm to rotate array of size 'n' by 'd' elements

import Foundation

var arr = [1,2,3,4,5,6,7,8]

var d = 3
//Expected Output = [4,5,6,7,8,1,2,3] if d = 3
while d != 0 {
    let element = arr[0]
    arr.removeFirst()
    arr.append(element)
    d = d - 1
}
print(arr)
