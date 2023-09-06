//
//  ContentView.swift
//  couter
//
//  Created by Apple on 2022/8/6.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int=0
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .fill(Color(hue: 0.159, saturation: 1.0, brightness: 1.0))
                Button("increment") {
                    self.count += 1
                }
            }
            .frame(width: 100.0, height: 100.0)
            VStack(alignment: .leading, spacing: 4){
                Text("Count:\(count)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.533, saturation: 1.0, brightness: 1.0))
                Text("Candy.2022")
                    .foregroundColor(Color.blue)
                
        }
           
    }
}

    }

