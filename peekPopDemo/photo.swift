//
//  photo.swift
//  peekPopDemo
//
//  Created by MAC238 on 5/4/17.
//  Copyright © 2017 tatvasoft. All rights reserved.
//

import Foundation
import UIKit

struct Photo {
    
    let caption:String
    let imageName:String
    let city:String
    init(){
        self.caption = ""
        self.imageName = ""
        self.city = ""
        
    }
    init( caption:String, imageName:String, city:String ){
        
        self.caption = caption
        self.imageName = imageName
        self.city = city
        
    }
    
}
