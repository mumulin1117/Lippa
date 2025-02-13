//
//  LiSSpELUABootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpELUABootomrbucue: UIViewController {

    @IBOutlet weak var eluaSSIPtiitle: UILabel!
    
    @IBOutlet weak var contentSSIPview: UITextView!
    
    
    @IBOutlet weak var teeermSSIP: UIButton!
    
    @IBOutlet weak var pppirpSSIP: UIButton!
    
    
    @IBOutlet weak var haodeSSIP: UIButton!
    
    @IBOutlet weak var cancekSSIP: UIButton!
    
    
    var controllerSSIPType:Int = 0
    init( controllerSSIPType: Int) {
        self.controllerSSIPType = controllerSSIPType
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cancekSSIP.addTarget(self, action: #selector(cancekSSIPIOJIJJi), for: .touchUpInside)
        
        haodeSSIP.addTarget(self, action: #selector(cancekSSIPIOJIJJi), for: .touchUpInside)
        
        pppirpSSIP.addTarget(self, action: #selector(cancekSSIPIOJIJJi), for: .touchUpInside)
        
        teeermSSIP.addTarget(self, action: #selector(cancekSSIPIOJIJJi), for: .touchUpInside)
        
       
        
        haodeSSIP.layer.cornerRadius = 26
        haodeSSIP.layer.masksToBounds = true
        if controllerSSIPType != 0 {
            teeermSSIP.isHidden = true
            pppirpSSIP.isHidden = true
            
            if controllerSSIPType == 1 {
                eluaSSIPtiitle.text = "Lippa Privacy Policy"
                
                contentSSIPview.text = """
Effective Date: [2025-02-25]

1. Introduction

Your privacy is important to us. This Privacy Policy explains how Lippa collects, uses, and shares your personal information when you use our App.

2. Information We Collect

Personal Information: We may collect personal information such as your name, email address, and profile details when you create an account.
User Content: Information about collectibles you upload, including photos and descriptions.
Usage Data: We collect data regarding how you use the App, including device information, log data, and analytics.
3. Use of Information

We use your information for the following purposes:

To provide and maintain the App.
To process your requests and manage your account.
To communicate with you about updates, promotions, and events.
To analyze and improve our services.
4. Sharing of Information

We do not sell your personal information to third parties. We may share your information:

With service providers who assist us in operating our App.
In compliance with legal obligations or to protect rights and safety.
5. Data Security

We implement reasonable security measures to protect your personal information. However, no method of transmission over the internet is completely secure.

6. Your Rights

You have the right to access, correct, or delete your personal information. For any inquiries or requests, please contact us at [insert contact information].

7. Changes to This Policy

We may update this Privacy Policy from time to time. Any changes will be posted within the App, and we encourage you to review it periodically.


"""
            }
            
            
            if controllerSSIPType == 2 {
                eluaSSIPtiitle.text = "Lippa User Terms"
                
                contentSSIPview.text = """
  Effective Date: [2025-02-25]

  1. Acceptance of Terms

  By accessing or using the Lippa App, you agree to be bound by these User Terms. If you do not agree, do not use the App.

  2. Eligibility

  You must be at least 13 years old to use the App. By using the App, you represent that you meet this requirement.

  3. User Conduct

  You agree not to:

  Harass, threaten, or abuse other users.
  Post false or misleading information about collectibles.
  Upload content that infringes the intellectual property rights of others.
  4. Intellectual Property

  All content and materials within the App are owned by Lippa or its licensors. You may not use any content without express permission.

  5. Community Guidelines

  Users should engage respectfully and constructively within the community. Disrespectful or harmful behavior can result in account suspension or termination.

  6. Feedback

  If you provide feedback or suggestions about the App, you grant Lippa the right to use such feedback without any obligation to you.

  7. Disclaimer of Warranties

  Lippa makes no warranties regarding the reliability, availability, or performance of the App.

  8. Changes to Terms

  Lippa may modify these User Terms at any time. Your continued use of the App after changes indicates acceptance of the new terms.

  9. Contact Us

      For questions or concerns regarding these agreements, please contact us at LippaGgmail.com.

"""
            }
        }
        
       
        
        
    }

    
   @objc func cancekSSIPIOJIJJi(SIPP:UIButton)  {
       if SIPP == self.cancekSSIP {
           if controllerSSIPType == 0 {
               LiSSpBArbucue.SSIPlA.isagreeeeSSIP = false
           }
          
           self.navigationController?.popViewController(animated: true)
       }
       
       if SIPP == self.haodeSSIP  {
           if controllerSSIPType == 0 {
               LiSSpBArbucue.SSIPlA.isagreeeeSSIP = true
           }
           
           self.navigationController?.popViewController(animated: true)
       }
  
       
        if SIPP == self.pppirpSSIP   {
            self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: 1), animated: true)
       }
       
       
       if SIPP == self.teeermSSIP   {
           self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: 2), animated: true)
      }
   }
    


}
