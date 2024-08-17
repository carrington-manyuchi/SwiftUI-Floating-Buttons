//
//  ContentView.swift
//  FloatingButtons
//
//  Created by Manyuchi, Carrington C on 2024/08/17.
//

import SwiftUI

struct ContentView: View {
    
    /// View Properties
    
    @State private var showSheet: Bool = false
    
    
    var body: some View {
        VStack {
            NavigationStack {
                VStack {
                    Button("Show Sheet") {
                        showSheet.toggle()
                    }
                }
                .navigationTitle("Floating Bottom Sheet")
                
            }
            
        }
        
        .padding()
    }
}

struct SheetView: View {
    var title: String
    var content: String
    var image: Config
    var button1: Config
    var button2: Config
        
    var body: some View {
        VStack(alignment: .center, spacing: 15, content: {
            Image(systemName:  image.content)
                .font(.title)
                .foregroundStyle(image.foreground)
                .frame(width: 65, height: 65, alignment: .center)
                .background(image.tint.gradient, in: .circle)
            
            Text(title)
                .font(.callout)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .foregroundStyle(.gray)
        })
    }

}


struct Config {
    var content: String
    var tint: Color
    var foreground: Color
}

#Preview {
    ContentView()
}
