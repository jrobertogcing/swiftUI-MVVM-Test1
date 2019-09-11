//
//  StateTest.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/10/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

struct StateTest : View {
    
    @State private var car = "red"
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(car == "red" ? .yellow : .red)
            Button(action: getName ) {
                Text(car)
               
            }
            
        }
       
    }
    
    func getName()  {
        car = "yellow"    }
}



#if DEBUG
struct StateTest_Previews : PreviewProvider {
    static var previews: some View {
        StateTest()
    }
}
#endif
