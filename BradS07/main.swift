//
//  main.swift
//  BradS07
//
//  Created by iii on 2017/6/12.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

// Regex
//var str = "Hello, World"
//ge = str.range(of: "^H.*d$", options: .regularExpression) {
//    let result = str.substring(with: range)
//    print("OK: \(result)")
//}else {
//    print("XX")
//}

// 1
func mysort(a:Int, b:Int) -> Bool {
    //print("\(a) : \(b)")
    return a<b
}

print(type(of:mysort))

let a1 = [4,2,7,1]
let a2 = a1.sorted(by: mysort)
print(a2.description)

// 2
let a3 = a1.sorted(by:
    {(a,b) -> Bool in
        print("\(a) : \(b)")
        return a < b
    })
print(a3.description)











