//
//  VideoListView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/17/25.
//

import SwiftUI

struct VideoListView: View {
    @State private var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical,10)
                }//loop
            }//list
            .listStyle(InsetListStyle())
            .navigationBarTitle("Videos",displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button{
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
    }
}

#Preview {
    
    VideoListView()
}
