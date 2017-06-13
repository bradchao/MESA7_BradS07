//
//  main.swift
//  BradS07
//
//  Created by iii on 2017/6/12.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

var str = "Hello, World"

if let range = str.range(of: "^H.*d$", options: .regularExpression) {
    let result = str.substring(with: range)
    print("OK: \(result)")
}else {
    print("XX")
}


