//
//  ContentViewModel.swift
//  DashBoardApp
//
//  Created by Ege Sucu on 22.10.2021.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject{
    
    @Published var dashItems : [DashItem] = [
        DashItem(context: "Calories", color: Color(uiColor: .systemGreen)),
        DashItem(context: "Steps", color: Color(uiColor: .systemCyan)),
        DashItem(context: "Weight", color: Color(uiColor: .systemBlue)),
        DashItem(context: "Water", color: Color(uiColor: .systemOrange)),
        DashItem(context: "Sleep", color: Color(uiColor: .systemRed)),
        DashItem(context: "Mindfullness", color: Color(uiColor: .systemYellow))
    ]
    @Published var quote = "Keep Up!"
    
    
}
