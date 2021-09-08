//
//  ContentView.swift
//  ViewModifierBootcamp
//
//  Created by Frederick Javalera on 9/1/21.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
  
  let backgroundColor: Color
  
  func body(content: Content) -> some View {
    content
      .font(.headline)
      .foregroundColor(.white)
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth: .infinity)
      .background(backgroundColor)
      .cornerRadius(10)
      .shadow(radius: 10)
      .padding()
  }
}

extension View {
  func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
    self
      .modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
  }
}

struct ContentView: View {
  var body: some View {
    VStack (spacing: 10) {
      Text("Hello, world!")
        .font(.headline)
        .withDefaultButtonFormatting()
      
      Text("Hello again!")
        .font(.subheadline)
        .withDefaultButtonFormatting(backgroundColor: .red)
      
      Text("Hey, you!")
        .font(.title)
        .withDefaultButtonFormatting(backgroundColor: .orange)
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
