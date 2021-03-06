//
//  LocationManagerDelegate.swift
//  MusicByLocation
//
//  Created by Hassall, Oscar (HWTA) on 06/03/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation
import CoreLocation

class LocationManagerDelegate: NSObject, CLLocationManagerDelegate {
    let geocoder = CLGeocoder()
    weak var vc: ViewController?
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        vc?.updateDisplay(text: "Could not access user's location. Error: \(error.localizedDescription)")
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let firstLocation = locations.first {
                geocoder.reverseGeocodeLocation(firstLocation, completionHandler: { (placemarks, error) in
                    if error != nil {
                        self.vc?.updateDisplay(text: "Could not perform lookup of location for latitude: \(firstLocation.coordinate.latitude.description)")
                    } else {
                        if let firstPlacemark = placemarks?[0] {
                            self.vc?.updateArtistsByLocation(text: firstPlacemark.country)
                        }
                    }
                })
        }
    }
}
