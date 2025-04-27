//
//  LiSSpWallwnetBucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit
import SwiftyStoreKit

class LiSSpWallwnetBucue:  LissipSecondFrbucue,UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var ChokenSSIP: UIButton!
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    @IBOutlet weak var mincolViewSIPP: UICollectionView!
    
    @IBOutlet weak var mineOladSSIP: UILabel!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: mincolViewSIPP.frame.width, height: 68)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    var blanceidSSIPayID:Array<(String,String)> = Array<(String,String)>()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        enImageSSIPOViol.isHidden = true
        
        
        
        blanceidSSIPayID = [("nqixcbnohmlxhlrc","$k0b.d9h9".oranApolWothCharrterString()),
                         ("pxoxebhhktzklezg","$m1n.u9z9".oranApolWothCharrterString()),
                                ("pxoxebhhktzklllip","$y2r.k9d9".oranApolWothCharrterString()),
                               
                         ("rjcaopufshgxmmch","$x4k.s9u9".oranApolWothCharrterString()),
                                ("sdrgnhnjutyjtyjr","$e5h.a9b9".oranApolWothCharrterString()),
                                ("oaijeghutgfhfgtt","$x8s.v9x9".oranApolWothCharrterString()),
                         ("hwisjrlbpnklyzcq","$e9y.u9c9".oranApolWothCharrterString()),
                         ("vpjxrayqjkswcwpc","$y1k9l.o9o9".oranApolWothCharrterString()),
                         ("nyrjetssfpqjltkh","$m4l9k.k9v9".oranApolWothCharrterString()),
                         ("cotnxwosshqinyda","$k9f9a.q9c9".oranApolWothCharrterString())
                                ]
        ssuitreatNet()
        mincolViewSIPP.register(UINib.init(nibName: "LiSSpWallwnetvierell", bundle: nil), forCellWithReuseIdentifier: "LiSSpWallwnetBucueReused")
        
        ssuipCreaNet()
        
        mincolViewSIPP.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 280, right: 0)
    }

    private func ssuipCreaNet() {
        mincolViewSIPP.delegate = self
        mincolViewSIPP.dataSource = self
    }
    
    private func ssuitreatNet() {
        if let oldamone = Int(LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] ?? "0"){
   
            mineOladSSIP.text  = "\(oldamone)"
             
         }
    }
   

}


extension LiSSpWallwnetBucue:UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let selidINdfo = self.blanceidSSIPayID[indexPath.row]
        let CellIDSIPP = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSpWallwnetBucueReused", for: indexPath) as! LiSSpWallwnetvierell
        CellIDSIPP.speendTisSSIP.text = selidINdfo.1
        let lasll = ["4n0v0","6y0r0","1l1l5n0","2a4g5s0","2m6k5v0","4y6l5b0","4s9k0y0","9r8i0o0","2p4k5t0e0","4q9p0n0c0"].map { stryu in
            stryu.oranApolWothCharrterString()
        }
        CellIDSIPP.ownedThisSSIP.text = lasll[indexPath.row]
        return CellIDSIPP
        
    }
    
    private func getingReallIDREsultSSSIp(diomondAccount:Int)  {
        
        if var oldamone = Int(LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] ?? "0"){
           
            oldamone = oldamone + diomondAccount
            LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] = "\(oldamone)"
            self.mineOladSSIP.text  = "\(oldamone)"
         }
        
        //更新相关数据
        var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        
        allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
        let useiIDING = LipSigggneSnmingertips.logUoserdataSSIP["ssipAccID"]
        for (ing,itemt) in allUserDataSSIP.enumerated() {
            if itemt["ssipAccID"] == useiIDING {
                allUserDataSSIP[ing] = LipSigggneSnmingertips.logUoserdataSSIP
            }
        }
        UserDefaults.standard.set(allUserDataSSIP, forKey: "AllUserLocalDataList")
        
        AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
       
//        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        labeSiop.textColor = view.backgroundColor
        view.isUserInteractionEnabled = false
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lpotaxdfiznxgz.f.f.v.".oranApolWothCharrterString(), loaingShowView: self.view)
        let selidINdfo = self.blanceidSSIPayID[indexPath.row]
       let lasll = ["4n0v0","6y0r0","1l1l5n0","2a4g5s0","2m6k5v0","4y6l5b0","4s9k0y0","9r8i0o0","2p4k5t0e0","4q9p0n0c0"].map { stryu in
           stryu.oranApolWothCharrterString()
       }[indexPath.row]

        SwiftyStoreKit.purchaseProduct(selidINdfo.0, atomically: true) { psResult in
            var SistertSSIp = [Any]()
           
            
            self.view.isUserInteractionEnabled = true
            
            let maincolo = UIColor.white
            SistertSSIp.insert(maincolo, at: 0)
            if case .success(let coacadpos) = psResult {
                
                self.getingReallIDREsultSSSIp(diomondAccount:Int(lasll) ?? 0 )
                
                let psdownloads = coacadpos.transaction.downloads
                
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if coacadpos.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(coacadpos.transaction)
                }

            }else if case .error(let error) = psResult {
                
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                if SistertSSIp.count == 0 {
                    return
                }
                if error.code != .paymentCancelled {
//                    AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: error.localizedDescription, loaingShowView: self.view)
                    self.ChuanZaoErtoSSIP(errorDesc: error.localizedDescription)
                }
            }
        }
        
//#endif
    }
    
    
    private func ChuanZaoErtoSSIP(errorDesc:String)  {
        
        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:errorDesc , loaingShowView: self.view)
       
    }
}
