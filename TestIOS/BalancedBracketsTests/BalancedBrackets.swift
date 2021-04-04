//
//  BalancedBrackets.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-04-03.
//

import Foundation

class BalancedBrackets {
    
    var bracketsMap: [Character: Character] = [")": "(",
                                               "]": "[",
                                               "}": "{"]
    
    public func isBalanced(string: String) -> Bool {
        var brackets: [Character] = []
        
        for char in string {
            // Find opening and push onto stack in the order they appear
            if isOpeningBracket(character: char) {
                /// Opening brackets
                brackets.append(char)
            } else {
                /// Closing brackets
                /// check last opening bracket in array, if matches, pop it out
                if isClosingBracket(character: char) {
                    if let last = brackets.last,
                       let matchingOpen = getMatchingOpenBracket(character: char),
                       matchingOpen == last {
                        _ = brackets.popLast()
                    } else {
                        return false
                    }
                }
            }
        }
        return brackets.isEmpty
    }
    
}

extension BalancedBrackets {
    
    private func isOpeningBracket(character: Character) -> Bool {
        return "([{".contains(character)
    }
    
    private func isClosingBracket(character: Character) -> Bool {
        return bracketsMap.keys.contains(character)
    }
    
    private func getMatchingOpenBracket(character: Character) -> Character? {
        return bracketsMap[character]
    }
    
}
