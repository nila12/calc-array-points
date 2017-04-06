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

func add(firstNum first: Int, secondNum sec: Int) -> Int {
    
    return (first + sec)
}

func subtract(firstNum first: Int, secondNum sec: Int) -> Int {
    
    return (first - sec)
}

func multiply(firstNum first: Int, secondNum sec: Int) -> Int {
    
    return (first * sec)
}

func divide(firstNum first: Int, secondNum sec: Int) -> Int {
    
    return (first / sec)
}

func basicOperation(firstNum first: Int, secondNum sec: Int, operation: (Int, Int) -> Int) -> Int {
    
    return(operation(first, sec)) //just number or "result" text???
}


/*
create two new functions for add/multiply
    instead of taking 2 ints, take an array of ints; return result of (adding/multiplying) all of the elements
 
 create two new functions (count, avg) that take an array of ints; operate on the array and return the result
 
 refactor all four down to another generic math operation approach (like in previous part)
 */

func addArr(arr: [Int]) -> Int {
    var sum = 0;
    
    for num in arr {
        sum += num;
    }
    
    return sum
}

func multiplyArr(arr: [Int]) -> Int {
    var sum = 1;
    
    for num in arr {
        sum *= num;
    }
    
    return sum
}

func count(arr: [Int]) -> Int {
    return arr.count
}

func avg(arr: [Int]) -> Int { //can i use my addArr func???
    var sum = 0;
    
    for num in arr {
        sum += num;
    }
    
    return sum / arr.count
}

func arrOperation(arr: [Int], arrOperation: ([Int]) -> Int) -> Int {
    
    return arrOperation(arr)
    
}


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
