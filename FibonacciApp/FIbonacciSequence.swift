//
//  FIbonacciSequence.swift
//  FibonacciApp
//
//  Created by Sanjay on 1/5/15.
//  Copyright (c) 2015 sanjay. All rights reserved.
//

import Foundation;

class FibonacciSequence {
    
    let includesZero: Bool;
    let values: [UInt];
    
    init(maxNumber: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
        var n_2:UInt = 0;
        var n_1:UInt = 1;
        if(!includesZero)
        {
            n_2 = 1;
        }
        var n:UInt = n_1 + n_2;
        values = [n_2,n_1,n];
        while(true)
        {
            n_2 = n_1;
            n_1 = n;
            var (n_temp, overflow) = UInt.addWithOverflow(n_1, n_2);
            if(n_temp > maxNumber || overflow)
            {
                break;
            }
            n = n_temp;
            values.append(n);
        }
    }
    
    init(numberOfItemsInSequence: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
        var n_2:UInt = 0;
        var n_1:UInt = 1;
        if(!includesZero)
        {
            n_2 = 1;
        }
        var n:UInt = n_1 + n_2;
        values = [n_2,n_1,n];
        var totalItems:UInt = 3;
        for (totalItems; totalItems<numberOfItemsInSequence; ++totalItems)
        {
            n_2 = n_1;
            n_1 = n;
            var (n_temp, overflow) = UInt.addWithOverflow(n_1, n_2);
            if(overflow)
            {
                println("\nOVERFLOW: The next number is too big to be stored in UInt!\n");
                break;
                
            }
            n = n_temp;
            values.append(n);
        }
    }
}

