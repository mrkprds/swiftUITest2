//
//  AmiiboImageView.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/4/21.
//

import SwiftUI
import Kingfisher

struct AmiiboImageView: View {
    var amiibo: AmiiboViewModel?
    
    var body: some View {
        KFImage(amiibo?.imageURL)
    }
}

struct AmiiboImageView_Previews: PreviewProvider {
    static var previews: some View {
        AmiiboImageView()
    }
}
