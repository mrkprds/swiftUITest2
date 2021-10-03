//
//  AmiiboViewModel.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/1/21.
//

import Foundation

struct AmiiboViewModel: Hashable, Identifiable{
    private let amiibo: Amiibo
    
    
    init(_ amiibo: Amiibo) {
        self.amiibo = amiibo
    }
    
    var id: UUID{
        return UUID()
    }
    
    var name: String{
        return amiibo.name ?? "n/a"
    }
    
    var series: String{
        return amiibo.series ?? "n/a"
    }
    
    var imageURL: URL?{
        return amiibo.imageURL 
    }
    
}
