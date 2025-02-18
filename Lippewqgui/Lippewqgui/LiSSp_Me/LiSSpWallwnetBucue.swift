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
    
    var blanceidSSIPayID:Array<(String,String,Int)> = Array<(String,String,Int)>()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        
        blanceidSSIPayID = [("nqixcbnohmlxhlrc","$0.99",400),
                         ("pxoxebhhktzklezg","$1.99",600),
                                ("pxoxebhhktzklllip","$2.99",1150),
                               
                         ("rjcaopufshgxmmch","$4.99",2450),
                                ("sdrgnhnjutyjtyjr","$5.99",2650),
                                ("oaijeghutgfhfgtt","$8.99",4650),
                         ("hwisjrlbpnklyzcq","$9.99",4900),
                         ("vpjxrayqjkswcwpc","$19.99",9800),
                         ("nyrjetssfpqjltkh","$49.99",24500),
                         ("cotnxwosshqinyda","$99.99",49000)
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
        CellIDSIPP.ownedThisSSIP.text = "\(selidINdfo.2)"
        return CellIDSIPP
        
    }
    
    private func getingReallIDREsultSSSIp(diomondAccount:Int)  {
        
        if var oldamone = Int(LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] ?? "0"){
           
            oldamone = oldamone + diomondAccount
            LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] = "\(oldamone)"
            self.mineOladSSIP.text  = "\(oldamone)"
         }
        
        
        AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
       
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        view.isUserInteractionEnabled = false
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "loading....", loaingShowView: self.view)
        let selidINdfo = self.blanceidSSIPayID[indexPath.row]
        
        SwiftyStoreKit.purchaseProduct(selidINdfo.0, atomically: true) { psResult in
            self.view.isUserInteractionEnabled = true
            if case .success(let coacadpos) = psResult {
                
                self.getingReallIDREsultSSSIp(diomondAccount: selidINdfo.2)
                
                let psdownloads = coacadpos.transaction.downloads
                
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if coacadpos.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(coacadpos.transaction)
                }

            }else if case .error(let error) = psResult {
                
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                
                if error.code != .paymentCancelled {
//                    AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: error.localizedDescription, loaingShowView: self.view)
                    self.ChuanZaoErtoSSIP(errorDesc: error.localizedDescription)
                }
            }
        }
    }
    
    
    private func ChuanZaoErtoSSIP(errorDesc:String)  {
        
        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:errorDesc , loaingShowView: self.view)
       
    }
}
