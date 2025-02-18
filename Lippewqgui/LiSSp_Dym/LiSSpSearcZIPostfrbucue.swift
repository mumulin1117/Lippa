//
//  LiSSpSearcZIPostfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpSearcZIPostfrbucue:  LissipSecondFrbucue,UITextFieldDelegate {
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var serachBackWhiteSSIp: UIView!
    
    
    @IBOutlet weak var inserTextSSIpView: UITextField!
    
    @IBOutlet weak var empholderSSIP: UIImageView!
    
    @IBOutlet weak var empholdercontentSSIP: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        empholderSSIP.isHidden = true
        ssuipCreaNet()
    }
    private func ssuipCreaNet() {
        serachBackWhiteSSIp.maskLippaRoundCorner(rMakLSSIpadius: 27.5)
        inserTextSSIpView.returnKeyType = .search
        inserTextSSIpView.delegate = self
    }
    
    private func ssuitreatNet() {
        AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
        self.empholdercontentSSIP.text =  "Sorry, unable to load the contents"
        self.empholderSSIP.isHidden = false
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let contextSSip = textField.text ,contextSSip.isEmpty == false{
            empholdercontentSSIP.text = "Searching..."
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Searching....", loaingShowView: self.view)
            self.performBlockAfterDelayINSSIP(secondsSSIP: 2.5) {
                self.ssuitreatNet()
            }
        }
        
        
        return true
    }

}
