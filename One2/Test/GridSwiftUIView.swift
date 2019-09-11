//
//  GridSwiftUIView.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/7/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

struct GridSwiftUIView : View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            HStack {
                ForEach(0..<2) {_ in
                    Image("izta")
                    .resizable()
                    .scaledToFit()
                }
            }
        }
    }
}

#if DEBUG
struct GridSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        GridSwiftUIView()
    }
}
#endif
