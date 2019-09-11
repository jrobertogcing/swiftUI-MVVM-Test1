//
//  FancyContentView.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/8/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

struct FancyContentView : View {
    //This one only with this version of Xcode
    //@ObservedObject
    @ObservedObject var fancyTimer = FancyTimer()
    
    var body: some View {
        Text("\(self.fancyTimer.value)")
        .font(.largeTitle)
    }
}

#if DEBUG
struct FancyContentView_Previews : PreviewProvider {
    static var previews: some View {
        FancyContentView()
    }
}
#endif
