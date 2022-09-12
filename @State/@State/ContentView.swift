//
//  ContentView.swift
//  @State
//
//  Created by Bishowjit Ray on 12/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor: Color = Color.green
    @State var myTitle:String = "My Title"
    @State var count: Int = 0
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            VStack(spacing:20){
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.title)
                
                
                HStack(spacing:20){
                    Button("Button:1"){
                    
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    .font(.largeTitle)
                    .background(Color.purple)
                    .padding()
                    .padding(.horizontal, 10)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    Button("Button:2"){
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 4
                    }
                    .font(.largeTitle)
                    .background(Color.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                }
                
            }
            .foregroundColor(Color.white)
            
    }
  }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
