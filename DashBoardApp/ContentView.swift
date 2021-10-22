//
//  ContentView.swift
//  DashBoardApp
//
//  Created by Ege Sucu on 19.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                HStack(spacing: 30) {
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color(uiColor: .systemGreen))
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("Calories")
                            .foregroundColor(.white)
                    }
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color(uiColor: .systemCyan))
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("Steps")
                            .foregroundColor(.white)
                    }
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color(uiColor: .systemBlue))
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("Weight")
                            .foregroundColor(.white)
                    }
                    
                }
                HStack(spacing: 30) {
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color(uiColor: .systemOrange))
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("Water")
                            .foregroundColor(.white)
                    }
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color(uiColor: .systemRed))
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("Sleep")
                            .foregroundColor(.white)
                    }
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color(uiColor: .systemYellow))
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("Mindfullness")
                            .foregroundColor(.white)
                    }
                    
                }
                Spacer()
                ZStack(alignment: .center) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(uiColor: .systemCyan))
                    Text("Keep Up!")
                        .font(.custom("Arial", size: 40))
                        .bold()
                        .foregroundColor(Color(uiColor: .systemBackground))
                        .padding()
                    
                }
                .padding()
                .frame(width: .infinity, height: 50, alignment: .center)
                Spacer()
            }
            .navigationTitle(Text("Dashboard"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
