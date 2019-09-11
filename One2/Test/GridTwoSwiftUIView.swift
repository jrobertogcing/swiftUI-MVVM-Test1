//
//  GridTwoSwiftUIView.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/7/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI


struct GridTwoSwiftUIView : View {
    
    let hike = Hike.all()
    
    var body: some View {
        
        let chunkedHikes = hike.chunked(into: 2)
        return List(0..<chunkedHikes.count) { index in
            
            HStack {
                ForEach(chunkedHikes[index]){ hike in
                    Image(hike.imageURL)
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

#if DEBUG
struct GridTwoSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        GridTwoSwiftUIView()
    }
}
#endif
