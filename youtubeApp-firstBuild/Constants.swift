//
//  Constants.swift
//  youtubeApp-firstBuild
//
//  Created by Alexey Davidenko on 30.05.2020.
//  Copyright © 2020 Alexey Davidenko. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyBeya9ZmHg7iJAeRnYKu6rK241BODhRfH8"
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
