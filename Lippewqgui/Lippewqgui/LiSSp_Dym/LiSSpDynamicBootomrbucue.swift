//
//  LiSSpDynamicBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
import SnapKit
/// 动态贴子
class LiSSpDynamicBootomrbucue: LiSSpNOrmalSnmingertips,UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return LiSSpBArbucue.SSIPlA.totalvrdataSSIP.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        
        let selidINdfo =  LiSSpBArbucue.SSIPlA.totalvrdataSSIP[indexPath.row]
        let CellIDSIPP = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSpSeeingPOsecellreused", for: indexPath) as! LiSSpSeeingPOsecell
        CellIDSIPP.postCenDataSSIP = selidINdfo
        return CellIDSIPP
       
    }
    
    @IBOutlet weak var topcircleImagSipp: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let funflow  = UICollectionViewFlowLayout()
        funflow.itemSize = CGSize(width: UIScreen.main.bounds.width - 24, height: 420)
        funflow.minimumLineSpacing = 12
        funflow.minimumInteritemSpacing = 12
        
                                  
       
        let rundatabviewSIPP = UICollectionView.init(frame: .zero, collectionViewLayout: funflow)
        
        
        rundatabviewSIPP.delegate = self
        rundatabviewSIPP.dataSource = self
        rundatabviewSIPP.showsVerticalScrollIndicator = false
        rundatabviewSIPP.backgroundColor = .clear
        rundatabviewSIPP.register(UINib(nibName: "LiSSpSeeingPOsecell", bundle: nil), forCellWithReuseIdentifier: "LiSSpSeeingPOsecellreused")
        rundatabviewSIPP.isHidden = true
        view.addSubview(rundatabviewSIPP)
        rundatabviewSIPP.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.top.equalTo(topcircleImagSipp.snp.bottom).offset(12)
            make.bottom.equalToSuperview()
        }
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "loading...", loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
            rundatabviewSIPP.isHidden = false
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
        }
        
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selidINdfo =  LiSSpBArbucue.SSIPlA.totalvrdataSSIP[indexPath.row]
        self.navigationController?.pushViewController(LiSSpTieZIngefrbucue.init(postCenDataSSIP: selidINdfo), animated: true)
    }
    
    
    
    @IBAction func takinSIPPhpost(_ sender: UIButton) {
        
        if sender.tag == 10 {
            self.navigationController?.pushViewController(LiSSpSearcZIPostfrbucue.init(), animated: true)
        }else{
            
            self.navigationController?.pushViewController(LiSSpTieZIPostfrbucue.init(), animated: true)
            
        }
        
        
    }
    

}
