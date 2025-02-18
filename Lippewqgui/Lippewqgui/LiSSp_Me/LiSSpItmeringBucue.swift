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
    
    
    var postCenDataSSIP:Dictionary<String,String>
    init(postCenDataSSIP: Dictionary<String, String>) {
    
        self.postCenDataSSIP = postCenDataSSIP
        super.init(nibName: nil, bundle: nil)
    }
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var backDAtaimgeSSIP: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        NotificationCenter.default.addObserver(self, selector: #selector(ctterBsdNoingSSIP), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        
        opwerSIPP.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
        ownedSIpp.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
        whonameSIPP.text = postCenDataSSIP["ssipNadme"]
        backDAtaimgeSSIP.setBackgroundImage(UIImage.init(named: postCenDataSSIP["ssipColletionPic"] ?? ""), for: .normal)
        focusSSSIPo.isSelected = (LiSSpMeBootomrbucue.FolsdwemeSSIP.filter({ SSIPDIC in
            return postCenDataSSIP["ssipAccID"] == SSIPDIC["ssipAccID"]
        }).count > 0)
        
        fancereCountSIpp.text = postCenDataSSIP["fandscSIPPish"]
        
        fowerereCountSIpp.text = postCenDataSSIP["fowerdscSIPPish"]
        
        descnameSIPP.text = postCenDataSSIP["ssipDtfestBriedf"]
        
        
        focusSSSIPo.maskLippaRoundCorner(rMakLSSIpadius: 16)
        ownedSIpp.maskLippaRoundCorner(rMakLSSIpadius: 38)
        
        backDAtaimgeSSIP.maskLippaRoundCorner(rMakLSSIpadius: 14)
        focusSSSIPo.addTarget(self, action: #selector(liskinguserstatus), for: .touchUpInside)
       
        
    }

    @IBAction func collectiontableSSIP(_ sender: UIButton) {
        if sender.tag == 990 {
            if let whoseSSIP = LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.filter({ SSIPChatUSerFwbnkeEr in
                return SSIPChatUSerFwbnkeEr.whoseSSIP["ssipAccID"] == postCenDataSSIP["ssipAccID"]
            }).first {
                
                self.navigationController?.pushViewController(LiSSpChatstfrbucue.init(_PChatUSerFwbnke: whoseSSIP), animated: true)
               
            }else{
             let achat =   SSIPChatUSerFwbnke.init(_whoseSSIP: postCenDataSSIP, _chatSSIPList: [])
                
                self.navigationController?.pushViewController(LiSSpChatstfrbucue.init(_PChatUSerFwbnke: achat), animated: true)
               
            }
                
            
            return
        }
        
        
        if sender.tag == 991 {
           
            self.navigationController?.pushViewController(LiSSpChatVideostfrbucue.init(postCenDataSSIP: postCenDataSSIP), animated: true)
            
            return
        }
        let achiole = view.viewWithTag(34) as? UIButton
        let achiole1 = view.viewWithTag(35) as? UIButton
        
        let achiole60 = view.viewWithTag(60) as? UIButton
        
        if sender.tag == 60 && achiole?.isSelected == true {
            let namerIma = postCenDataSSIP["ssipColletionPic"]
            let artdescIma = postCenDataSSIP["ssipColletionDesc"]
            self.navigationController?.pushViewController(LiSSpEnterDetailBootomrbucue.init(collectionARTData: (namerIma,artdescIma)), animated: true)
            
            return
        }
        
        
        if sender.tag == 60 && achiole1?.isSelected == true {
           
            self.navigationController?.pushViewController(LiSSpTieZIngefrbucue.init(postCenDataSSIP: postCenDataSSIP), animated: true)
            
            return
        }
        
        
        
        
        achiole?.isSelected = false
        achiole1?.isSelected = false
        
        
        sender.isSelected = true
        if sender.tag == 34 {
            backDAtaimgeSSIP.setBackgroundImage(UIImage.init(named: postCenDataSSIP["ssipColletionPic"] ?? ""), for: .normal)
          
        }
        
        
        if sender.tag == 35 {
            backDAtaimgeSSIP.setBackgroundImage(UIImage.init(named: postCenDataSSIP["ssipPublishPic"] ?? ""), for: .normal)
          
          
        }
       
      
        
    }
    
    
    
   @objc func liskinguserstatus() {
       focusSSSIPo.isSelected = !focusSSSIPo.isSelected
       
      
       if LiSSpMeBootomrbucue.FolsdwemeSSIP.filter({ dioi in
           return dioi[""] == postCenDataSSIP[""]
       }).count == 0 && focusSSSIPo.isSelected{
           LiSSpMeBootomrbucue.FolsdwemeSSIP.insert(postCenDataSSIP, at: 0)
       }
    }
    
    @IBAction func chpickedCLIKSSip(_ sender: UIButton) {
        
        let normailAreport = UIAlertController(title: "Report OR Black", message:nil, preferredStyle: .actionSheet)
        
        normailAreport.addAction(UIAlertAction(title: "Black", style: .default, handler: { alertSSIP in
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Requesting...", loaingShowView: self.view)
            self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                AppDelegate.showSSIPSuccessTips(acccusString: "Black successful!")
                self.delsteSSIPONenterBottomUser(iduserSSIP: self.postCenDataSSIP)
                
                
            }
           
        }))
       
        normailAreport.addAction(UIAlertAction(title: "Report", style: .default, handler: { alertSSIP in
            self.shingcaseOriginReport()
           
        }))
        normailAreport.addAction(UIAlertAction(title: "cancel", style: .default))
        
        self.present(normailAreport, animated: true)
    }
    
    
    
    private  func shingcaseOriginReport()  {
        
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
}
