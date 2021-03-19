//
//  ButtonImageView.swift
//  MyMusic
//
//  Created by daito yamashita on 2021/03/15.
//

import SwiftUI

struct ButtonImageView: View {
    // 画像ファイル名
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .renderingMode(.original)
    }
}

struct ButtonImageView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImageView(imageName: "cymbal")
    }
}
