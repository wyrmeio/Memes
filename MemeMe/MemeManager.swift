//
//  MemeManager.swift
//  MemeMe
//
//  Created by Idris Jafer on 6/4/15.
//  Copyright (c) 2015 Idris Jafer. All rights reserved.
//

import Foundation

// Class used to create a shared meme manager
class MemeManager: NSObject {
    
    
    class var sharedInstance: MemeManager {
        struct Static {
            static var instance: MemeManager?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = MemeManager()
        }
        
        return Static.instance!
    }
    
    
    // Shared model representing the list of sent memes
    var memes = [Meme]()
    
    func deleteMemeAtIndex(index: Int) {
        memes.removeAtIndex(index)
    }
    
    func appendMeme(meme: Meme) {
        memes.append(meme)
    }
}