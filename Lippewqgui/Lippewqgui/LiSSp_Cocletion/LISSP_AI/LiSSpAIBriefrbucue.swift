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
        ssuipCreaNet(ssipDoimond: ssipDoimond)
        
    }
    
    
    private func ssuipCreaNet(ssipDoimond:Int) {
       
        LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] = "\(ssipDoimond)"
        
        let startupload = LiSSpAIUploasingefrbucue.init()
        
        self.navigationController?.pushViewController(startupload, animated: true)
    }
    
   
    
}


class LissipSecondFrbucue: UIViewController {
    var pickerSSIPVC:UIImagePickerController?
    
    func showingBloakjPickVC(withBloackID:String)  {
        let normailAreport = UIAlertController(title: "Report OR Black", message:nil, preferredStyle: .actionSheet)
        
        normailAreport.addAction(UIAlertAction(title: "Black", style: .default, handler: { alertSSIP in
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Requesting...", loaingShowView: self.view)
            self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
               
                self.delsteSSIPONenterBottomUser(iduserSSIP: withBloackID )
                
                AppDelegate.showSSIPSuccessTips(acccusString: "Black successful!")
            }
           
        }))
       
        normailAreport.addAction(UIAlertAction(title: "Report", style: .default, handler: { alertSSIP in
            self.shingseReportUserOriginReport()
           
        }))
        normailAreport.addAction(UIAlertAction(title: "cancel", style: .default))
        
        self.present(normailAreport, animated: true)
    }
    @objc func ctterBsdNoingSSIP()  {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    private func delsteSSIPONenterBottomUser(iduserSSIP:String) {
       
        
       
        if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
            
            for (juh,itue) in appledeelgate.totalvrdataSSIP.enumerated() {
                if itue["ssipAccID"] == iduserSSIP {
                    appledeelgate.totalvrdataSSIP.remove(at: juh)
                }
            }
//            appledeelgate.totalvrdataSSIP = appledeelgate.totalvrdataSSIP.filter { $0["ssipAccID"]  != iduserSSIP }
            print(appledeelgate.totalvrdataSSIP.count)
        }
        LiSSpMeBootomrbucue.FolsdwemeSSIP = LiSSpMeBootomrbucue.FolsdwemeSSIP.filter { !($0["ssipAccID"]  == iduserSSIP) }
        sHUkosuitreatNet(iduserSSIP: iduserSSIP)
        
    }
    private func sHUkosuitreatNet(iduserSSIP:String) {
        LiSSpMeBootomrbucue.facrewemeSSIP = LiSSpMeBootomrbucue.facrewemeSSIP.filter { !($0["ssipAccID"]  == iduserSSIP) }
        
        
        LiSSpMeaddgeBootomrbucue.cxhatArraySSIP = LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.filter { !($0.whoseSSIP["ssipAccID"]  == iduserSSIP) }
        
        NotificationCenter.default.post(name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
    }
    
     func openMineTakeSSIPCamera() {
           
         pickerSSIPVC = UIImagePickerController()
         
         
         pickerSSIPVC?.sourceType = .camera
        present(pickerSSIPVC!, animated: true, completion: nil)
    }
    
    
    
    func shingseReportUserOriginReport()  {
        
        let normailAreport = UIAlertController(title: "Report User Reason", message:nil, preferredStyle: .actionSheet)
        let reasonsdonin = ["Offensive Language","Inaccuracy","Privacy Violation","Spam or Irrelevance"]
        
        for item in reasonsdonin {
            normailAreport.addAction(UIAlertAction(title: item, style: .default, handler: { alertSSIP in
                AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
                self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                    AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                    AppDelegate.showSSIPSuccessTips(acccusString: "Thank you for your report. We will verify and handle it as soon as possible")
                }
               
            }))
        }
       
        
        normailAreport.addAction(UIAlertAction(title: "cancel", style: .default))
        
        self.present(normailAreport, animated: true)
        
        
    }
    
    
    
    func shiVabyuiogPermisson()  {
        let alert = UIAlertController(title: "Camera Permission Denied", message: "Please enable camera access in the Settings.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
