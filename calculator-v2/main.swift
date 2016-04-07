//
//  main.swift
//  calculator-v2
//
//  Created by Peter Freschi on 4/6/16.
//  Copyright © 2016 Peter Freschi. All rights reserved.
//

import Foundation

print("Welcome to calculator-v2!")
print()


//Build a calculator!
func add(n1 : UInt, n2 : UInt) -> UInt {
    return n1 + n2
}
func subtract(n1 : UInt, n2 : UInt) -> UInt {
    return n1 - n2
}
func multiply(n1 : UInt, n2 : UInt) -> UInt {
    return n1 * n2
}
func divide(n1 : UInt, n2 : UInt) -> UInt {
    return n1 / n2
}

func math(op : String, num1 : UInt, num2 : UInt) -> UInt {
    if (op == "add") {
        return add(num1, n2 : num2)
    } else if (op == "subtract") {
        return subtract(num1, n2 : num2)
    } else if (op == "multiply") {
        return multiply(num1, n2 : num2)
    } else if (op == "divide") {
        return divide(num1, n2 : num2)
    } else {
        print("invalid operation")
        return 0
    }
}
print("build a calculator tests:")
print(add(10, n2: 20))
print(subtract(30, n2: 20))
print(multiply(100, n2: 100))
print(divide(10, n2: 5))

print()

print(math("add", num1: 10, num2: 5))
print(math("subtract", num1: 100, num2: 5))
print(math("multiply", num1: 10, num2: 5))
print(math("divide", num1: 10, num2: 5))
print()



//Array FUN!
func add(nums : [UInt]) -> UInt {
    var total = UInt.init()
    for num in nums {
        total += num
    }
    return total
}
func multiply(nums : [UInt]) -> UInt {
    var total = UInt.init(1)
    for num in nums {
        total *= num
    }
    return total
}
func count(nums : [UInt]) -> UInt {
    var count = UInt.init()
    for _ in nums {
        count += 1
    }
    return count
}
func avg(nums : [UInt]) -> UInt {
    return math("divide", num1: add(nums), num2: count(nums))
}
func math(op : String, nums : [UInt]) -> UInt {
    if (op == "add") {
        return add(nums)
    } else if (op == "multiply") {
        return multiply(nums)
    } else if (op == "count") {
        return count(nums)
    } else if (op == "avg") {
        return avg(nums)
    } else {
        return 0
    }
}

print("array fun tests:")

print(add([0, 1, 2, 3, 4, 5]))
print(multiply([5, 1, 2, 3, 4, 5]))
print(count([0, 1, 2, 3, 4, 5]))
print(avg([0, 1, 2, 3, 4, 5]))

print(math("add", nums: [0, 1, 2, 3, 4, 5]))
print(math("multiply", nums: [5, 1, 2, 3, 4, 5]))
print(math("count", nums: [0, 1, 2, 3, 4, 5]))
print(math("avg", nums: [0, 1, 2, 3, 4, 5]))

print()


//Points!
func addTuples(p1: (x1 : Int, y1 : Int), p2: (x2 : Int, y2 : Int)) -> (Int, Int) {
    return ((p1.x1 + p2.x2), (p1.y1 + p2.y2))
}
func subtractTuples(p1: (x1 : Int, y1 : Int), p2: (x2 : Int, y2 : Int)) -> (Int, Int) {
    return ((p1.x1 - p2.x2), (p1.y1 - p2.y2))
}

func addDicts(p1 : Dictionary<String, Double>, p2 : Dictionary<String, Double>) -> Dictionary<String, Double> {
    var result = [
        "x" : 0.0,
        "y" : 0.0,
    ]
    if (p1["x"] == nil && p2["x"] != nil){
        result["x"] = p2["x"]
    } else if (p1["x"] != nil && p2["x"] == nil){
        result["x"] = p1["x"]
    } else {
        result["x"] = p1["x"]! + p2["x"]!
    }
    if (p1["y"] == nil && p2["y"] != nil){
        result["y"] = p2["y"]
    } else if (p1["y"] != nil && p2["y"] == nil){
        result["y"] = p1["y"]
    } else {
        result["y"] = p1["y"]! + p2["y"]!
    }
    return result
}

func subtractDicts(p1 : Dictionary<String, Double>, p2 : Dictionary<String, Double>) -> Dictionary<String, Double> {
    var result = [
        "x" : 0.0,
        "y" : 0.0,
        ]
    if (p1["x"] == nil && p2["x"] != nil){
        result["x"] = -p2["x"]!
    } else if (p1["x"] != nil && p2["x"] == nil){
        result["x"] = p1["x"]
    } else {
        result["x"] = p1["x"]! - p2["x"]!
    }
    if (p1["y"] == nil && p2["y"] != nil){
        result["y"] = -p2["y"]!
    } else if (p1["y"] != nil && p2["y"] == nil){
        result["y"] = p1["y"]
    } else {
        result["y"] = p1["y"]! - p2["y"]!
    }
    return result
}

print("point tests:")
var tuple1 = (1, 2)
var tuple2 = (3, 4)
//print(add(tuple1, p2: tuple2))

var point1 = [
    "x" : 2.5,
    "y" : 3.4,
]
var point2 = [
    "x" : -1.0,
]
print(addDicts(point1, p2: point2))
print(subtractDicts(point1, p2: point2))

print()

print(addTuples(tuple1, p2: tuple2))
print(subtractTuples(tuple1, p2: tuple2))
print()

print("complete")
