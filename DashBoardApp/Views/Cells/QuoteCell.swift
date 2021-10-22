//
//  QuoteCell.swift
//  DashBoardApp
//
//  Created by Ege Sucu on 22.10.2021.
//

import SwiftUI

struct QuoteCell: View {
    
    var quote : String
    
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(uiColor: .systemCyan))
            Text(quote)
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color(uiColor: .systemBackground))
                .padding()
            
        }
        .padding()
        .frame(width: .infinity, height: 50, alignment: .center)
    }
}

struct QuoteCell_Previews: PreviewProvider {
    static var previews: some View {
        QuoteCell(quote: "Keep Up")
    }
}
