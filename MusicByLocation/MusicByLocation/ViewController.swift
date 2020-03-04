//
//  ViewController.swift
//  MusicByLocation
//
//  Created by Hassall, Oscar (HWTA) on 27/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    let geocoder = CLGeocoder()
    
    @IBOutlet var musicRecommendations: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
    }

    @IBAction func findMusic(_ sender: Any) {
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let firstLocation = locations.first {
            geocoder.reverseGeocodeLocation(firstLocation, completionHandler: { (placemarks, error) in
                if error != nil {
                    self.musicRecommendations.text = "Could not perform lookup of location for latitude: \(firstLocation.coordinate.latitude.description)"
                } else {
                    var country = placemarks?[0].country
                    let locality = placemarks?[0].locality
                    let timeZone = placemarks?[0].timeZone
                    self.musicRecommendations.text = """
                    You are in \(country!)
                    And in the city of \(locality!)
                    Time Zone : \(timeZone!)
                    """
                    let countryPart = country?.split(separator:  " ")[0]
                    self.getArtists(country: String(countryPart!))
                }
                
            })
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        musicRecommendations.text = "Could not access user's location. Error: \(error.localizedDescription)"
    }
    
    func getArtists(country: String) -> String {
        guard let url = URL(string: "https://itunes.apple.com/search?term=\(country)&entity=musicArtist")
            else {
                print("INVALID URL")
                return "INVALID URL"
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                print(String(decoding: data, as: UTF8.self))
                if let response = self.parseJson(json: data) {
                    let names = response.results.map {
                        return $0.artistName
                    }
                    DispatchQueue.main.async {
                        self.musicRecommendations.text = names.joined(separator: ", ")
                    }
                    
                }
            }
        }.resume()
        
        return ""
    }
    
    func parseJson(json: Data) -> ArtistResponse? {
        let decoder = JSONDecoder()
        
        if let artistResponse = try?decoder.decode(ArtistResponse.self, from: json){
            return artistResponse
        } else {
            print("FAILED TO DECODE TO ARTIST RESPONSE")
            return nil
            
        }
        
       
        
    }
    
}

