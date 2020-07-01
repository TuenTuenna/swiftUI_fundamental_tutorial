//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jeff Jeong on 2020/06/30.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //
    @State var isActivated: Bool = false
    
    // 몸체
    var body: some View {
        NavigationView{
            
        VStack{
            HStack{
                   MyVstackView()
                   MyVstackView()
                   MyVstackView()
               } // Hstack
               .padding(isActivated ? 50.0 : 10)
                   .background(isActivated ? Color.yellow : Color.black)
                   .onTapGesture {
                       withAnimation{
                           self.isActivated.toggle()
                       }

               }
            
                NavigationLink(destination:
                    MyTextView(index: 1)
                     ) {
                            Text("네비게이션")
                                .font(.system(size: 50))
                               .foregroundColor(.white)
                               .fontWeight(.bold)
                               .padding()
                               .background(Color.orange)
                               .cornerRadius(30)
                } .padding(.top, 50)
            }
        
        }
       
    }
}

struct MyListView: View {
    var body: some View {

        NavigationView{
            List(0..<4){ index in
                NavigationLink(destination: MyTextView(index: index) ){
                    Text("아이템 \(index+1)")
                }
            }
        }
        .navigationBarTitle("네비게이션", displayMode: .large)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    
    }
}

struct MyTextView: View {
    
    @State var index: Int
    
    let colors = [
        Color.red,
        Color.blue,
        Color.orange,
        Color.green
    ]
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index + 1)")
                .font(.system(size: 30))
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            
            Spacer()
        }
        .background(colors[index])
            .onTapGesture {
                if(self.index == self.colors.count - 1){
                    self.index = 0
                } else {
                    self.index += 1
                }
        }
            
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
