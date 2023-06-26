import UIKit

/*
 Collection Types, Organize data using arrays, sets, and dictionaries.
 
 Swift provides three primary collection types, known as arrays, sets, and dictionaries, for storing collections of values. Arrays are ordered collections of values. Sets are unordered collections of unique values. Dictionaries are unordered collections of key-value associations.

 https://docs.swift.org/swift-book/images/CollectionTypes_intro~dark@2x.png
 
 */


/*
 Arrays
 An array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.
 */

/*
 Creating an Empty Array
 */
let emptyInts:[Int] = []
let emptyChars:[Character] = Array()
let emptyFlots = [Float]()
let emptyDoubles = Array<Double>()

/*
 Creating an Array with default value
 */

let defalutInts = Array(repeating: -1, count: 10)
let defalutZeroInts = Array(repeating: 0, count: 5)
let addTowArray = defalutInts + defalutZeroInts


/*
 Creating an Array with an Array Literal
 */

var charArray = ["h", "e", "l", "l", "o", "!"]
debugPrint(charArray)
debugPrint(charArray.count)
debugPrint(charArray.isEmpty)
debugPrint(charArray.first ?? "x")
debugPrint(charArray.last ?? "y")
debugPrint(charArray[charArray.count - 1])
charArray.append("d")
debugPrint("\(charArray)")
charArray.append(contentsOf: ["e", "f"])
debugPrint("\(charArray)")
charArray.remove(at: charArray.count - 1)
debugPrint("\(charArray)")
debugPrint("\(charArray[1...4])")

for (index, value) in charArray.enumerated() {
    debugPrint("value \(value) at index \(index)")
}


/*
 Sets
 *  A set stores distinct values of the same type in a collection with no defined ordering.
 *  You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.
 *  Hash Values for Set Types
 *  A type must be hashable in order to be stored in a set — that is, the type must provide a way to compute a hash value for itself. A hash value is an Int value that’s the same for all objects that compare equally, such that if a == b, the hash value of a is equal to the hash value of b.
 */

/*
 Creating and Initializing an Empty Set
 */

let emptyIntSet = Set<Int>()
let emptyDoubleSet: Set<Double> = []
let emptyFloatSet: Set<Float> = Set()

/*
 Creating a Set with an Array Literal
 */
var charSet:Set = ["h", "e", "l", "l", "o", "!"]
debugPrint(charSet)
debugPrint(charSet.count)
debugPrint(charSet.isEmpty)
charSet.remove("!")
debugPrint(charSet)
charSet.insert("!")
debugPrint(charSet)
debugPrint(charSet.contains("e"))

for ch in charSet.sorted() {
    debugPrint(ch, terminator: "\t")
}
debugPrint()
/*
 Fundamental Set Operations
 */

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

debugPrint(evenDigits.union(oddDigits).sorted())
debugPrint(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
debugPrint(singleDigitPrimeNumbers.subtracting(oddDigits).sorted())
debugPrint(oddDigits.intersection(singleDigitPrimeNumbers).sorted())
debugPrint(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())


/*
 Set Membership and Equality
 The illustration below depicts three sets — a, b and c — with overlapping regions representing elements shared among sets. Set a is a superset of set b, because a contains all elements in b. Conversely, set b is a subset of set a, because all elements in b are also contained by a. Set b and set c are disjoint with one another, because they share no elements in common.
 
 Use the “is equal” operator (==) to determine whether two sets contain all of the same values.

 Use the isSubset(of:) method to determine whether all of the values of a set are contained in the specified set.

 Use the isSuperset(of:) method to determine whether a set contains all of the values in a specified set.

 Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a set is a subset or superset, but not equal to, a specified set.

 Use the isDisjoint(with:) method to determine whether two sets have no values in common.


 */

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]


debugPrint(houseAnimals.isSubset(of: farmAnimals))
debugPrint(farmAnimals.isSuperset(of: houseAnimals))
debugPrint(farmAnimals.isStrictSubset(of: houseAnimals))
debugPrint(farmAnimals.isStrictSuperset(of: houseAnimals))
debugPrint(farmAnimals.isDisjoint(with: cityAnimals))

/*
 Dictionaries
 A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering.
 */

/*
 Creating an Empty Dictionary
 */

let emptyIntDict:[String: Int] = [:]
let emptyCharDict:[Int: Character] = Dictionary()
let emptyFlotDict = [String:Float]()

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
debugPrint(airports)
debugPrint(airports.count)
debugPrint(airports.isEmpty)
airports["LHR"] = "London"
debugPrint(airports)
debugPrint(airports["DUB"]!)
airports["APL"] = "Apple International"
debugPrint(airports)
airports["APL"] = nil // removed
debugPrint(airports)

for (key, value) in  airports {
    debugPrint("airport code\(key) and name \(value)")
}

debugPrint(airports.keys)
debugPrint(airports.values)
