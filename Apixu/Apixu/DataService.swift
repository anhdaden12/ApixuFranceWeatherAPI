//
//  DataService.swift
//  Apixu
//
//  Created by Ngoc on 7/1/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit


class DataService {
    
    static var shareIntance: DataService = DataService()
    
    func getWeather(completedHandle: @escaping(Weather) -> Void) {
        guard let url = URL(string: "http://api.apixu.com/v1/current.json?key=0cdf7bbccfb6472bb6a23742192606&q=Paris") else {return}
        
        let urlRequest = URLRequest(url: url)
        
       let downloadTask = URLSession.shared.dataTask(with: urlRequest, completionHandler: {(data, reponse, error) in
        guard let aData = data else {return}
        do {
            let getData = try JSONDecoder().decode(Weather.self, from: aData)
          // print(getData)
            DispatchQueue.main.async {
                completedHandle(getData)
            }
        } catch {
            print(error)
        }
       })
        downloadTask.resume()
    }
}
