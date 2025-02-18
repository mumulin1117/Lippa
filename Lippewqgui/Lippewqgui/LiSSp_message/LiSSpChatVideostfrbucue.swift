//
//  LiSSpChatVideostfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpChatVideostfrbucue:  LissipSecondFrbucue {
    @IBOutlet weak var ChokenSSIP: UIButton!
    var postCenDataSSIP:Dictionary<String,String>
    init(postCenDataSSIP: Dictionary<String, String>) {
    
        self.postCenDataSSIP = postCenDataSSIP
        super.init(nibName: nil, bundle: nil)
    }
    @IBOutlet weak var haodaSSIP: UIImageView!
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var shinmaskerlayerSSip: UIImageView!
    
    @IBOutlet weak var nicmerSSIP: UILabel!
    
    @IBOutlet weak var babdaerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nicmerSSIP.text = postCenDataSSIP["ssipNadme"] ?? ""
        babdaerView.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
        haodaSSIP.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
        babdaerView.maskLippaRoundCorner(rMakLSSIpadius: 18)
        
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        shinmaskerlayerSSip.maskLippaRoundCorner(rMakLSSIpadius: 21)
        
        
        shinmaskerlayerSSip.image = LipSigggneSnmingertips.logPucserdataSSIP
        NotificationCenter.default.addObserver(self, selector: #selector(ctterBsdNoingSSIP), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        
        
        self.performBlockAfterDelayINSSIP(secondsSSIP: 8.0) {
           
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "The user is not online, please call later", loaingShowView: self.view)
            
            
        }
       
    }

    
    
    
    
    @IBAction func touchingDeRefused(_ sender: UIButton) {
        if sender.tag == 45{
            ctterBsdNoingSSIP()
            return
        }
        
        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "The user is not online, please change call status after connected!", loaingShowView: self.view)
        
        
        
        
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
