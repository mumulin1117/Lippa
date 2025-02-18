//
//  LiSSpHomeBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpHomeBootomrbucue: LiSSpNOrmalSnmingertips {
    var refreshindex:Int = 0
    
    
    @IBOutlet weak var sjhocaseSSIP: UIImageView!
    
    @IBOutlet weak var showCollectionocaseSSIP: UILabel!
    

    @IBOutlet weak var mecenIconLISSP: UIImageView!
    
    
    
    @IBOutlet weak var collecShingIConLISSP: UIImageView!
    
    
    @IBOutlet weak var abountINFoLissp: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sjhocaseSSIP.isUserInteractionEnabled = true
        sjhocaseSSIP.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(atpdetaioCollecART)))
        sjhocaseSSIP.maskLippaRoundCorner(rMakLSSIpadius: 12)
        
        mecenIconLISSP.maskLippaRoundCorner(rMakLSSIpadius: 16)
        
       
        
    }

    
    
   @objc func atpdetaioCollecART()  {
       if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
           let namerIma = appledeelgate.totalvrdataSSIP[refreshindex]["ssipColletionPic"]
           let artdescIma = appledeelgate.totalvrdataSSIP[refreshindex]["ssipColletionDesc"]
          let artcolvc = LiSSpEnterDetailBootomrbucue.init(collectionARTData: (imaName: namerIma, imagerARTdesc: artdescIma))
           self.navigationController?.pushViewController(artcolvc, animated: true)
       }
       
       
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mecenIconLISSP.image = LipSigggneSnmingertips.logPucserdataSSIP
    }
    
    
    //用户中心
    @IBAction func toUserveSSIPCenter(_ sender: UIButton) {
        let centerg = LiSSpMeBootomrbucue.init()
        self.navigationController?.pushViewController(centerg, animated: true)
        
    }
    
    
    
    
    
    @IBAction func refreshDataeingLISSP(_ sender: UIButton) {
        
        if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
            
            
       
        if refreshindex < (appledeelgate.totalvrdataSSIP.count - 1) {
            refreshindex += 1
        }else{
            
            refreshindex = 0
        }
        
        sjhocaseSSIP.image = UIImage(named: appledeelgate.totalvrdataSSIP[refreshindex]["ssipColletionPic"] ?? "")
        abountINFoLissp.text = appledeelgate.totalvrdataSSIP[refreshindex]["ssipColletionDesc"]
            
        }
        
    }
    
    
    
    @IBAction func aiartaeingLISSP(_ sender: UIButton) {
        self.navigationController?.pushViewController(LiSSpAIBriefrbucue.init(), animated: true)
    }
    
    
    @IBAction func uploadeingLISSP(_ sender: UIButton) {
        self.navigationController?.pushViewController(LiSSpPostColtomrbucue.init(), animated: true)
    }
    
    
}
