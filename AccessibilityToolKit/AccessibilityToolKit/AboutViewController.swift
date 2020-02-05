//
//  AboutViewController.swift
//  AccessibilityToolKit
//
//  Created by Gabriel Ferreira on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.image.tintColor = UIColor(named: "ToolKitBackOpposite")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
