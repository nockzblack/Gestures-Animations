//
//  ContentView.swift
//  Gestures
//
//  Created by Fernando's Mac on 05/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*
        GeometryReader { proxi in
            ZStack {
                CardView(proxy: proxi)
            }
            
        }
         */
        AnimationView()
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
