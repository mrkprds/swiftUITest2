//
//  Amiibo.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/1/21.
//

import Foundation

struct Amiibo: Decodable, Hashable, Identifiable {
    let name: String?
    let series: String?
    let imageURL: URL?
    let id = UUID()
    
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case series = "gameSeries"
        case imageURL = "image"
    }
    
}
