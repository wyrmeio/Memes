//
//  Meme.swift
//  MemeMe
//
//  Created by Idris Jafer on 6/4/15.
//  Copyright (c) 2015 Idris Jafer. All rights reserved.
//

import Foundation
import UIKit


// Class that represents a meme with a image, top and bottom texts
class Meme: NSObject {
    
    // Meme elements
    var top: String
    var bottom: String
    var image: UIImage
    
    // The actual meme image. It was built using the meme elemets
    var memedImage: UIImage
    
    init(top: String, bottom: String, image: UIImage, memedImage: UIImage) {
        self.top = top
        self.bottom = bottom
        self.image = image
        self.memedImage = memedImage
    }
}