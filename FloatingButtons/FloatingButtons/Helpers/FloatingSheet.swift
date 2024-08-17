//
//  FloatingSheet.swift
//  FloatingButtons
//
//  Created by Manyuchi, Carrington C on 2024/08/17.
//

import SwiftUI

extension View {
    @ViewBuilder
    func floatingBottomSheet<Content: View>(isPresented: Binding<Bool>,
                                            onDismiss: @escaping () -> () = {},
                                            @ViewBuilder content: @escaping () -> Content) -> some View {
        self
            .sheet(isPresented: isPresented, onDismiss: onDismiss, content: {
            content()
        })
        
    }
}

#Preview {
    ContentView()
}
