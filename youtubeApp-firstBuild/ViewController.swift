//
//  ViewController.swift
//  youtubeApp-firstBuild
//
//  Created by Alexey Davidenko on 20.05.2020.
//  Copyright © 2020 Alexey Davidenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

