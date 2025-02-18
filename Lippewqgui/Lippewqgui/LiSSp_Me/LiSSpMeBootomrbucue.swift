//
//  LiSSpMeBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpMeBootomrbucue:  LissipSecondFrbucue,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var ChokenSSIP: UIButton!
   
    
    @IBOutlet weak var fancereCountSIpp: UILabel!
    
    @IBOutlet weak var fowerereCountSIpp: UILabel!
   
    @IBOutlet weak var whonameSIPP: UILabel!
    
    
    @IBOutlet weak var owetherINfSIPP: UICollectionView!
    
    @IBOutlet weak var delertSIPP: UIButton!
    
    
    @IBOutlet weak var loagerrtSIPP: UIButton!
    
    
    @IBOutlet weak var ownedSIpp: UIImageView!
    
   
    @IBOutlet weak var thinhXOCinbg: UIView!
    
    
    
    let minSetinggoSipp = [("Wallet","walSSIPlet"),("My profile","SSIPProfile"),("Star","FeedSSIPback"),("User Agreement","walSSIPlet"),("Privacy Policy","walSSIPlet")]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ownedSIpp.image = LiSSpBArbucue.SSIPlA.logPucserdataSSIP
        
        whonameSIPP.text = LiSSpBArbucue.SSIPlA.logUoserdataSSIP["ssipNadme"]
        
        fancereCountSIpp.text = "\(LiSSpBArbucue.SSIPlA.facrewemeSSIP.count)"
        
        fowerereCountSIpp.text = "\(LiSSpBArbucue.SSIPlA.FolsdwemeSSIP.count)"
    
    }
    
    @IBAction func fanceToSIPP(_ sender: UIButton) {
        let akoij = LiSSpPersionlistPostfrbucue.init()
        akoij.tatSSipype = 0
        self.navigationController?.pushViewController(akoij, animated: true)
    }
    
    @IBAction func followedToSIPP(_ sender: UIButton) {
        let akoij = LiSSpPersionlistPostfrbucue.init()
        akoij.tatSSipype = 1
        self.navigationController?.pushViewController(akoij, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        
        
        delertSIPP.addTarget(self, action: #selector(shanAlRemoveAccount), for: .touchUpInside)
        loagerrtSIPP.addTarget(self, action: #selector(quiteAlRemoveAccount), for: .touchUpInside)
        
        
        
        thinhXOCinbg.maskLippaRoundCorner(rMakLSSIpadius: 18)
       
        loagerrtSIPP.maskLippaRoundCorner(rMakLSSIpadius: 21)
        delertSIPP.maskLippaRoundCorner(rMakLSSIpadius: 21)
        
        owetherINfSIPP.register(LiSSpMininfoCell.self, forCellWithReuseIdentifier: "LiSSpMininfoCellID")
        owetherINfSIPP.delegate = self
        owetherINfSIPP.dataSource = self
        
        ownedSIpp.maskLippaRoundCorner(rMakLSSIpadius: 38)
    }
    
    
   @objc func shanAlRemoveAccount() {
        
       let ssipoAlera = UIAlertController(title: "Delete Account", message: "After deleting the account, all information related to the account will be removed!", preferredStyle:.alert)
       
       ssipoAlera.addAction(UIAlertAction(title: "Sure", style: .default, handler: { ddtion in
           AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Deleteing...", loaingShowView: self.view)
           
           self.performBlockAfterDelayINSSIP(secondsSSIP: 1.0) {
               ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
               AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
           }
       }))
       
       ssipoAlera.addAction(UIAlertAction(title: "Cancel", style: .default))
       self.present(ssipoAlera, animated: true)
   }
    
    
    @objc func quiteAlRemoveAccount() {
        LiSSpBArbucue.SSIPlA.olkauSSIplogin = true
        
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: UIScreen.main.bounds.size.width - 76, height: 58)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 13
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        13
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        minSetinggoSipp.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cokiactivecell = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSpMininfoCellID", for: indexPath) as! LiSSpMininfoCell
        cokiactivecell.otherAuicSIPPA.text = minSetinggoSipp[indexPath.row].0
        cokiactivecell.otherkuioSIPPA.image = UIImage(named: minSetinggoSipp[indexPath.row].1)
        return cokiactivecell
        
        
        
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(LiSSpWallwnetBucue.init(), animated: true)
        case 1:
            self.navigationController?.pushViewController(LiSSpPesoncenstfrbucue.init(), animated: true)
            
        case 2:
#warning("idYOUR_APP_ID")
            if let url = URL(string: "itms-apps://itunes.apple.com/app/idYOUR_APP_ID?action=write-review") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                
            }
        case 3:
            self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: 2), animated: true)
        case 4:
            self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: 1), animated: true)
        default:
            break
        }
    }
    
    
}




class LiSSpMininfoCell: UICollectionViewCell {
    let otherAuicSIPPA = UILabel.init()
    let otherkuioSIPPA = UIImageView.init()
    let otherqoSIPPA = UIImageView.init()
   
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        otherqoSIPPA.image = UIImage.init(named: "ssipNertback")
        contentView.addSubview(otherAuicSIPPA)
        contentView.addSubview(otherkuioSIPPA)
        contentView.addSubview(otherqoSIPPA)
        contentView.backgroundColor = UIColor(red: 0.84, green: 0.88, blue: 0.13, alpha: 1)
        contentView.maskLippaRoundCorner(rMakLSSIpadius: 16)
        otherkuioSIPPA.snp.makeConstraints { make in
            make.width.height.equalTo(28)
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(12)
            
        }
        
        otherAuicSIPPA.snp.makeConstraints { make in
            make.left.equalTo(otherkuioSIPPA.snp.right).offset(12)
            make.centerY.equalToSuperview()
        
            
        }
        otherqoSIPPA.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.trailing.equalToSuperview().offset(-10)
            make.centerY.equalToSuperview()
            
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
