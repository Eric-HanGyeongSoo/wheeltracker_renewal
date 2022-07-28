import UIKit

//과제

// 별찍기(정사각형)

let n = 5
/*
for _ in 1 ... n {
    for _ in 1 ... n{
        print("*", terminator:"")
    }
    print()
}
*/
Array(1...n).map(){_ in
    Array(1...n).map(){_ in
        print("*",terminator:"")
    }
    print()
}



// 별찍기2(직각 삼각형), There are two versions

var s = "*"
/*
for _ in 1...5{
    print(s)
    s+="*"
}
*/
Array(1...5).map(){_ in
    print(s)
    s += "*"
}


// 별찍기3(정삼각형)

let n3 = 5  
let m = (n3+1)*2-1
/*
for i in 1...n3{
    let star = i*2-1
    for _ in 1 ... (m-star)/2{
        print(" ", terminator:"")
    }
    for _ in 1 ... star{
        print("*", terminator:"")
    }
    for _ in 1 ... (m-star)/2{
        print(" ", terminator:"")
    }
    print()
}
*/
Array(1...n3).map(){i in
    let star = i*2 - 1
    Array(1...(m-star)/2).map(){_ in print(" ",terminator:"")}
    Array(1...star).map(){_ in print("*",terminator:"")}
    Array(1...(m-star)/2).map(){_ in print(" ",terminator:"")}
    print()
}

// 구간의 합

let start = 4
let end = 10
var sum = 0
/*
for i in start ... end {
    sum += i
}
print(sum)
*/
Array(start...end).map(){i in sum += i}
print(sum)

// 1부터 100까지 소수구하기

let n4 = 100
/*
for i in 1 ... n4 {
    var is_prime = 0
    for  j in 1...i{
        if i%j==0{
            is_prime+=1
        }
    }
    if is_prime==2{
        print(i, " is prime number.", separator : "")
    }
}
*/
Array(1...n4).map(){i in
    var is_prime = 0
    Array(1...i).filter(){j in i%j == 0}.map(){_ in is_prime += 1}
    if is_prime == 2{
        print(i, " is prime number.", separator : "")
    }
}

