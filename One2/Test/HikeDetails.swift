//
//  HikeDetails.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/7/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State var zoomed = false
    var body: some View {
        
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
//                .tapAction {
//                    withAnimation(.basic(duration:1)){
//                        self.zoomed.toggle()
//                    }
            //}
            Text(hike.name)
                .font(.title)
                .foregroundColor(.orange)
        }.navigationBarTitle(Text(hike.name),displayMode: .inline)
    }
}

#if DEBUG
struct HikeDetail_Previews : PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike.all()[0])
    }
}
#endif
