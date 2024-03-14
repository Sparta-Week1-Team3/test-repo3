//
//  main.swift
//  BaseballGame
//
//  Created by 신지연 on 2024/03/12.
//

import Foundation

var gameTime: Int = 1 //게임한 횟수
var gameRec: GameRecord = GameRecord()

class GameRecord {
    var gameCount: [Int] = []
    
    func showGameRecord() {
        var time = 1
        print("< 게임 기록 보기 >")
        for game in gameCount {
            print("\(time)번째 게임 : 시도 횟수 - \(game)")
            time += 1
        }
    }
    
    func appendGameCount(_ newGameCount: Int) {
        gameCount.append(newGameCount)
    }
}

func welcome() {
    print("=============================")
    print("환영합니다! 원하시는 번호를 입력해주세요")
    print("1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기")
    
    let userInput = Int(readLine()!)!
    
    switch userInput {
    case 1:
        gameRec.appendGameCount(startGame(gameTime))
        gameTime += 1
        welcome()
    case 2:
        gameRec.showGameRecord()
        welcome()
    case 3:
        print("< 숫자 야구 게임을 종료합니다 >")
    default:
        print("올바른 숫자를 입력해주세요!")
            
    }
    
}








