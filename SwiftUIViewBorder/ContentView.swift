//
//  ContentView.swift
//  SwiftUIViewBorder
//
//  Created by Manjit on 26/05/2020.
//  Copyright © 2020 SwiftUIViewBorder. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:30){
            VStack(spacing:10) {
                Text("Border Using default Border")
                VStack(spacing:5){
                    Text("Border Default ").fontWeight(.heavy).padding().border(Color.red)
                       
                    Text("border with costom value").fontWeight(.heavy).padding().border(Color.red,width: 10)
                }
            }
            VStack(spacing:10) {
                Text("Border Using overlay")
                VStack(spacing:10){
                    Text("Border Default ").fontWeight(.heavy).padding().overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.pink, lineWidth:2)).shadow(radius: 5)
                       
                  Text("border with dash")
                    .font(.largeTitle)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.red,style: StrokeStyle(lineWidth: 4, dash: [15.0]))
                    )
                }
            }
            }.padding().border(Color.green, width: 8).shadow(radius: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
