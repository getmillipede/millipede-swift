//
//  main.swift
//  millipede
//
//  Created by Arnaud Chong on 27/07/2015.
//  Copyright (c) 2015 Arnaud Chong. All rights reserved.
//

import Foundation

let offsets = [2, 1, 0, 1, 2, 3, 4, 4, 3]

func print_body(size: Int) {
    for _ in 0...size {
        print(" ")
    }
    println("╚═(███)═╝")
}

func print_millipede(size: Int) {
    println("    ╚⊙ ⊙╝")
    for idx in 1...size {
        print_body(offsets[idx % offsets.count])
    }
}

if Process.arguments.count < 2 {
    print_millipede(20)
}
else {
    print_millipede(Process.arguments[1].toInt()!)
}

