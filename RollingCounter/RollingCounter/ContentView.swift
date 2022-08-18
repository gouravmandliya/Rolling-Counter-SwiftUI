//
//  ContentView.swift
//  RollingCounter
//
//  Created by GOURAVM on 18/08/22.
//

import SwiftUI

struct ContentView: View {
    @State var value : Int = 111
    var body: some View {
        NavigationView{
            VStack(spacing:20){
                RollingText(font: .system(size:50,weight: .regular), weight: .black, value: $value)
                Button("Change Value"){
                    let randomIncrement = 123...12345
                    value = value + randomIncrement.underestimatedCount
                }
            }
            .padding()
            .navigationTitle("Rolling Counter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
