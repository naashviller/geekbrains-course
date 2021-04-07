//
//  main.swift
//  L1_PavlovaAnastasiia
//
//  Created by Anastasiia Pavlova on 2/17/21.
//  Copyright © 2021 student. All rights reserved.
//

import Foundation


let a = Double(readLine(strippingNewline: true)!)!;
let b = Double(readLine(strippingNewline: true)!)!;
let c = Double(readLine(strippingNewline: true)!)!;
var d: Double = (b * b) - (4 * a * c);


func sqr () -> String{
    if  d == 0 {
        let x = ((-1) * b) / (2 * a);
        return "корень вышел = " + " \(x)"
    } else if (d < 0) {
        return "нет корней :(";
    } else if (d > 0){
        let x1 = ((-1) * b) + sqrt(d);
        let x2 = ((-1)*b) - sqrt(d);
        return "вышло 2 корня, это x1= \(x1)  x2= \(x2)"
    }
    
    return "не получилось найти корни"
}
print(sqr());


//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
func square() -> String {
    if a * a == b * b + c * c {
        let s = (b * c)/0.5
        return "площадь равна \(s), а катет равен \(a)"
    } else if (b * b == a * a + c * c){
        let s = (a * c)/0.5
        return "площадь равна \(s), а катет равен \(b)"
    } else if (c * c == a * a + b * b){
        let s = (a * c)/0.5
        return "площадь равна \(s), а катет равен \(c)"
    }
    
    return "это не прямоугольный треугольник, братишка"
}
print (square());

func perimeter() -> String {
    let p = a + b + c
    return "периметр равен \(p)"
}
print(perimeter())





var n = Double(readLine(strippingNewline: true)!)!;//сумма вклада
let e = Double(readLine(strippingNewline: true)!)!;//годовой процент

func fin() -> String {
    for _ in  1...5 {
        let vklad = n + (n * e)/100;
        n = vklad
    }

    return "сумма вклада через 5 лет будет равна \(n)"
}

print(fin());
