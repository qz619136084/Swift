//
//  ContentView.swift
//  Landmarks
//
//  Created by RebirthQ on 2022/7/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        MapView()
          .frame(height: 300)
          .ignoresSafeArea(edges: .top)
        CircleImage()
          .offset(y: -130)
          .padding(.bottom, -130.0)
          
        VStack(alignment: .leading) {
              Text("Turtle Rock")
                  .font(.title)
              HStack {
                  Text("Joshua Tree National Park")
                      .font(.subheadline)
                  Spacer()
                  Text("California")
                      .font(.subheadline)
              }
              .font(.subheadline)
              .foregroundColor(.secondary)
          
          Divider()
          
          Text("About Turtle Rock")
            .font(.title2)
          Text("Descriptive text goes here.")
          }
        .padding()
        
        Spacer()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
