//
//  AmiibosListViewModel.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/1/21.
//

import Foundation
import Combine

class AmiibosListViewModel: ObservableObject{
    @Published var amiibosViewModel = [AmiiboViewModel]()
    var cancellable: AnyCancellable?
    
    func getAmiibos(){
        cancellable = AmiiboServices.shared.getAmiibos().sink(receiveCompletion: { (error) in
            
            
            
        },receiveValue: { (amiibos) in
            self.amiibosViewModel = amiibos.characters.map{AmiiboViewModel($0)}
            print(self.amiibosViewModel)
        })
    }
}
