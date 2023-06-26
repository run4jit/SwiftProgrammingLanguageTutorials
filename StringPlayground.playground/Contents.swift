import UIKit
/*
 Swift strings are represented by the String type.
 A string is a series of characters.
 Strings Are Value Types.
 */

/*String Literals*/
let greeting = "Hello! String \n playground"

/*Multiline String Literals*/
let multilineString = """
                    This is multiline literal string.\
                     We can write any number of line.\
                     This is very useful.
                    """
debugPrint(multilineString)

/*Special Characters in String Literals*/
/*
 The escaped special characters \0 (null character),
 \\ (backslash),
 \t (horizontal tab),
 \n (line feed),
 \r (carriage return),
 \" (double quotation mark) and
 \' (single quotation mark)
 */

/*An arbitrary Unicode scalar value, written as \u{n}, where n is a 1–8 digit hexadecimal number (Unicode is discussed in Unicode below)
 */
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

/*
 Working with Characters
 */


for character in "Dog!🐶" {
    debugPrint(character)
}

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
debugPrint(catString)

/*Concatenating Strings and Characters*/

var hello = "hello"
let there = " there"
let exclamationMark: Character = "!"

var helloThere = hello + there
helloThere.append(exclamationMark)
debugPrint(helloThere)

/*
 String interpolation is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal.
 */
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
debugPrint(message)


/*String Indices*/

let greetingStr = "Guten Tag!"
debugPrint(greetingStr[greetingStr.startIndex])
debugPrint(greetingStr[greetingStr.index(before: greetingStr.endIndex)])
let greetingStrIndex = greeting.index(greetingStr.startIndex, offsetBy: 6)
debugPrint(greetingStr[greetingStrIndex])

for index in greetingStr.indices {
    debugPrint("\(greetingStr[index])", terminator: "\t")
}
debugPrint()

/*Inserting and Removing*/
var welcome = "welcome"
welcome.insert("!", at: welcome.endIndex)
debugPrint(welcome)
welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome.insert(contentsOf: " to Swift", at: welcome.endIndex)
debugPrint(welcome)

/*
 Substrings
 
 */

let greeting1 = "Hello, world!"
let index = greeting1.firstIndex(of: ",") ?? greeting1.endIndex
let begining = greeting1[..<index]

debugPrint(String(begining))


let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var mansionCount = 0;
var placeCount = 0;
for sent in romeoAndJuliet {
    if sent.hasPrefix("Act 2") {
        placeCount += 1
    }
    if sent.hasSuffix("mansion") {
        mansionCount += 1
    }
}
debugPrint("mansion = \(mansionCount) and palace = \(placeCount)")
