//
//  level6.swift
//  BaseballGame
//
//  Created by 신지연 on 2024/03/13.
//

import Foundation

class Game {
    
    var order = 0 //게임 순서
    var count = 0 //게임 시도 횟수
    
    init(_ order: Int){
        self.order = order
    }
    
    var answer = 0
    var inputVal = 0
    var result: Bool = false
    
    func makeAnswer() {
        var isAvailable: Bool = false
        while isAvailable == false {
            answer = Int.random(in: 100...999)
            let answerToList = String(answer).compactMap {Int(String($0))}
            let answerToSet = Set(answerToList)
            if answerToList.count != answerToSet.count {
                isAvailable = false
            } else {
                isAvailable = true
            }
        }
        print("[정답은 \(answer)]")
    }
    
    func playGame() {
        print("<게임을 시작합니다>")
        repeat{
            print("숫자를 입력하세요")
            self.count += 1
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

            let answerList = String(answer).compactMap {Int(String($0))}
            let inputList = String(inputVal).compactMap {Int(String($0))}

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
        
    }
}

func startGame(_ order: Int) -> Int {
    let game: Game = Game(order)
    game.makeAnswer() // 정답 생성
    game.playGame()   // 게임 진행
    return game.count
}






