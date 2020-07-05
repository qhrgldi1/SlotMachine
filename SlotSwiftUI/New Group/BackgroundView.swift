//
//  BackgroundView.swift
//  SlotSwiftUI
//
//  Created by JSworkstation on 2020/07/05.
//  Copyright © 2020 JSworkstation. All rights reserved.
//

import SwiftUI

struct FirstBackground: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
            .edgesIgnoringSafeArea(.all)
    }
}

struct SecondBackground: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
            .rotationEffect(Angle(degrees: 45))
            .edgesIgnoringSafeArea(.all)
    }
}

