//
//  ContentView.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/7/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack() {
            
            Image("radiohead")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            Image("radiohead")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            Text("Hello World, Roberto Gonzalez")
//                .foregroundColor(.green)
//                .font(.title)
            Text("My fista App Swift UI")
//                .color(.blue)
            
            HStack() {
                Text("Visit ebay.com")
//                    .foregroundColor(.red)
//                    .padding()
                Text("Orange")
//                    .foregroundColor(.orange)
//                    .padding(.all)
                
                Text("Green")
//                    .foregroundColor(.green)
//                    .padding(.all)
                
            }//.padding(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
