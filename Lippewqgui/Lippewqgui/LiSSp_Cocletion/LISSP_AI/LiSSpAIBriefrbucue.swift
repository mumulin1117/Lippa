//
//  LiSSpAIBriefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpAIBriefrbucue: UIViewController {

    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
    }

   @objc func ctterBsdNoingSSIP()  {
       self.navigationController?.popViewController(animated: true)
    }

}


class LissipSecondFrbucue: UIViewController {
    
}
