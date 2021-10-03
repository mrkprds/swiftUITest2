//
//  AmiiboListCellView.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/4/21.
//

import SwiftUI
import Kingfisher

struct AmiiboListCellView: View {
    var amiibo: AmiiboViewModel?
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            KFImage(amiibo?.imageURL)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 100)
                .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
                .background(Color.gray)
                .cornerRadius(10)
                
            VStack(alignment: .leading, spacing: 5, content: {
                Text("Name: \(amiibo?.name ?? "n/a")")
                Text("Series: \(amiibo?.series ?? "n/a")")
            })
        })
    }
}

struct AmiiboListCellView_Previews: PreviewProvider {
    static var previews: some View {
        AmiiboListCellView()
    }
}
