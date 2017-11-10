//
//  ViewController.swift
//  UIImageSample
//
//  Created by other on 2017/11/06.
//  Copyright © 2017 TakahiroTsuchiya. All rights reserved.
//

import UIKit
import AlamofireImage

class ViewController: UIViewController {

    //MARKS: Properties
    @IBOutlet weak var imageView: CustomImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let url = URL(string: "https://www.nasa.gov/sites/default/files/styles/image_card_4x3_ratio/public/thumbnails/image/afrc2017-0271-13.jpg")!
        let placeholderImage = UIImage(named: "dummy-icon")!

        self.imageView.af_setImage(withURL: url, placeholderImage: placeholderImage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

