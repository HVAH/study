//
//  ContentView.swift
//  study
//
//  Created by hvah on 2020/11/23.
//  Copyright © 2020 hvah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ZStack(content: {
            RoundedRectangle(cornerRadius: 10.0)
            Text("Hello there, World!")
        })
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        return HStack{
            
            ForEach(0..<4, content: {index in
                CardeView()
            })
            
        }
        
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct CardeView: View {
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
            Text("👻")
        }
    }
}

func s() -> String {
    let s = "sss"
    return s
}

