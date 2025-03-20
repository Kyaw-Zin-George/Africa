//
//  VideoListItem.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/20/25.
//

import SwiftUI

struct VideoListItemView: View {
    let video : Video
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }// ZStack
            VStack(alignment: .leading,spacing: 10) {
                Text(video.name)
                    .font(.title2.weight(.heavy))
                    .foregroundStyle(.accent)
                
                Text(video.headline)
                    .font(.footnote.weight(.medium))
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .foregroundStyle(.secondary)
            }//Vstack
        }//HStack
    }
}

#Preview {
    let videos : [Video] = Bundle.main.decode("videos.json")
    VideoListItemView(video: videos[0])
}
