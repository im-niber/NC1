//
//  ModelData.swift
//  NC1
//
//  Created by rbwo on 2022/05/02.
//

import Foundation
import Combine

final class ModelData: ObservableObject{
    @Published var wordData : [Words] = load("words.json")
    
    @Published var randomData = Array<Int>()
    @Published var checkedData = Set<Words>()
    
    var typeWords: [(String, Int)] = [("명사", 0), ("동사", 0), ("형용사", 0), ("부사", 0), ("전치사", 0), ("접속사", 0)]
    
//  Set를 이용하여 중복이 없는 4개의 인덱스 집합을 만드는 함수
    func randomCreate(){
        var randomDatas = Set<Int>()

        while randomDatas.count != 4 {
            randomDatas.insert(Int.random(in: 0..<wordData.endIndex))
        }

        print(randomDatas)
        randomData = Array(randomDatas)
    }
    
// 틀린 단어들을 삽입하는 함수
    func checkedWord(word: Words) {
        checkedData.insert(word)
        //checkedData.append(word)
        print(checkedData)
    }
    
// 체크하면 틀린 단어 리스트에서 해당 단어를 삭제하는 함수
    func deleteCheckedWord(word: Words) {
        if checkedData.contains(word) {
            checkedData.remove(word)
        }
    }
    
    func filterWord(typeword: String) -> [Words] {
        switch typeword {
        case "All" :
            return wordData
        case "명사" :
            return wordData.filter { word in
                (word.type == types.noun)
            }
        case "동사" :
            return wordData.filter { word in
                (word.type == types.verb)
            }
        case "형용사" :
            return wordData.filter { word in
                (word.type == types.adjective)
            }
        case "부사" :
            return wordData.filter { word in
                (word.type == types.adverb)
            }
        case "전치사" :
            return wordData.filter { word in
                (word.type == types.preposition)
            }
        case "접속사" :
            return wordData.filter { word in
                (word.type == types.conjunction)
            }
        default :
            return []
        }
    }
    
    func updateStatus(typeword: types) {
        print(typeWords)
        
        switch typeword {
        case .noun :
            typeWords[0].1 += 1
//            if var value = typeWords["명사"] {
//                value += 1
//                typeWords["명사"] = value
//            }
          
        case .verb:
            typeWords[1].1 += 1
//            if var value = typeWords["동사"] {
//                value += 1
//                typeWords["동사"] = value
//            }
            
            //typeWords["동사"]! += 1
        case .adjective :
            typeWords[2].1 += 1
//            if var value = typeWords["형용사"] {
//                value += 1
//                typeWords["형용사"] = value
//            }
        case .adverb :
            typeWords[3].1 += 1
//            if var value = typeWords["부사"] {
//                value += 1
//                typeWords["부사"] = value
//            }
        case .preposition :
            typeWords[4].1 += 1
//            if var value = typeWords["전치사"] {
//                value += 1
//                typeWords["전치사"] = value
//            }
        case .conjunction:
            typeWords[5].1 += 1
//            if var value = typeWords["접속사"] {
//                value += 1
//                typeWords["접속사"] = value
//            }
        }
    }
    
}


//var wordData : [Words] = load("words.json")
//
//var randomData : Array<Int> {
//    randomCreate()
//}
//var randomData: Array<Int> = randomCreate(index: wordData.endIndex)

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
