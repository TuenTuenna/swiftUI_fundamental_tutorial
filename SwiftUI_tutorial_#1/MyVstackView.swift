//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jeff Jeong on 2020/06/30.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI


struct MyVstackView: View {
    
    var body: some View {
        VStack {
             Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
             Text("2!")
               .fontWeight(.bold)
                .font(.system(size: 60))
             Text("3!")
              .fontWeight(.bold)
                .font(.system(size: 60))
        } // Vstack
            .background(Color.red)
    }
}

// 보여주는 용도
//struct MyVstackView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyVstackView()
//    }
//}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
