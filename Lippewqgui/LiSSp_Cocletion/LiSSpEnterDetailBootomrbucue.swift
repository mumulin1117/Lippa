//
//  LiSSpEnterDetailBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpEnterDetailBootomrbucue: LissipSecondFrbucue {
    @IBOutlet weak var collecShingIConLISSP: UIImageView!
    
    @IBOutlet weak var sippoBackground: UIImageView!
    
    @IBOutlet weak var abountINFoLissp: UILabel!
    
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    var collectionARTData:(imaName:String?,imagerARTdesc:String?)
    init(collectionARTData: (imaName: String?, imagerARTdesc: String?)) {
       
        self.collectionARTData = collectionARTData
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)

        abountINFoLissp.text = collectionARTData.imagerARTdesc
        if let imagnamrj = collectionARTData.imaName {
            collecShingIConLISSP.image = UIImage(named:imagnamrj )
        }
        ssuipCreaNet()
    }

    private func ssuipCreaNet() {
        sippoBackground.maskLippaRoundCorner(rMakLSSIpadius: 12)
    }
    
    private func ssuitreatNet() {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Request...", loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
            AppDelegate.showSSIPSuccessTips(acccusString: "Thank you for your supervision. We will verify and handle it as soon as possible")
        }
    }
    @IBAction func shingcaseOriginReport(_ sender: UIButton) {
        
        let normailAreport = UIAlertController(title: "Report Content", message:nil, preferredStyle: .actionSheet)
        let reasonsdonin = ["Harassment or Bullying","Inappropriate Content","Spam or Scam Attempts","Hate Speech"]
        
        for item in reasonsdonin {
            normailAreport.addAction(UIAlertAction(title: item, style: .default, handler: { alertSSIP in
                self.ssuitreatNet()
               
            }))
        }
       
        
        normailAreport.addAction(UIAlertAction(title: "cancel", style: .default))
        
        self.present(normailAreport, animated: true)
        
        
    }
    
   

}
