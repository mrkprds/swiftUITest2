//
//  Amiibo.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/1/21.
//

import Foundation

struct Amiibo: Decodable {
    let name: String?
    let series: String?
    let imageURL: URL?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case series = "gameSeries"
        case imageURL = "image"
    }
    
}
