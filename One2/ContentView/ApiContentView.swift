//
//  ApiContentView.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/10/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct ApiContentView : View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init(){
        
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        
        
        VStack {
            TextField("Enter city", text: self.$weatherVM.cityName){
                self.weatherVM.search()
            }.font(.custom("Arial", size: 50))
                .padding()
                .fixedSize()
            Text("Humidity :\(self.weatherVM.humidity)")
            .font(.custom("Arial", size: 40
                ))
            .foregroundColor(Color.white)
            .offset(y: 100)
            .padding()
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.purple)
//        Image("yosemite").resizable().aspectRatio(contentMode: .fit)
    }
}

#if DEBUG
struct ApiContentView_Previews : PreviewProvider {
    static var previews: some View {
        ApiContentView()
    }
}
#endif
