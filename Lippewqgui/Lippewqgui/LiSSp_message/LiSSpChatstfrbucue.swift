//
//  LiSSpChatstfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpChatstfrbucue: LissipSecondFrbucue {
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var nicmerSSIP: UILabel!
    
    @IBOutlet weak var babdaerView: UIImageView!
    
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
        nicmerSSIP.text = postCenDataSSIP["ssipNadme"] ?? ""
        babdaerView.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
        NotificationCenter.default.addObserver(self, selector: #selector(ctterBsdNoingSSIP), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        babdaerView.maskLippaRoundCorner(rMakLSSIpadius: 18)
       
    }

    @IBAction func chpickedCLIKSSip(_ sender: UIButton) {
        
        let normailAreport = UIAlertController(title: "Report OR Black", message:nil, preferredStyle: .actionSheet)
        
        normailAreport.addAction(UIAlertAction(title: "Black", style: .default, handler: { alertSSIP in
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
            self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                AppDelegate.showSSIPSuccessTips(acccusString: "Black successful!")
                
                
            }
           
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
