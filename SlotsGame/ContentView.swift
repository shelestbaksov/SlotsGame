//
//  ContentView.swift
//  SlotsGame
//
//  Created by Leysan Latypova on 03.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var creditScore = 0
    @State private var firstSlot = "apple"
    @State private var secondSlot = "apple"
    @State private var thirdSlot = "apple"
    
    private var array = ["apple", "cherry", "star"]
    
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI Slots!").font(.largeTitle)
            Spacer()
            Text("Credit:\(creditScore)").font(.headline)
            Spacer()
            HStack {
                Spacer()
                Image(firstSlot).resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(secondSlot).resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(thirdSlot).resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            Button {
                firstSlot = array.randomElement() ?? "apple"
                secondSlot = array.randomElement() ?? "apple"
                thirdSlot = array.randomElement() ?? "apple"
                
                if firstSlot == secondSlot && secondSlot == thirdSlot {
                    creditScore += 25
                }
            } label: {
                Text("Spin").padding()
                    .font(.system(size: 17, weight: .bold))
            }
            .padding([.leading, .trailing], 40)
            .background(Color.pink)
            .cornerRadius(25)
            .foregroundColor(Color.white)
            
            Spacer()
            

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
