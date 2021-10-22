//
//  DashCell.swift
//  DashBoardApp
//
//  Created by Ege Sucu on 22.10.2021.
//

import SwiftUI

struct DashCell: View {
    
    var color: Color
    var context: String
    
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 9)
                .fill(color)
                .shadow(radius: 6)
            Text(context)
                .font(.title)
                .foregroundColor(.white)
                .bold()
                .minimumScaleFactor(0.3)
                .padding()
        }
        
        
    }
}

struct DashCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DashCell(color: .red,context: "Calories")
                .frame(width: 120, height: 120, alignment: .center)
            DashCell(color: .red,context: "Calories")
                .frame(width: 150, height: 150, alignment: .center)
                .preferredColorScheme(.dark)
            DashCell(color: Color(uiColor: .systemOrange), context: "Calories")
                .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
                .frame(width: 150, height: 150, alignment: .center)
                
        }
        .previewLayout(.sizeThatFits)
        
        .padding()
    }
}
