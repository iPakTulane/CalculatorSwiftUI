//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by iPak Tulane on 22/08/23.
//

import SwiftUI

enum CalcButton: String {
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case equal = "="
    case add = "+"
    case subtract = "-"
    case multiply = "X"
    case divide = "÷"
    case decimal = "."
    case clear = "AC"
    case negative = "±"
    case percent = "%"
}

struct ContentView: View {
    
    let buttons: [[CalcButton]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    
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
                .padding() //to make a space btw text and trailing edge
                
                //Buttons
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                            }, label: {
                                Text(item.rawValue)
                                    .font(.system(size: 32))
                                    .frame(width: 70, height: 70)
                                    .background(Color.orange)
                                    .foregroundColor(.white)
                                    .cornerRadius(35)
                            })
                        }
                    }

                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
