//
//  FancyTimer.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/8/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

//This one only with this version of Xcode
//@ObservableObject
//class FancyTimer: BindableObject {
class FancyTimer: ObservableObject {

    //This one only with this version of Xcode
//    let didChange = PassthroughSubject<FancyTimer, Never>()

    @Published var value = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
            self.value += 1
            //This one only with this version of Xcode
//            self.didChange.send(self)

        }
    }
    
}
