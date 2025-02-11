//
//  LiSSpPostColtomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpPostColtomrbucue: UIViewController {

    @IBOutlet weak var takeColIconLIPSS: UIButton!
    
    @IBOutlet weak var sedescribitTextView: UITextView!
    
    
    @IBOutlet weak var sureaddINgLIPSS: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        takeColIconLIPSS.layer.cornerRadius = 24
        takeColIconLIPSS.layer.masksToBounds = true
        
        sedescribitTextView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        
        sureaddINgLIPSS.layer.cornerRadius = 26
        sureaddINgLIPSS.layer.masksToBounds = true
        
    }



}
