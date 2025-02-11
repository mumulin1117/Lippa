//
//  LipSigggneSnmingertips.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LipSigggneSnmingertips: UIViewController {

    @IBOutlet weak var signSSIPin: UIButton!
    
    @IBOutlet weak var entrtSSIPOEmail: UITextField!
    
    @IBOutlet weak var entrtSSIPOPsw: UITextField!
    
    
    @IBOutlet weak var statauseSSIP: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        statauseSSIP.isSelected = LiSSpBArbucue.SSIPlA.isagreeeeSSIP
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signSSIPin.layer.cornerRadius = 27
        signSSIPin.layer.masksToBounds = true
        
        
        statauseSSIP.addTarget(self, action: #selector(statusdiihiiSSIP), for: .touchUpInside)
        signSSIPin.addTarget(self, action: #selector(hihiiSSIP), for: .touchUpInside)
        
    }
    
    
    @objc func hihiiSSIP() {
        if LiSSpBArbucue.SSIPlA.isagreeeeSSIP == false {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Please read and agree to the terms and conditions first.")
          
            return
        }
        
        
        guard let contenEmailSSIP = entrtSSIPOEmail.text,
        let contetntPaseSSIP = entrtSSIPOPsw.text,
              !contenEmailSSIP.isEmpty,
        !contetntPaseSSIP.isEmpty else {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Email address or password can not be empty")
            return
        }
        
        
        if contetntPaseSSIP.count < 6 || contetntPaseSSIP.count > 12 {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "password count should be in (6-12 characters)")
            return
        }
       
        if contenEmailSSIP == "lippa@gmail.com" {
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "log in ....")
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                AppDelegate.hideLoadingSSIPTipsIndicator()
                AppDelegate.showSSIPSuccessTips(acccusString: "Log in successful!")
                
                LiSSpBArbucue.SSIPlA.comeSSIPONenterBottomUser()
                LiSSpBArbucue.SSIPlA.olkauSSIplogin = true
               
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
                return
            }))
            

        }else{
            let presSSIP = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
                   
            let emailPreSSIPO = NSPredicate(format:"SELF MATCHES %@", presSSIP)
            let boollSSIP = emailPreSSIPO.evaluate(with: contenEmailSSIP)
            if boollSSIP == false {
                AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "The email format you entered is incorrect")
                
            }else{
                AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Create in ....")
               
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                    AppDelegate.hideLoadingSSIPTipsIndicator()
                    LiSSpBArbucue.SSIPlA.olkauSSIplogin = true
                    
                    
                    AppDelegate.showSSIPSuccessTips(acccusString: "Log in successful!")
                    
                    LiSSpBArbucue.SSIPlA.logUoserdataSSIP["ssipDtfestAccount"] = contenEmailSSIP
                    LiSSpBArbucue.SSIPlA.logUoserdataSSIP["ssipAccID"] = "\(Int.random(in: 50000...60000))"
                    LiSSpBArbucue.SSIPlA.logUoserdataSSIP["ssipPicdty"] = "userHear9"
                    
                    LiSSpBArbucue.SSIPlA.logUoserdataSSIP["ssipNadme"] = "NULL"
                    
                    LiSSpBArbucue.SSIPlA.logPucserdataSSIP = UIImage(named: "wode_mrtx")
                    
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
                  
                }))
                
            }
            
        }
        
        
    }

    @objc func statusdiihiiSSIP() {
        statauseSSIP.isSelected = !statauseSSIP.isSelected
        
        LiSSpBArbucue.SSIPlA.isagreeeeSSIP = statauseSSIP.isSelected
    }
    
    
    
    @IBAction func welcomnoingSSSIP(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: 0), animated: true)
        
    }
}
