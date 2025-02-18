//
//  LiSSpItmeringBucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpItmeringBucue:  LissipSecondFrbucue {
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    @IBOutlet weak var whonameSIPP: UILabel!
    
    @IBOutlet weak var ownedSIpp: UIImageView!
    
    @IBOutlet weak var descnameSIPP: UILabel!
    
    
    @IBOutlet weak var fancereCountSIpp: UILabel!
    
    @IBOutlet weak var fowerereCountSIpp: UILabel!
    
    
    @IBOutlet weak var opwerSIPP: UIImageView!
    
    @IBOutlet weak var focusSSSIPo: UIButton!
    
    
    var postCenDataSSIP:Dictionary<String,String>?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        ssuipCreaNet()
    }

    @IBOutlet weak var backDAtaimgeSSIP: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        NotificationCenter.default.addObserver(self, selector: #selector(ctterBsdNoingSSIP), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        
        
       
       
        focusSSSIPo.maskLippaRoundCorner(rMakLSSIpadius: 16)
        ownedSIpp.maskLippaRoundCorner(rMakLSSIpadius: 38)
        
        backDAtaimgeSSIP.maskLippaRoundCorner(rMakLSSIpadius: 14)
        focusSSSIPo.addTarget(self, action: #selector(liskinguserstatus), for: .touchUpInside)
       
        
    }
    private func ssuipCreaNet() {
        
        if let achiole = view.viewWithTag(34) as? UIButton,achiole.isSelected == true {
            backDAtaimgeSSIP.setBackgroundImage(UIImage.init(named: postCenDataSSIP?["ssipColletionPic"] ?? ""), for: .normal)
        }
        
        opwerSIPP.image = UIImage(named: postCenDataSSIP?["ssipPicdty"] ?? "")
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        ownedSIpp.image = UIImage(named: postCenDataSSIP?["ssipPicdty"] ?? "")
        whonameSIPP.text = postCenDataSSIP?["ssipNadme"]
        
        focusSSSIPo.isSelected = (LiSSpMeBootomrbucue.FolsdwemeSSIP.filter({ SSIPDIC in
            return postCenDataSSIP?["ssipAccID"] == SSIPDIC["ssipAccID"]
        }).count > 0)
        
        fancereCountSIpp.text = postCenDataSSIP?["fandscSIPPish"]
        
        fowerereCountSIpp.text = postCenDataSSIP?["fowerdscSIPPish"]
        
        descnameSIPP.text = postCenDataSSIP?["ssipDtfestBriedf"]
    }
    
   
    @IBAction func collectiontableSSIP(_ sender: UIButton) {
        if sender.tag == 990 {
            if let whoseSSIP = LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.filter({ SSIPChatUSerFwbnkeEr in
                return SSIPChatUSerFwbnkeEr.whoseSSIP["ssipAccID"] == postCenDataSSIP?["ssipAccID"]
            }).first {
                
                self.navigationController?.pushViewController(LiSSpChatstfrbucue.init(_PChatUSerFwbnke: whoseSSIP), animated: true)
               
            }else{
                let achat =   SSIPChatUSerFwbnke.init(whoseSSIP: postCenDataSSIP ?? [:], chatSSIPList: [])
                
                self.navigationController?.pushViewController(LiSSpChatstfrbucue.init(_PChatUSerFwbnke: achat), animated: true)
               
            }
                
            
            return
        }
        
        
        if sender.tag == 991 {
           
            self.navigationController?.pushViewController(LiSSpChatVideostfrbucue.init(postCenDataSSIP: postCenDataSSIP ?? [:]), animated: true)
            
            return
        }
        let achiole = view.viewWithTag(34) as? UIButton
        let achiole1 = view.viewWithTag(35) as? UIButton
        
        let achiole60 = view.viewWithTag(60) as? UIButton
        
        if sender.tag == 60 && achiole?.isSelected == true {
            let namerIma = postCenDataSSIP?["ssipColletionPic"]
            let artdescIma = postCenDataSSIP?["ssipColletionDesc"]
            self.navigationController?.pushViewController(LiSSpEnterDetailBootomrbucue.init(collectionARTData: (namerIma,artdescIma)), animated: true)
            
            return
        }
        
        
        if sender.tag == 60 && achiole1?.isSelected == true {
            let teizige = LiSSpTieZIngefrbucue.init()
            teizige.postCenDataSSIP = postCenDataSSIP ?? [:]
            self.navigationController?.pushViewController(teizige, animated: true)
            
            return
        }
        
        
        
        
        achiole?.isSelected = false
        achiole1?.isSelected = false
        
        
        sender.isSelected = true
        if sender.tag == 34 {
            backDAtaimgeSSIP.setBackgroundImage(UIImage.init(named: postCenDataSSIP?["ssipColletionPic"] ?? ""), for: .normal)
          
        }
        
        
        if sender.tag == 35 {
            backDAtaimgeSSIP.setBackgroundImage(UIImage.init(named: postCenDataSSIP?["ssipPublishPic"] ?? ""), for: .normal)
          
          
        }
       
      
        
    }
    
    
    
   @objc func liskinguserstatus() {
       focusSSSIPo.isSelected = !focusSSSIPo.isSelected
       
      
       if LiSSpMeBootomrbucue.FolsdwemeSSIP.filter({ dioi in
           return dioi["ssipAccID"] == postCenDataSSIP?["ssipAccID"]
       }).count == 0 && focusSSSIPo.isSelected{
           LiSSpMeBootomrbucue.FolsdwemeSSIP.insert(postCenDataSSIP ?? [:], at: 0)
       }
    }
    
    @IBAction func chpickedCLIKSSip(_ sender: UIButton) {
        let onlyID = self.postCenDataSSIP?["ssipAccID"] ?? ""
       
        showingBloakjPickVC(withBloackID: onlyID)
      
    }
    
    
    
    
}
