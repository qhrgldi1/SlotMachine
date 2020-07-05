//
//  SlotImage.swift
//  SlotSwiftUI
//
//  Created by JSworkstation on 2020/07/05.
//  Copyright © 2020 JSworkstation. All rights reserved.
//

import SwiftUI

struct SlotImage: View {
    
    var n: Int
    
    var body: some View {
        Image(slotImage[n])
            .resizable()
            .aspectRatio(contentMode: .fit)
            .background(Color.white.opacity(0.5))
            .cornerRadius(20)
    }
}

struct SlotImage_Previews: PreviewProvider {
    static var previews: some View {
        SlotImage(n: 0)
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
