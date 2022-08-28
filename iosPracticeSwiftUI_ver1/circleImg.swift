//
//  circleImg.swift
//  iosPracticeSwiftUI_ver1
//
//  Created by 林君翰 on 2022/8/21.
//

import SwiftUI

struct circleImg: View {
    var body: some View {
        Image("thumb-jpg")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 3)
                
            }
            .shadow(radius: 6)
        
    }
}

struct circleImg_Previews: PreviewProvider {
    static var previews: some View {
        circleImg()
    }
}
