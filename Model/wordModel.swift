//
//  wordModel.swift
//  NC1
//
//  Created by rbwo on 2022/05/02.
//

import Foundation

enum types: String, Codable {
    case preposition
    case noun
    case verb
    case conjunction
    case adverb
    case adjective

    func description() -> String {
        switch self {
        case .preposition :
            return "전치사"
        case .noun :
            return "명사"
        case .adjective :
            return "형용사"
        case .adverb :
            return "부사"
        case .conjunction :
            return "접속사"
        case .verb :
            return "동사"
        }
    }
    
}

struct Words: Hashable, Codable, Identifiable{
    var id: Int
    var title: String
    var means: String
    var isChecked: Bool
    var type: types
}


