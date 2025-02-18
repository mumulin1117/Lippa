//
//  LiSSpMeaddgeBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpMeaddgeBootomrbucue: LiSSpNOrmalSnmingertips,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.activVieSSIP {
            return CGSize.init(width: 65, height: 65)
        }else{
            return CGSize.init(width: UIScreen.main.bounds.size.width - 24, height: 88)
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.activVieSSIP {
            return LiSSpBArbucue.SSIPlA.totalvrdataSSIP.count
        }else{
            return LiSSpBArbucue.SSIPlA.cxhatArraySSIP.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.activVieSSIP {
           
            let cokiactivecell = collectionView.dequeueReusableCell(withReuseIdentifier: "actieavtoerUsed", for: indexPath)
            
            if let avotoer = cokiactivecell.viewWithTag(33) as? UIImageView {
                avotoer.image = UIImage.init(named: LiSSpBArbucue.SSIPlA.totalvrdataSSIP[indexPath.row]["ssipPicdty"] ?? "")
            }else{
                
                let yuplder = UIImageView(image:UIImage.init(named: LiSSpBArbucue.SSIPlA.totalvrdataSSIP[indexPath.row]["ssipPicdty"] ?? ""))
                yuplder.maskLippaRoundCorner(rMakLSSIpadius: 32.5)
                cokiactivecell.addSubview(yuplder)
                yuplder.contentMode = .scaleAspectFill
                yuplder.snp.makeConstraints { make in
                    make.edges.equalToSuperview()
                }
                
            }
             
            
            return cokiactivecell
        }else{
            
            let cokiactivecell = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSpmeassgrLifarCellUsed", for: indexPath) as! LiSSpmeassgrLifarCell
            cokiactivecell.talkingSang = LiSSpBArbucue.SSIPlA.cxhatArraySSIP[indexPath.row]
            return cokiactivecell
        }
        
        
        
    }
    

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.activVieSSIP {
            let userssip = LiSSpBArbucue.SSIPlA.totalvrdataSSIP[indexPath.row]
            
            self.navigationController?.pushViewController(LiSSpItmeringBucue.init(postCenDataSSIP: userssip), animated: true)
        }else{
            let userssip = LiSSpBArbucue.SSIPlA.cxhatArraySSIP[indexPath.row]
            
            self.navigationController?.pushViewController(LiSSpChatstfrbucue.init(_PChatUSerFwbnke: userssip), animated: true)
        }
    }
    @IBOutlet weak var relationlistSSIP: UIButton!
    
    
  
    @IBOutlet weak var activVieSSIP: UICollectionView!
    
    
    
    @IBOutlet weak var notifationViewSSIP: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updataSSIPUI()
    }
    
    
   @objc func updataSSIPUI() {
       self.notifationViewSSIP.reloadData()
       
       self.activVieSSIP.reloadData()
    }
    
    
    @IBAction func fanceToSIPP(_ sender: UIButton) {
        let akoij = LiSSpPersionlistPostfrbucue.init()
       
        self.navigationController?.pushViewController(akoij, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(updataSSIPUI), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        
        activVieSSIP.delegate = self
        activVieSSIP.dataSource = self
    
        notifationViewSSIP.delegate = self
        notifationViewSSIP.dataSource = self
        
        
        
        self.activVieSSIP.isHidden = true
        self.notifationViewSSIP.isHidden = true
     
        notifationViewSSIP.register(LiSSpmeassgrLifarCell.self, forCellWithReuseIdentifier: "LiSSpmeassgrLifarCellUsed")
        activVieSSIP.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "actieavtoerUsed")
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "loading...", loaingShowView: self.view)
        
        self.performBlockAfterDelayINSSIP(secondsSSIP: 1.0) {
            self.activVieSSIP.isHidden = false
            self.notifationViewSSIP.isHidden = false
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
        }
    }



}
