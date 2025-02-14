//
//  LiSSpMeaddgeBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpMeaddgeBootomrbucue: LiSSpNOrmalSnmingertips,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.relationlistSSIP {
            return CGSize.init(width: 65, height: 65)
        }else{
            return CGSize.init(width: UIScreen.main.bounds.size.width - 24, height: 88)
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.relationlistSSIP {
            return LiSSpBArbucue.SSIPlA.totalvrdataSSIP.count
        }else{
            return LiSSpBArbucue.SSIPlA.cxhatArraySSIP.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.relationlistSSIP {
            
            let cokiactivecell = collectionView.dequeueReusableCell(withReuseIdentifier: "actieavtoerUsed", for: indexPath) as! UICollectionViewCell
            
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
            
            let cokiactivecell = collectionView.dequeueReusableCell(withReuseIdentifier: "actieavtoerUsed", for: indexPath) as! LiSSpmeassgrLifarCell
            cokiactivecell.talkingSang = LiSSpBArbucue.SSIPlA.cxhatArraySSIP[indexPath.row]
            return cokiactivecell
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(updataSSIPUI), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        
        activVieSSIP.delegate = self
        activVieSSIP.dataSource = self
        activVieSSIP.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "actieavtoerUsed")
        notifationViewSSIP.delegate = self
        notifationViewSSIP.dataSource = self
        
        activVieSSIP.register(LiSSpmeassgrLifarCell.self, forCellWithReuseIdentifier: "LiSSpmeassgrLifarCellUsed")
    }



}
