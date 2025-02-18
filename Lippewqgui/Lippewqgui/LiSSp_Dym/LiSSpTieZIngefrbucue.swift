//
//  LiSSpTieZIngefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

/// 帖子详情
class LiSSpTieZIngefrbucue:  LissipSecondFrbucue {
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    
    @IBOutlet weak var postingUserimgSSIP: UIImageView!
    
    @IBOutlet weak var postusernamSSIP: UILabel!
    
    
    @IBOutlet weak var postingCOntentCAseSSIP: UIImageView!
    
    
    
    @IBOutlet weak var postingContetntesxrSSIP: UILabel!
    
    
    
    @IBOutlet weak var coaprmentSSIP: UIButton!
    
    @IBOutlet weak var tibluebackSSIP: UIView!
    
    @IBOutlet weak var collecPost: UIButton!
    
    var postCenDataSSIP:Dictionary<String,String>
    init(postCenDataSSIP: Dictionary<String, String>) {
    
        self.postCenDataSSIP = postCenDataSSIP
        super.init(nibName: nil, bundle: nil)
    }
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        postingUserimgSSIP.maskLippaRoundCorner(rMakLSSIpadius: 21.5)
        collecPost.isSelected = (postCenDataSSIP["islikeThisPublish"] == "SSIPLike")
        NotificationCenter.default.addObserver(self, selector: #selector(ctterBsdNoingSSIP), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        collecPost.isSelected = (postCenDataSSIP["islikeThisPublish"] == "SSIPLike")
        postingUserimgSSIP.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
        postusernamSSIP.text = postCenDataSSIP["ssipNadme"]
        
        postingCOntentCAseSSIP.image = UIImage(named: postCenDataSSIP["ssipPublishPic"] ?? "")
        
        postingContetntesxrSSIP.text = postCenDataSSIP["ssipPublishDesc"]
        
        tibluebackSSIP.maskLippaRoundCorner(rMakLSSIpadius: 20)
    }

    @IBAction func shingcaseOriginReport(_ sender: UIButton) {
        
        let normailAreport = UIAlertController(title: "Report Content", message:nil, preferredStyle: .actionSheet)
        let reasonsdonin = ["Harassment or Bullying","Inappropriate Content","Spam or Scam Attempts","Hate Speech"]
        
        for item in reasonsdonin {
            normailAreport.addAction(UIAlertAction(title: item, style: .default, handler: { alertSSIP in
                AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
                self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                    AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                    AppDelegate.showSSIPSuccessTips(acccusString: "Thank you for your supervision. We will verify and handle it as soon as possible")
                }
               
            }))
        }
       
        
        normailAreport.addAction(UIAlertAction(title: "cancel", style: .default))
        
        self.present(normailAreport, animated: true)
        
        
    }
    
    
    
    @IBAction func giventSSUP(_ sender: UIButton) {
        
        self.present(LiSSpCommwnentsingefrbucue.init(), animated: true)
    }
    
    
    @IBAction func getinguserSSUP(_ sender: UIButton) {
        let usermingming = postCenDataSSIP
        self.navigationController?.pushViewController(LiSSpItmeringBucue.init(postCenDataSSIP: usermingming), animated: true)
        
    }
    
    @IBAction func colllectioChagentSSUP(_ sender: UIButton) {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Requesting...", loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 1.0) {
            sender.isSelected = !sender.isSelected
            
//            LiSSpBArbucue.SSIPlA.giveAttitudeTirtNenterBottomUser(transderinfo: self.postCenDataSSIP, isSSIPlijer:  sender.isSelected)
            if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
              
                for (u,item) in appledeelgate.totalvrdataSSIP.enumerated() {
                    if item ["ssipAccID"] == self.postCenDataSSIP ["ssipAccID"]{
                        appledeelgate.totalvrdataSSIP[u]["islikeThisPublish"] = sender.isSelected ? "SSIPLike" : "SSIPUNLike"
                       
                        
                    }
                }
            }
            
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
        }
      
    }
    
    

}
