//
//  Constants.swift
//  pixel-city
//
//  Created by Molnár Csaba on 2019. 04. 28..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import Foundation

let FLICKR_APIKEY = "1575606ac8aba34c4c4dad2e37afad8c"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(FLICKR_APIKEY)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}

func flickrDescURL(forApikey key: String, withImageID imageId: String) -> String{
    return "https://api.flickr.com/services/rest/?method=flickr.photos.getInfo&api_key=\(FLICKR_APIKEY)&photo_id=\(imageId)&format=json&nojsoncallback=1"
}
