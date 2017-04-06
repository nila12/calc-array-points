//
//  main.swift
//  CalcArrayPoints
//
//  Created by Mathi Manavalan on 4/6/17.
//  Copyright © 2017 Mathi Manavalan. All rights reserved.
//

import Foundation

print("Hello, World!")

/* 
create 4 functions for add, subtract, multiply, divide
create a function that expects one of them along with 2 ints; aka a generic math operation function, it should take 2 ints and pass them to the function and return the result
*/

func add(firstNum first: Int, secondNum sec: Int) {// -> Int {
    
    print ("\(first) + \(sec) = \(first + sec)")
    
    //return 1;
}

func subtract(firstNum first: Int, secondNum sec: Int) {// -> Int {
    
    print ("\(first) - \(sec) = \(first - sec)")
    
    //return 1;
}

func multiply(firstNum first: Int, secondNum sec: Int) {// -> Int {
    
    print ("\(first) * \(sec) = \(first * sec)")
    
    //return 1;
}

func divide(firstNum first: Int, secondNum sec: Int) {// -> Int {
    
    print ("\(first) / \(sec) = \(first / sec)")
    
    //return 1;
}

func basicOperation(firstNum first: Int, secondNum sec: Int, operation: (Int, Int) -> Void) {
    
    print(operation(first, sec))
}


/*
create two new functions for add/multiply
    instead of taking 2 ints, take an array of ints; return result of (adding/multiplying) all of the elements
 
 create two new functions (count, avg) that take an array of ints; operate on the array and return the result
 
 refactor all four down to another generic math operation approach (like in previous part)
 */




/*
 use tuples to represent x/y pairs
 
 create 2 functions for adding and subtracting points: (1,2) + (3,4) = (4,6)
    (1,2)-(3,4)=(-2,-2)
 */

/*
 now use Dictionaries to represent points; "x" is x coor, "y" is y coor
 
 create 2 functions for adding and subtracting points
 
 handle dictionaries without "x" or "y" without crashing
 
 handle dictionaries with Double values without crashing
 */
