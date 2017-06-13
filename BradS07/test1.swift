//
//  test1.swift
//  BradS07
//
//  Created by iii on 2017/6/13.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func test1() {
    // Regex
    //var str = "Hello, World"
    //ge = str.range(of: "^H.*d$", options: .regularExpression) {
    //    let result = str.substring(with: range)
    //    print("OK: \(result)")
    //}else {
    //    print("XX")
    //}
    
    // 0
    func mysort(a:Int, b:Int) -> Bool {
        //print("\(a) : \(b)")
        return a<b
    }
    
    print(type(of:mysort))
    
    let a1 = [4,2,7,1]
    let a2 = a1.sorted(by: mysort)
    print(a2.description)
    
    // 1
    let a3 = a1.sorted(by:
    {(a,b) -> Bool in
        print("\(a) : \(b)")
        return a < b
    })
    print(a3.description)
    
    // 2-1
    let a31 = a1.sorted(by: {(a,b) -> Bool in
        print("OK")
        return a < b
    })
    print(a31.description)
    
    // 2
    let a4 = a1.sorted(by: {(a,b) -> Bool in a < b })
    print(a4.description)
    
    // 3
    let a5 = a1.sorted(by: {$0 < $1})
    print(a5.description)
    
    // 4
    let a6 = a1.sorted(by: < )
    print(a6.description)
    
    // tailing closure
    let a7 = a1.sorted() {(a:Int, b:Int) -> Bool in
        print("OK")
        return a > b
    }
    print(a7.description)
    
    let a8 = a1.sorted() {$0 > $1}
    print(a8.description)
    
    let s1 = ["10", "11", "1", "2","20"]
    let s2 = s1.sorted();
    print(s2.description)
    
    func strsort(a:String, b:String) -> Bool {
        return Int(a)! < Int(b)!
    }
    
    let s3 = s1.sorted(by: strsort)
    print(s3.description)
    
    func f1(myfunc:(Int, Int)->Int, a:Int, b:Int) ->Int{
        return myfunc(a,b)
    }
    
    func f2(a:Int, b:Int) -> Int{
        return a >= b ? a : b
    }
    
    func f3(a:Int, b:Int) -> Int{
        return a <= b ? a : b
    }
    print(type(of:f2))
    let v1 = f1(myfunc: f2, a:3, b:4)
    let v2 = f1(myfunc: f3, a:5, b:6)
    print(v1)
    print(v2)
    
    func f4(myfunc:() -> (), myfunc2:()->()) {
        myfunc()
        myfunc2()
    }
    
    func f5() {
        print("f5")
    }
    func f6() {
        print("f6")
    }
    
    f4(myfunc:f5){
        print("OK")
    }
    
    func f7(myfunc:()->()...){
        
    }
    f7()
    f7(){
        print("f7")
    }

}
