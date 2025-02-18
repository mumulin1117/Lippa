//
//  LiSSpAIBriefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpAIBriefrbucue: LissipSecondFrbucue {

    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var payAIButtonSSIp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        payAIButtonSSIp.maskLippaRoundCorner(rMakLSSIpadius: 27)
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
    }

  
    @IBAction func SSipToPaying(_ sender: Any) {
        var ssipDoimond = Int(LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] ?? "0") ?? 0
       
        if ssipDoimond < 200 {
            self.navigationController?.pushViewController(LiSSpWallwnetBucue.init(), animated: true)
            return
        }
        
       
        ssipDoimond -= 200
        LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] = "\(ssipDoimond)"
        
        let startupload = LiSSpAIUploasingefrbucue.init()
        
        self.navigationController?.pushViewController(startupload, animated: true)
        
    }
    
}


class LissipSecondFrbucue: UIViewController {
    @objc func ctterBsdNoingSSIP()  {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    func delsteSSIPONenterBottomUser(iduserSSIP:[String:String]) {
       
        
        let onlyID = iduserSSIP["ssipAccID"] ?? ""
        if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
            appledeelgate.totalvrdataSSIP = appledeelgate.totalvrdataSSIP.filter { !($0["ssipAccID"]  == onlyID) }
           
        }
        LiSSpMeBootomrbucue.FolsdwemeSSIP = LiSSpMeBootomrbucue.FolsdwemeSSIP.filter { !($0["ssipAccID"]  == onlyID) }
        
        LiSSpMeBootomrbucue.facrewemeSSIP = LiSSpMeBootomrbucue.facrewemeSSIP.filter { !($0["ssipAccID"]  == onlyID) }
        
        
        LiSSpMeaddgeBootomrbucue.cxhatArraySSIP = LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.filter { !($0.whoseSSIP["ssipAccID"]  == onlyID) }
        
        NotificationCenter.default.post(name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
    }
}
