//
//  Model.swift
//  YoutubeAPI
//
//  Created by Kareem Abdul Hafidzh on 15/03/21.
//

import Foundation

class Model {
    func getVideos() {
        let url = URL(string: Constants.API_KEY)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with:url!) { (data,respons,error) in
            if error != nil || data == nil {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch {
                
            }
        }
        
        dataTask.resume()
    }
}
