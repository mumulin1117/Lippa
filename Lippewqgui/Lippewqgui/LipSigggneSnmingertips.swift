//
//  LipSigggneSnmingertips.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
import IQKeyboardManager
class LipSigggneSnmingertips: UIViewController {

    @IBOutlet weak var signSSIPin: UIButton!
    
    @IBOutlet weak var entrtSSIPOEmail: UITextField!
    
    @IBOutlet weak var entrtSSIPOPsw: UITextField!
    
    @IBOutlet weak var linkerConditonSSIp: UILabel!
    
    @IBOutlet weak var statauseSSIP: UIButton!
    
    
    static var logUoserdataSSIP:Dictionary<String,String> = Dictionary<String,String>()
    
    static var logPucserdataSSIP:UIImage?
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let ifAgreenREsult = UserDefaults.standard.bool(forKey: "isagreeeeSSIP")
        
        statauseSSIP.isSelected = ifAgreenREsult
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if LiSSpELUABootomrbucue.ifShowendNoewLISSAP == false {
            self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: 0), animated: true)
            LiSSpELUABootomrbucue.ifShowendNoewLISSAP = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        IQKeyboardManager.shared().isEnabled = true
        signSSIPin.maskLippaRoundCorner(rMakLSSIpadius: 27)
        
        addLinkkkUrelSSIP()
        statauseSSIP.addTarget(self, action: #selector(statusdiihiiSSIP), for: .touchUpInside)
        signSSIPin.addTarget(self, action: #selector(hihiiSSIP), for: .touchUpInside)
        
    }
    
    
    private func addLinkkkUrelSSIP()  {
        linkerConditonSSIp.isUserInteractionEnabled = true
        linkerConditonSSIp.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(welcomnoingSSSIP)))
    }
    
    @objc func hihiiSSIP() {
        self.entrtSSIPOEmail.resignFirstResponder()
        self.entrtSSIPOPsw.resignFirstResponder()
       
        
        if statauseSSIP.isSelected == false {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Please read and agree to the terms and conditions first.", loaingShowView: self.view)
          
            return
        }
        
        
        guard let contenEmailSSIP = entrtSSIPOEmail.text,
        let contetntPaseSSIP = entrtSSIPOPsw.text,
              !contenEmailSSIP.isEmpty,
        !contetntPaseSSIP.isEmpty else {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Email address or password can not be empty", loaingShowView: self.view)
            return
        }
        
        
        if contetntPaseSSIP.count < 6 || contetntPaseSSIP.count > 12 {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "password count should be in (6-12 characters)", loaingShowView: self.view)
            return
        }
       
        if contenEmailSSIP == "lippa@gmail.com" {
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "log in ....", loaingShowView: self.view)
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
                AppDelegate.showSSIPSuccessTips(acccusString: "Log in successful!")
                
                self.comeSSIPONenterBottomUser()
//                LiSSpBArbucue.SSIPlA.olkauSSIplogin = true
//                UserDefaults.standard.set(true, forKey: "olkauSSIplogin")
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
                return
            }))
            

        }else{
            let presSSIP = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
                   
            let emailPreSSIPO = NSPredicate(format:"SELF MATCHES %@", presSSIP)
            let boollSSIP = emailPreSSIPO.evaluate(with: contenEmailSSIP)
            if boollSSIP == false {
                AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "The email format you entered is incorrect", loaingShowView: self.view)
                
            }else{
                AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Create in ....", loaingShowView: self.view)
               
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                    AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
//                    LiSSpBArbucue.SSIPlA.olkauSSIplogin = true
//                    UserDefaults.standard.set(true, forKey: "olkauSSIplogin")
                    
                    AppDelegate.showSSIPSuccessTips(acccusString: "Log in successful!")
                    
                    LipSigggneSnmingertips.logUoserdataSSIP["ssipDtfestAccount"] = contenEmailSSIP
                    LipSigggneSnmingertips.logUoserdataSSIP["ssipAccID"] = "\(Int.random(in: 50000...60000))"
                    LipSigggneSnmingertips.logUoserdataSSIP["ssipPicdty"] = "userHear9"
                    
                    LipSigggneSnmingertips.logUoserdataSSIP["ssipNadme"] = "NULL"
                    
                    LipSigggneSnmingertips.logPucserdataSSIP = UIImage(named: "wode_mrtx")
                    
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
                  
                }))
                
            }
            
        }
        
        
    }

    @objc func statusdiihiiSSIP() {
        statauseSSIP.isSelected = !statauseSSIP.isSelected
        UserDefaults.standard.set(statauseSSIP.isSelected, forKey: "isagreeeeSSIP")
//        LiSSpBArbucue.SSIPlA.isagreeeeSSIP = statauseSSIP.isSelected
    }
    
    
    
    @IBAction func welcomnoingSSSIP(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: 0), animated: true)
        
    }
    
    
    func comeSSIPONenterBottomUser() {
        LipSigggneSnmingertips.logUoserdataSSIP = ["ssipNadme":"Aria",
                                          "ssipPicdty":"SSIPavator9",
                                          "ssipDoimond":"200",
                                          "ssipDtfestAccount":"lippa@gmail.com",
                                          "ssipDtfestBriedf":"🖤 Collector of forgotten stories | Preserving history, one treasure at a time 📜",
                                          "ssipAccID":"234589"
                                         
                                          
        
        ]

        LipSigggneSnmingertips.logPucserdataSSIP = UIImage(named:"SSIPavator9")
        
        if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
            
            LiSSpMeBootomrbucue.FolsdwemeSSIP = Array(appledeelgate.totalvrdataSSIP.shuffled().prefix(1))
            LiSSpMeBootomrbucue.facrewemeSSIP = Array(appledeelgate.totalvrdataSSIP.shuffled().prefix(1))
            
            if let laiker = appledeelgate.totalvrdataSSIP.first  {
                let comengONe = SSIPChatUSerFwbnke.init(_whoseSSIP: laiker, _chatSSIPList: [(true,"What kind of art do you collect?"),(false,"I love oil paintings, especially Impressionism.")])
                LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.append(comengONe)

            }
            
            if  appledeelgate.totalvrdataSSIP.count >= 2 {
                
                let laiet = appledeelgate.totalvrdataSSIP[1]
                let comengtwo = SSIPChatUSerFwbnke.init(_whoseSSIP: laiet, _chatSSIPList: [(false,"How do you choose what to collect?"),(true,"I mainly look for emotional resonance in the work.")])
                LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.append(comengtwo)
                
            }
            
            
            if  appledeelgate.totalvrdataSSIP.count >= 3 {
                
                let laidsan = appledeelgate.totalvrdataSSIP[2]
                let comengtwo = SSIPChatUSerFwbnke.init(_whoseSSIP: laidsan, _chatSSIPList: [(false,"Any advice on collecting art?")])
                LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.append(comengtwo)
                
            }
        }
       
    }
}
