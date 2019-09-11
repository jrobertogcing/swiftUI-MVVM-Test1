//
//  HikeContentView.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/7/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

let hikes = Hike.all()

struct HikeContentView : View {
    var body: some View {
        
        NavigationView {
            List(hikes){ hike in
                HikeCell(hike: hike)
            }
            .navigationBarTitle("Hikes Two")
        }
    }
}

#if DEBUG
struct HikeContentView_Previews : PreviewProvider {
    static var previews: some View {
        HikeContentView()
    }
}
#endif

struct HikeCell : View {
    
    let hike: Hike
    var body: some View {
        return NavigationLink(destination: HikeDetail(hike: hike)){
            HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 50, height: 50)
                //.cornerRadius(100)
                .clipShape(Circle())

                VStack(alignment: .leading) {
                    Text(hike.name)
                    Text(String(format: "%2", hike.miles))
                }
            }
        }
        }
    }
