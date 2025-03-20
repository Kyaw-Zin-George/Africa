//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/20/25.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playvideo(fileName: String, fileFormat: String) -> AVPlayer{
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil{
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
