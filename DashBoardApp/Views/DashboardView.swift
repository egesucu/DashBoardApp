//
//  DashboardView.swift
//  DashBoardApp
//
//  Created by Ege Sucu on 19.10.2021.
//

import SwiftUI

struct DashboardView: View {
    
    @StateObject var contentModel = ContentViewModel()
    
    @State var columns : [GridItem] = []
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(contentModel.dashItems) { item in
                        DashCell(color: item.color, context: item.context)
                            .lineLimit(1)
                            .padding()
                    }
                }
                .padding(.bottom,100)
                QuoteCell(quote: contentModel.quote)
            }
            .navigationTitle(Text("Dashboard"))
        }
        .onAppear {
            columns = setColumns(repeatTime: 3)
        }
    }
    
    func setColumns(repeatTime: Int) -> [GridItem]{
        var array : [GridItem] = []
        for _ in 0..<repeatTime {
            array.append(GridItem(.flexible(minimum: 80, maximum: 120)))
        }
        return array
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
