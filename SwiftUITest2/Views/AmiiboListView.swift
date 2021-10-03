//
//  ContentVAmiiboListViewiew.swift
//  SwiftUITest2
//
//  Created by markpatrick on 10/1/21.
//

import SwiftUI
import Combine
import Kingfisher

struct AmiiboListView: View {
    @ObservedObject private var viewModel = AmiibosListViewModel()
    
    var body: some View {
        NavigationView{
            
            List(viewModel.amiibosViewModel, id: \.id){ amiiboViewModel in
                NavigationLink(destination: AmiiboImageView(amiibo: amiiboViewModel), label: {
                    AmiiboListCellView(amiibo: amiiboViewModel)
                })
            }
            .navigationTitle("Amiibos List")
        }.onAppear{
            viewModel.getAmiibos()
        }
    }
}

struct AmiiboListView_Previews: PreviewProvider {
    static var previews: some View {
        AmiiboListView()
    }
}
