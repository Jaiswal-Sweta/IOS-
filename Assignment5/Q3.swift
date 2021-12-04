//Functions with inout Parameters
import UIKit

func swap(_ a:inout Int, _ b:inout Int){
    let temp = a
    a = b
    b = temp
}
var a = 10
var b = 20
debugPrint("a = \(a) b = \(b)")
swap(&a, &b)
debugPrint("a = \(a) b = \(b)")  
