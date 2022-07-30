//
//  ContentView.swift
//  Myjanken
//
//  Created by 小平裕 on 2022/07/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします！")
                
                .padding(.bottom)
            } else if answerNumber == 1 {
                // グー画像を設定
                Image("gu")
                // リサイズの設定
                    .resizable()
                // アスペクト比の設定
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("グー")
                .padding(.bottom)
                
            } else if answerNumber == 2 {
                // チョキ画像を設定
                Image("choki")
                // リサイズの設定
                    .resizable()
                // アスペクト比の設定
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("チョキ")
                .padding(.bottom)
            } else {
                // パー画像を設定
                Image("pa")
                // リサイズの設定
                    .resizable()
                // アスペクト比の設定
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            

            
            Button(action: {
                var newAnswerNumber = 0
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
                
            }) {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
    }
} // Contentview ここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
