//
//  Animation.swift
//  Gestures
//
//  Created by Fernando's Mac on 05/04/22.
//

import SwiftUI

struct AnimationView: View {
    @State private var isAnimating = false
    
    var body: some View {
        
        VStack {
            /*
            RoundedRectangle(cornerRadius: 30.0)
                //.fill(.green)
                .fill(self.isAnimating ? .green : .blue)
                //.frame(width: 200, height: 200)
                .frame(width: self.isAnimating ? 100 : 200, height: 200)
                .scaleEffect(self.isAnimating ? 0.5 : 1)
                .onAppear {
                    isAnimating.toggle()
                }
                //.animation(Animation.linear(duration: 1).repeatForever())
                //.animation(Animation.linear(duration: 1).delay(2))
                //.animation(Animation.easeIn(duration: 4).repeatForever())
                //.animation(Animation.easeOut(duration: 2).repeatForever())
                .animation(Animation.easeInOut(duration: 2).repeatForever())
            .opacity(self.isAnimating ? 0.6 : 1)
            */
        
           
            
        Image(systemName: "heart.fill")
                .foregroundColor(Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
                .frame(width: 200, height: 200)
                .font(.system(size:200))
                .scaleEffect(self.isAnimating ? 0.3 : 1)
                .onAppear {
                    isAnimating.toggle()
                }
                .animation(Animation.easeInOut(duration: 2).repeatForever())
                
        
        }
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
