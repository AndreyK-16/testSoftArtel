import UIKit

let testStr = "ddsda\nfsdfsk\n1grlkgll\n"

func outputSymbolSubString(string: String, position: Int) -> (String, String) {
    var firstSymbolString = String()
    var lastSymbolString = String()
    var positionInString = position
    
    if string.isEmpty {
        print("This string is empty")
    } else if string.count <= position {
        print("Element count in this string less position value")
    } else {
        let arrayString = string.components(separatedBy: "\n")
        for subString in arrayString {
            if positionInString <= subString.count {
                print(subString)
                firstSymbolString = String(subString.first!)
                lastSymbolString = String(subString.last!)
                break
            } else {
                positionInString -= (subString.count + 1)
            }
        }
    }
    return(firstSymbolString, lastSymbolString)
}


func outputIndexSymbolSubString(string: String, position: Int) -> (Int, Int) {
    var firstIndexString = Int()
    var lastIndexString = Int()
    var positionInString = position
    var quantOfSubstructedIndex = 0
    
    if string.isEmpty {
        print("This string is empty")
    } else if string.count <= position {
        print("Element count in this string less position value")
    } else {
        let arrayString = string.components(separatedBy: "\n")
        for subString in arrayString {
            if positionInString <= subString.count {
                print(subString)
                firstIndexString = 0 + quantOfSubstructedIndex
                lastIndexString = (subString.count - 1) + quantOfSubstructedIndex
                break
            } else {
                positionInString -= (subString.count + 1)
                quantOfSubstructedIndex += (subString.count + 1)
            }
        }
    }
    return(firstIndexString, lastIndexString)
}

outputSymbolSubString(string: testStr, position: 8)
outputIndexSymbolSubString(string: testStr, position: 8)


