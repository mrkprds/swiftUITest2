//
//  Amiibos.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/1/21.
//

import Foundation

struct Amiibos: Decodable, Hashable {
    let characters: [Amiibo]
    
    enum CodingKeys: String, CodingKey {
        case characters = "amiibo"
    }
}
