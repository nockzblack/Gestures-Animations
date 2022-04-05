//
//  CardView.swift
//  Gestures
//
//  Created by Fernando's Mac on 05/04/22.
//

import SwiftUI

struct CardView: View {
    @GestureState var translation: CGSize = .zero
    @GestureState var degrees: Double = 0
    
    let proxy : GeometryProxy
    
    var body: some View {
        let dragGesture = DragGesture()
            .updating($translation) { (value, state, _) in
                state = value.translation
            }
            .updating($degrees) { (value, state, _) in
                state = value.translation.width > 0 ? 2 : -2
            }
        
        Rectangle()
            .overlay(
                ZStack {
                    Image("vader")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                    VStack(alignment: .leading) {
                        Text("Gesture Image")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                        Text("An example of gesture")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }
                    .position(
                        x: proxy.frame(in: .local).minX + 75,
                        y: proxy.frame(in: .local).maxY - 50)
                }
            )
            .cornerRadius(10)
            .frame(
                maxWidth: proxy.size.width - 28,
                maxHeight: proxy.size.height * 0.8)
            .position(x: proxy.frame(in: .global).midX,
                      y: proxy.frame(in: .local).midY - 30)
            .animation(.interactiveSpring())
            .offset(x: translation.width, y:0)
            .gesture(dragGesture)
            .rotationEffect(.degrees(degrees))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            CardView(proxy: proxy)
        }
    }
}
