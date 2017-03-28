//: Playground - noun: a place where people can play

import Foundation

//reverse in place

extension String {
    mutating func reverse() {
        let middle = self.characters.count / 2
        for i in 0..<middle {
            let firstIndexFrom = self.index(self.startIndex, offsetBy: i)
            let firstIndexTo = self.index(self.startIndex, offsetBy: i+1)
            let first = self[firstIndexFrom]
            let secondIndexFrom = self.index(self.endIndex, offsetBy: -i - 1)
            let secondIndexTo = self.index(self.endIndex, offsetBy: -i)
            let second = self[secondIndexFrom]
            
            self = self.replacingCharacters(in: firstIndexFrom..<firstIndexTo, with: second.description)
            self = self.replacingCharacters(in: secondIndexFrom..<secondIndexTo, with: first.description)
        }
    }
}

var input: String? = "asdfgh"
input?.reverse()
if let input = input {
    print(input)
}




//bubble sort

extension Array where Element: Comparable {
    private func swap(array: inout [Element], index1: Int, index2: Int) {
        let x = array[index1]
        array[index1] = array[index2]
        array[index2] = x
    }
    
    func bubbleSorted() -> [Element] {
        var result = self
        
        var n = result.count
        repeat {
            guard n > 1 else {
                break
            }
            var newN = 0
            
            for i in 1..<n {
                if (result[i-1] > result[i]) {
                    swap(array: &result, index1: i-1, index2: i)
                    newN = i
                }
            }
            n = newN
        } while n == 0
        
        
        return self.sorted()
    }
}

/*let now = Date()
var dx = [Date(timeInterval: 200, since: now), Date(timeInterval: 3000, since: now), Date(timeInterval: 0, since: now)]*/

var x = [1,3,2]

let z = x.bubbleSorted()

print(z)
