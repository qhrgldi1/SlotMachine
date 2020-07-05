//
//  ContentView.swift
//  SlotSwiftUI
//
//  Created by JSworkstation on 2020/07/05.
//  Copyright © 2020 JSworkstation. All rights reserved.
//

import SwiftUI

let slotImage: [String] = ["apple", "cherry", "star"]

struct ContentView: View {
    
    @State private var imageNum: [Int] = [0, 1, 2]
    @State private var credits = 1000
    
    private var betAmount = 5
    
    var body: some View {
        ZStack {
            FirstBackground()
            SecondBackground()
            
            VStack {
                Spacer()
                title
                
                Spacer()
                credit
                
                Spacer()
                slotMachineImage
                
                Spacer()
                spinButton
                
                Spacer()
            }
        }
    }
}

//MARK: - extension Content View

extension ContentView {
    var title: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(Color.yellow)
            Text("SwiftUI Slots")
                .foregroundColor(.white)
                .bold()
            Image(systemName: "star.fill")
                .foregroundColor(Color.yellow)
        }.scaleEffect(2)
    }
    
    var credit: some View {
        Text("Credits: \(credits)")
            .padding(.horizontal, 5)
            .padding(.vertical, 10)
            .background(Color.white.opacity(0.5))
            .cornerRadius(20)
    }
    
    var slotMachineImage: some View {
        HStack {
            Spacer()
            
            SlotImage(n: imageNum[0])
            SlotImage(n: imageNum[1])
            SlotImage(n: imageNum[2])

            Spacer()
        }
    }
    
    var spinButton: some View {
        Button(action: {
            for i in 0..<slotImage.count {
                self.imageNum[i] = Int.random(in: 0..<slotImage.count)
            }
            
            if self.imageNum[0] == self.imageNum[1] && self.imageNum[1] == self.imageNum[2] {
                self.credits += self.betAmount * 10
            } else {
                self.credits -= self.betAmount
            }

        }) {
            Text("Spin")
                .bold()
                .foregroundColor(.white)
                .padding(.vertical, 10)
                .padding(.horizontal, 40)
                .background(Color.pink)
                .cornerRadius(30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


