//
//  Constants.swift
//  pixel-city
//
//  Created by Molnár Csaba on 2019. 04. 28..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import Foundation

let FLICKR_APIKEY = "df2ce37c19a498b612b290a954038a4c"

func flickrUrl(forApiKey key: String, withAnnotation annotion: DroppablePin, andNumberOfPhotos number: Int) -> String{
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key\(FLICKR_APIKEY)&lat=\(annotion.coordinate.latitude)&lon=\(annotion.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=rest"
}
