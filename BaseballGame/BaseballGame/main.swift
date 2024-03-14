//
//  main.swift
//  BaseballGame
//
//  Created by 신지연 on 2024/03/12.
//

import Foundation

let answer = 456
var inputVal = Int()
var result: Bool = false


func intToArray (_ number: Int) -> [Int] {
    var num = number
    var result = [Int]()
    while num >= 1 {
        result.append(num % 10)
        num /= 10
    }
    return result
}

print("<게임을 시작합니다>")

repeat{
    print("숫자를 입력하세요")
    
    var ball: Int = 0
    var strike: Int = 0
    var answerIndex: Int = 0
    var inputIndex: Int = 0
    
    let userInput = readLine()
    if let number = userInput {
        if let IntFromInput = Int(number){
            inputVal = IntFromInput
        } else {
            print("올바르지 않은 입력값입니다")
        }
    } else {
        print("올바르지 않은 입력값입니다")
    }

    let answerList = intToArray(answer)
    let inputList = intToArray(inputVal)

    for answer in answerList{
        inputIndex = 0
        for input in inputList{
            if answer == input {
                if answerIndex == inputIndex {
                    ball += 1
                } else {
                    strike += 1
                }
            }
            inputIndex += 1
        }
        answerIndex += 1
    }

    if ball == 3 {
        result = true
        print("정답입니다!")
    } else {
        print("strike \(strike), ball \(ball)")
    }
    
}while result == false





