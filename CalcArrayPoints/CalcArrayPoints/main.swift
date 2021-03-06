//
//  main.swift
//  CalcArrayPoints
//
//  Created by Mathi Manavalan on 4/6/17.
//  Copyright © 2017 Mathi Manavalan. All rights reserved.
//

import Foundation

/*
 create 4 functions for add, subtract, multiply, divide
 create a function that expects one of them along with 2 ints; aka a generic math operation function, it should take 2 ints and pass them to the function and return the result
 */

func add(left first: Int, right sec: Int) -> Int {
    
    return (first + sec)
}

func subtract(left first: Int, right sec: Int) -> Int {
    
    return (first - sec)
}

func multiply(left first: Int, right sec: Int) -> Int {
    
    return (first * sec)
}

func divide(left first: Int, right sec: Int) -> Int {
    
    return (first / sec)
}

func mathOperation(left first: Int, right sec: Int, operation: (Int, Int) -> Int) -> Int {
    
    return(operation(first, sec)) //just number or "result" text???
}


/*
 create two new functions for add/multiply
 instead of taking 2 ints, take an array of ints; return result of (adding/multiplying) all of the elements
 
 create two new functions (count, avg) that take an array of ints; operate on the array and return the result
 
 refactor all four down to another generic math operation approach (like in previous part)
 */

func add(array: [Int]) -> Int {
    var sum = 0;
    
    for num in array {
        sum += num;
    }
    
    return sum
}

func multiply(array: [Int]) -> Int {
    var sum = 1;
    
    for num in array {
        sum *= num;
    }
    
    return sum
}

func count(array: [Int]) -> Int {
    return array.count
}

func average(array: [Int]) -> Int {
    return add(array: array) / array.count
}

func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    
    return operation(array)
    
}

/*
 use tuples to represent x/y pairs
 
 create 2 functions for adding and subtracting points: (1,2) + (3,4) = (4,6)
 (1,2)-(3,4)=(-2,-2)
 */

func add(p1: (xa: Int, ya: Int), p2: (xb: Int, yb: Int)) -> (x: Int, y: Int) {
    
    return (p1.xa + p2.xb, p1.ya + p2.yb)
}

func subtract(p1: (xa: Int, ya: Int), p2: (xb: Int, yb: Int)) -> (x: Int, y: Int) {
    
    return (p1.xa - p2.xb, p1.ya - p2.yb)
}

/*
 now use Dictionaries to represent points; "x" is x coor, "y" is y coor
 
 create 2 functions for adding and subtracting points
 
 handle dictionaries without "x" or "y" without crashing
 
 handle dictionaries with Double values without crashing
 */

func add(p1: ([String : Double])?, p2: ([String : Double])?) -> [String : Double]? {
    
    if (p1 != nil && p2 != nil && p1!["x"] != nil && p2!["x"] != nil && p1!["y"] != nil && p2!["y"] != nil) {
        
        return ["x" : p1!["x"]! + p2!["x"]!, "y" : p1!["y"]! + p2!["y"]!]
        
    } else {
        print ("At least one passed in dictionary was nil; returning empty point 0.0")
        
        return ["Empty Point" : 0.0];
    }
}

func add(p1: ([String : Int])?, p2: ([String : Int])?) -> [String : Int]? {
    
    if (p1 != nil && p2 != nil && p1!["x"] != nil && p2!["x"] != nil && p1!["y"] != nil && p2!["y"] != nil) {
        
        return ["x" : p1!["x"]! + p2!["x"]!, "y" : p1!["y"]! + p2!["y"]!]
        
    } else {
        print ("At least one passed in dictionary was nil; returning empty point 0.0")
        
        return ["Empty Point" : 0];
    }
}


func subtract(p1: ([String : Double])?, p2: ([String : Double])?) -> [String : Double]? {
    
    if (p1 != nil && p2 != nil && p1!["x"] != nil && p2!["x"] != nil && p1!["y"] != nil && p2!["y"] != nil) {
        
        return ["x" : p1!["x"]! - p2!["x"]!, "y" : p1!["y"]! - p2!["y"]!]
        
    } else {
        print ("At least one passed in dictionary was nil; returning empty point 0.0")
        
        return ["Empty Point" : 0.0];
    }
}

func subtract(p1: ([String : Int])?, p2: ([String : Int])?) -> [String : Int]? {
    
    if (p1 != nil && p2 != nil && p1!["x"] != nil && p2!["x"] != nil && p1!["y"] != nil && p2!["y"] != nil) {
        
        return ["x" : p1!["x"]! - p2!["x"]!, "y" : p1!["y"]! - p2!["y"]!]
        
    } else {
        print ("At least one passed in dictionary was nil; returning empty point 0.0")
        
        return ["Empty Point" : 0];
    }
}
