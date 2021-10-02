//
//  EndPoint.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/1/21.
//

import Foundation

enum EndPoint: String{
    private var root: String{
        return "amiiboapi.com"
    }
    
    case amiibo = "/api/amiibo"
    
    
    
    func urlComponents(withQueryItems queryItems: [URLQueryItem]? = nil) -> URLComponents{
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = root
        urlComponents.path = self.rawValue
        urlComponents.queryItems = queryItems
        
        print(urlComponents.string)
        return urlComponents
    }
    
//    func url() -> URL{
//        return URL(str: "https://www.amiiboapi.com/api/amiibo/")!
//    }
}
