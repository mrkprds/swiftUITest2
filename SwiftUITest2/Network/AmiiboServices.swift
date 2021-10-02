//
//  AmiiboServices.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/1/21.
//

import Foundation
import Combine


class AmiiboServices{
    static let shared = AmiiboServices()
    //
    func getAmiibos() -> AnyPublisher<Amiibos, Error>{
       // let url = URL(string: "https://www.amiiboapi.com/api/amiibo/")!
        //return AnyPublisher.init(

        return URLSession.shared.dataTaskPublisher(for: EndPoint.amiibo.urlComponents().url!)
            .map{ $0.data }
            .decode(type: Amiibos.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
