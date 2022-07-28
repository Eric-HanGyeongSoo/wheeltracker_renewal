import UIKit

//1번
var str = "playground"


/*
for character in str {
    print(character)
}
*/

str.map(){print($0)}

//2번
let numbers = Array(1...5)
var factorial = 1

/*
for number in numbers{
    factorial*=number
}

print(factorial)
*/

numbers.map(){factorial *= $0}
print(factorial)

//3번
let  num_row = Array(1...5)
let num_col = Array(1...5)

/*
for num_r in num_row {
    for num_c in num_col {
        print("*", separator: "", terminator: " ")
    }
    print("\n")
}
*/

num_row.map(){ row in
    num_col.map(){ col in
        print("*", separator: "", terminator: " ")
    }
    print("\n")
}

//4번
let fir=Array(1...9)
let sec=Array(1...9)
/*
for fir_num in fir {
    var pow = 1
    for sec_num in sec {
        pow *= fir_num
       
    }
    print (pow)
}
*/
fir.map(){ first in
    var pow = 1
    sec.map(){ _ in pow *= first }
    print(pow)
}

//5번
/*
func pyramid() {
        // 피라미드 별찍기
    let height = Array(0...9)
        for num1 in height {
            let bound = 10-num1
            for _ in Array(0...bound){
                print(" ", terminator: "")
            }
            for _ in Array(0...2*num1){
                print("*", terminator: "")
            }
            print()
        }
}
pyramid()
*/
let height = Array(0...9)
height.map(){ number in
    let bound = 10 - number
    Array(0...bound).map(){ _ in print(" ", terminator: "")}
    Array(0...2*number).map(){_ in print("*", terminator: "")}
    print()
}
