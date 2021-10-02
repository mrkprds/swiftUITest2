//
//  ContentVAmiiboListViewiew.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/1/21.
//

import SwiftUI
import Combine

struct AmiiboListView: View {
    private let viewModel = AmiibosListViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .onAppear{
                viewModel.getAmiibos()
            }
            .padding()
    }
}

struct AmiiboListView_Previews: PreviewProvider {
    static var previews: some View {
        AmiiboListView()
    }
}
