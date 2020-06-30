//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jeff Jeong on 2020/06/30.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // 몸체
    var body: some View {
        
        HStack{
            
            MyVstackView()
            MyVstackView()
            MyVstackView()
            
        } // Hstack
            .padding(10.0)
            .background(Color.yellow)
       
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
