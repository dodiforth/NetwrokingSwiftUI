//
//  ImageCache.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 23/10/2024.
//

import UIKit

class ImageCache {
    static let shared = ImageCache()
    
    private let cache = NSCache<NSString, UIImage>()
    
    private init() {  }
    
    func set(_ image: UIImage, forkey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
    
    func get(forkey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
}
