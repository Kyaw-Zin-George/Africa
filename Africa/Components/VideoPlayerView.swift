//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/20/25.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected: String
    var videoTitle: String
    var body: some View {
        VStack {
            VideoPlayer(player: playvideo(fileName: videoSelected, fileFormat: "mp4")){
                //Text(videoTitle)
                
            }.overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top,6)
                    .padding(.horizontal,8)
                ,alignment: .topLeading
            )
        }
        .tint(.accent)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
