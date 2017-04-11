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

func average(array: [Int]) -> Int { //can i use my addArr func??? YES
    var sum = 0;
    
    for num in array {
        sum += num;
    }
    
    return sum / array.count
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
    
    // access "x" and "y" keys to get their values and return a dictionary with appropriately updated values
    
    /*
     let dictionaryIntTest2 = [
     "x" : 5,
     "y" : 4
     ]
     
     let addPointDictionaryResult = add(p1: dictionaryIntTest1, p2: dictionaryIntTest2)!
 
 */
    
    if (p1 != nil && p2 != nil) {
        
        //if p1!["x"] is Int
        /*
        let x1 = p1!["x"]!// as! Double
        let x2 = p2!["x"]!// as! Double
        let y1 = p1!["y"]!// as! Double
        let y2 = p2!["y"]! //as! Double
        */
 
        
        /*let x1 = Double(p1!["x"])
        let x2 = Double(p2!["x"])
        
        let y1 = Double(p1!["y"])
        let y2 = Double(p2!["y"])
        */
        
        return ["x" : p1!["x"]! + p2!["x"]!, "y" : p1!["y"]! + p2!["y"]!]

    } else {
        print ("At least one passed in dictionary was nil; returning empty point 0")
        
        return ["Empty Point" : 0];
    }
    
    
    //return ["x" : p1["x"]! + p2["x"]!, "y" : p1["y"]! + p2["y"]!]
}

func add(p1: ([String : Int])?, p2: ([String : Int])?) -> [String : Int]? {
    
    if (p1 != nil && p2 != nil) {
        
        //if p1!["x"] is Int
        
        /*let x1 = p1!["x"]!// as! Double
        let x2 = p2!["x"]!// as! Double
        let y1 = p1!["y"]!// as! Double
        let y2 = p2!["y"]! //as! Double
 */
        
        
        /*let x1 = Double(p1!["x"])
         let x2 = Double(p2!["x"])
         
         let y1 = Double(p1!["y"])
         let y2 = Double(p2!["y"])
         */
        
        return ["x" : p1!["x"]! + p2!["x"]!, "y" : p1!["y"]! + p2!["y"]!]
        
        //return ["x" : x1 + x2, "y" : y1 + y2]
        
    } else {
        print ("At least one passed in dictionary was nil; returning empty point 0")
        
        return ["Empty Point" : 0];
    }
    
    
    //return ["x" : p1["x"]! + p2["x"]!, "y" : p1["y"]! + p2["y"]!]
}

func subtract(p1: ([String : Double])?, p2: ([String : Double])?) -> [String : Double]? {
    
    // access "x" and "y" keys to get their values and return a dictionary with appropriately updated values
    
    /*
     let dictionaryIntTest2 = [
     "x" : 5,
     "y" : 4
     ]
     
     let addPointDictionaryResult = add(p1: dictionaryIntTest1, p2: dictionaryIntTest2)!
     
     */
    
    if (p1 != nil && p2 != nil) {
        
        //if p1!["x"] is Int
        
        /*let x1 = p1!["x"]!// as! Double
        let x2 = p2!["x"]!// as! Double
        let y1 = p1!["y"]!// as! Double
        let y2 = p2!["y"]! //as! Double
 */
        
        
        /*let x1 = Double(p1!["x"])
         let x2 = Double(p2!["x"])
         
         let y1 = Double(p1!["y"])
         let y2 = Double(p2!["y"])
         */
        
        return ["x" : p1!["x"]! - p2!["x"]!, "y" : p1!["y"]! - p2!["y"]!]
        
        //return ["x" : x1 - x2, "y" : y1 - y2]
        
    } else {
        print ("At least one passed in dictionary was nil; returning empty point 0")
        
        return ["Empty Point" : 0];
    }
    
    
    //return ["x" : p1["x"]! + p2["x"]!, "y" : p1["y"]! + p2["y"]!]
}

func subtract(p1: ([String : Int])?, p2: ([String : Int])?) -> [String : Int]? {
    
    if (p1 != nil && p2 != nil) {
        
        //if p1!["x"] is Int
        
        /*let x1 = p1!["x"]!// as! Double
        let x2 = p2!["x"]!// as! Double
        let y1 = p1!["y"]!// as! Double
        let y2 = p2!["y"]! //as! Double
 */
        
        
        /*let x1 = Double(p1!["x"])
         let x2 = Double(p2!["x"])
         
         let y1 = Double(p1!["y"])
         let y2 = Double(p2!["y"])
         */
        
        return ["x" : p1!["x"]! - p2!["x"]!, "y" : p1!["y"]! - p2!["y"]!]
        
        //return ["x" : x1 - x2, "y" : y1 - y2]
        
    } else {
        print ("At least one passed in dictionary was nil; returning empty point 0")
        
        return ["Empty Point" : 0];
    }
    
    
    //return ["x" : p1["x"]! + p2["x"]!, "y" : p1["y"]! + p2["y"]!]
}


/*func subtract(p1: ([String : Any])?, p2: ([String : Any])?) -> [String : Double]? {
    
    if (p1 != nil && p2 != nil) {
        
        let x1 = p1?["x"] as! Double
        let x2 = p2?["x"] as! Double
        
        let y1 = p1?["y"] as! Double
        let y2 = p2?["y"] as! Double
        
        return ["x" : x1 - x2, "y" : y1 - y2]
        
        //return ["x" : Double(p1!["x"]!) - p2!["x"]!, "y" : Double(p1!["y"]!) - p2!["y"]!]
        
    } else {
        print ("At least one passed in dictionary was nil; returning empty point 0")
        
        return ["Empty Point" : 0];
    }

    
    //return ["x" : p1["x"]! - p2["x"]!, "y" : p1["y"]! - p2["y"]!]
}
*/



