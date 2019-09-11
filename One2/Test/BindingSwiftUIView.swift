//
//  BindingSwiftUIView.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/8/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

struct BindingSwiftUIView : View {
    
    let episode = Episode(name: "Casa de papel", track: "Episodio 3")
    
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            Text(self.episode.name)
                .font(.largeTitle)
                .foregroundColor(self.isPlaying ? .purple: .red)
            Text(self.episode.track)
                .foregroundColor(.secondary)
            PlayButton(isPlaying: $isPlaying)
                .padding(12)
        }
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        
        VStack {
            Button(action: { self.changeColor()
            }){
                Text("Play")
            }
            
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
        }
        
    }
    
    func changeColor() {
        self.isPlaying.toggle()
    }
}

#if DEBUG
struct BindingSwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        BindingSwiftUIView()
    }
}
#endif
