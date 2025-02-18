//
//  LiSSpCommwnentsingefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
/// 评论
class LiSSpCommwnentsingefrbucue:  LissipSecondFrbucue {
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    @IBOutlet weak var sendcommCOntetnSSIP: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIPDissmiss), for: .touchUpInside)

    }

   @objc func ctterBsdNoingSSIPDissmiss()  {
       self.dismiss(animated: true)
    }

    @IBAction func syresendSSIp(_ sender: UIButton) {
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Sending.....", loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 0.5) {
            AppDelegate.showSSIPSuccessTips(acccusString: "Send successful, your comment will be displayed after review")
            
            self.navigationController?.popViewController(animated: true)
        }
    }
}
