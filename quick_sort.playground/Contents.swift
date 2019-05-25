import UIKit

var array = [3, -1, 9, 6, 4, 5, 8, 9, 7, 2, 0]



func quickSort(array: inout [Int], lo: Int, hi: Int) {
    
    if lo < hi {
        
        let p = partition(array: &array, lo: lo, hi: hi)
        
        quickSort(array: &array, lo: lo, hi: p - 1)
        
        quickSort(array: &array, lo: p + 1, hi: hi)
        
    }
    
}



func partition(array: inout [Int], lo: Int, hi: Int) -> Int {
    
    var lo = lo
    
    let hi = hi
    
    let pivot = array[hi]
    
    for index in lo...(hi - 1) {
        
        if array[index] < pivot {
            
            swap(array: &array, i: lo, j: index)
            
            lo += 1
            
        }
        
    }
    
    swap(array: &array, i: lo, j: hi)
    
    return lo
    
}



func swap(array: inout [Int], i: Int, j: Int) {
    
    (array[i], array[j]) = (array[j], array[i])
    
}



quickSort(array: &array, lo: 0, hi: array.count - 1)

print(array)
