//
//  ITunesAdaptor.swift
//  MusicByLocation
//
//  Created by Hassall, Oscar (HWTA) on 06/03/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class ITunesAdaptor {
    let baseURL = "https://itunes.apple.com"
    let decoder = JSONDecoder()
    
    func getArtists(search: String?, completion: @escaping ([Artist]?) -> Void) {
        guard let search = search else { return }
        
        let path = "/term=\(search)&entity=musicArtist".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        
        guard let url = URL(string: baseURL + path) else {
            print("INVALID URL")
            completion(nil)
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                if let response = self.parseJson(json: data) {
                    completion(response.results)
                    
                }
            }
        }.resume()
    
    }
    
    func parseJson(json: Data) -> ArtistResponse? {
        if let artistResponse = try?decoder.decode(ArtistResponse.self, from: json){
            return artistResponse
        } else {
            print("FAILED TO DECODE TO ARTIST RESPONSE")
            return nil
            
        }
        
       
        
    }
    
}
