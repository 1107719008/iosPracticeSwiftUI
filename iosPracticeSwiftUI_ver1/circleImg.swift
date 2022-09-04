//
//  circleImg.swift
//  iosPracticeSwiftUI_ver1
//
//  Created by 林君翰 on 2022/8/21.
//

import SwiftUI

struct circleImg: View {
    var body: some View {
        Image("airdropcat")
        
            //.resizable()
            //.scaledToFit()
        
            //use offset to control the img place
            .offset(y:80)
        
            //clip the photo
            .clipShape(Circle())
            
            //邊框
            .overlay {
                Circle().stroke(.white, lineWidth: 3)
                    
                
            }
            .frame(width: 250, height: 250)
            .shadow(radius: 6)
        
    }
}

struct circleImg_Previews: PreviewProvider {
    static var previews: some View {
        circleImg()
    }
}
