//
//  InfoPage.swift
//  iosPracticeSwiftUI_ver1
//
//  Created by 林君翰 on 2022/9/5.
//

import SwiftUI

struct InfoPage: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Image("maroon51")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.trailing, 40)
                VStack {
                    Text("first album")
                        .font(.title)
                    Text("maroon5")
                }
                
            }.padding()
            HStack {
                Image("maroon52")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.trailing, 40)
                    //.rotationEffect(.degrees(22))
                VStack {
                    Text("second album")
                        .font(.title)
                    Text("maroon5")
                }
            }.padding()
            HStack {
                Image("maroon53")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.trailing, 40)
                VStack {
                    Text("third album")
                        .font(.title)
                    Text("maroon5")
                }
                
            }.padding()
            
            
        }.frame(width: 400, height: 500)
            .background(Color.blue)
       
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
