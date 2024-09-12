//
//  ContentView.swift
//  viewAnimation
//
//  Created by Berke Kesgin on 12.09.2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var isExpanded = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    Text("Bla Bla Elementler")
                        .frame(maxWidth: .infinity)
                        .frame(height: 400)
                    Spacer()
                }
                VStack {
                    Spacer()
                    VStack {
                        Map()
                            .frame(maxWidth: .infinity)
                            .frame(height: self.isExpanded ? geometry.size.height : 500)
                    }
                    .frame(width: geometry.size.width, height: self.isExpanded ? geometry.size.height : 200)
                    .background(Color.green)
                    .animation(.easeInOut(duration: 0.5), value: isExpanded)
                }
                .onTapGesture {
                    withAnimation {
                        self.isExpanded.toggle()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
