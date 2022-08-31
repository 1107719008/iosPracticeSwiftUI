//
//  MainView.swift
//  iosPracticeSwiftUI_ver1
//
//  Created by 林君翰 on 2022/8/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            
            VStack {
                Text("add things").foregroundColor(.gray).fontWeight(.bold)
                Text("add 1").foregroundColor(.gray).fontWeight(.bold)
                Text("add 2").foregroundColor(.gray).fontWeight(.bold)
                
                //把文字包在navigation link中，點選文字即可跳到下一頁
                NavigationLink{SettingView()}label: {
                    Text("next").foregroundColor(.red).padding(100).font(.system(size: 40))
                }
                
                
                
            }
            
            .navigationTitle("the next page")
            .dynamicTypeSize(.large)
            
        }
        
        
        
        
        
        
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
