import UIKit

var greeting = "Hello, playground"

//print("Hello world!")
//var rollNumber = "sdfgdsg"
//print(rollNumber)
//rollNumber = "uiiikkioo"
//print(rollNumber)
//
//let label = "The width is "
//let width = 94
//let widthLabel = label + String(width)
//print(widthLabel)

for i in 1...40 {
    //print(i)
    for j in 1...10 {
        print(" \(i) X \(j) = \(i*j)")
    }
    
}

for x in 1...20 {
    print("\(x)^3 = \(x*x*x)")
}
          
      /*
       
       * * * * *
       * * * * *
       * * * * *
       * * * * *
       * * * * *
       
       
       */



//print("* * * * *")
//print("* * * * *")
//print("* * * * *")
//print("* * * * *")
//print("* * * * *")
          
//for _ in 1...5 {
//    print("* * * * *")
//}

for _ in 1...5 {
    print("*", terminator:" ")
    
    for _ in 1...5 {
        print("*")
    }
}
