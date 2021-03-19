//
//  ContentView.swift
//  MyMusic
//
//  Created by daito yamashita on 2021/03/15.
//

import SwiftUI

struct ContentView: View {
    
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            // 背景画像を指定する
            Image("background")
                // リサイズする
                .resizable()
                //画面いっぱいになるようにセーフエリア外までいっぱいになるように指定
                .edgesIgnoringSafeArea(.all)
                //アスペクト比（縦横比）を維持して短辺基準に収まるようにする
                .aspectRatio(contentMode: .fill)
            
            HStack {
                Button(action: {
                    soundPlayer.cymbalPlay()
                }) {
                    ButtonImageView(imageName: "cymbal")
                }
                
                Button(action: {
                    soundPlayer.guitarPlay()
                }) {
                    ButtonImageView(imageName: "guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
