//
//  TextFieldSwiftUIView.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/8/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

struct TextFieldSwiftUIView : View {
    
    @State var name = ""
    
    func showName() -> Void {
        print(self.name)
    }
    
    var body: some View {
        VStack {
            Text(name).font(.title)
            TextField("Enter Name", text: $name).padding(12)
            Button(action: showName) {
                Text("Button Show new name")
            }
        }
    }
}

#if DEBUG
struct TextFieldSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldSwiftUIView()
    }
}
#endif
