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
        sjhocaseSSIP.layer.cornerRadius = 12
        sjhocaseSSIP.layer.masksToBounds = true
        
        mecenIconLISSP.layer.cornerRadius = 16
        mecenIconLISSP.layer.masksToBounds = true
        
        mecenIconLISSP.image = LiSSpBArbucue.SSIPlA.logPucserdataSSIP
        
    }


    @IBAction func toSiteMeCenterLiSSP(_ sender: UIButton) {
        self.navigationController?.pushViewController(LiSSpMeaddgeBootomrbucue.init(), animated: true)
    }
    
    
    
    @IBAction func refreshDataeingLISSP(_ sender: UIButton) {
        if refreshindex < (LiSSpBArbucue.SSIPlA.totalvrdataSSIP.count) {
            refreshindex += 1
        }else{
            
            refreshindex = 0
        }
        sjhocaseSSIP.image = UIImage(named: LiSSpBArbucue.SSIPlA.totalvrdataSSIP[refreshindex]["ssipColletionPic"] ?? "")
        abountINFoLissp.text = LiSSpBArbucue.SSIPlA.totalvrdataSSIP[refreshindex]["ssipColletionDesc"]
        
    }
    
    
    
    @IBAction func aiartaeingLISSP(_ sender: UIButton) {
        self.navigationController?.pushViewController(LiSSpAIBriefrbucue.init(), animated: true)
    }
    
    
    @IBAction func uploadeingLISSP(_ sender: UIButton) {
        self.navigationController?.pushViewController(LiSSpAIUploasingefrbucue.init(), animated: true)
    }
    
    
}
