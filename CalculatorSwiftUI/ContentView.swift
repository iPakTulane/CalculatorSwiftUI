//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by iPak Tulane on 22/08/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                //Text display
                HStack { //to display text horizontally
                    Spacer() //push text to the right hand side
                    Text("0")
                        .bold()
                        .font(.system(size: 64))
                        .foregroundColor(.white)
                }
                .padding() //to make room btw text and trailing edge
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
