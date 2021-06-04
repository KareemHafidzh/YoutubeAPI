//
//  Constants.swift
//  YoutubeAPI
//
//  Created by Kareem Abdul Hafidzh on 15/03/21.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyC0XV09DXBx888FCbc1RR3kFuACHzppuO0"
    static var PLAYLIST_ID = "UUxa1E_oN5pQDvUUwVSbzYqQ"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
