//
//  DashItem.swift
//  DashBoardApp
//
//  Created by Ege Sucu on 22.10.2021.
//

import Foundation
import SwiftUI

struct DashItem: Identifiable{
    
    var id = UUID().uuidString
    var context: String
    var color: Color
    
}
