//
//  Model.swift
//  youtubeApp-firstBuild
//
//  Created by Alexey Davidenko on 30.05.2020.
//  Copyright © 2020 Alexey Davidenko. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos() {
        
        // Create an URL object
        let url = URL(string: Constants.API_URL)
        
        guard url !=  nil else{
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, responce, error) in
            
            //Check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                
                //Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
            
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch {
                
            }
        }
        
        //Kick off the task
        dataTask.resume()
        
        
    }
    
}
