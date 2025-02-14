//
//  LiSSpPersionlistPostfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpPersionlistPostfrbucue:  LissipSecondFrbucue {
    
    
    @IBOutlet weak var facerSSIp: UIButton!
    @IBOutlet weak var foowlererSSIp: UIButton!
    
    
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var pesinRelationSSIP: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        pesinRelationSSIP.delegate = self
        pesinRelationSSIP.dataSource = self
        
        pesinRelationSSIP.backgroundColor = .clear
        pesinRelationSSIP.register(LiSSRelaotuinCell.self, forCellWithReuseIdentifier: "LiSSRelaotuinCellIS")
        
    }


    @IBAction func updachicedShingh(_ sender: UIButton) {
        
        facerSSIp.isSelected = false
        foowlererSSIp.isSelected = false
        
        sender.isSelected = true
        
        self.pesinRelationSSIP.reloadData()
    }
    
}


extension LiSSpPersionlistPostfrbucue:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemwer = (UIScreen.main.bounds.width - 24 - 24)/3
        
        return CGSize(width: itemwer, height: 122)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if facerSSIp.isSelected  {
            return LiSSpBArbucue.SSIPlA.facrewemeSSIP.count
        }else{
            return LiSSpBArbucue.SSIPlA.FolsdwemeSSIP.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let lippcee = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSRelaotuinCellIS", for: indexPath) as! LiSSRelaotuinCell
        
        if facerSSIp.isSelected  {
            
            lippcee.babdaerView.image = UIImage(named: LiSSpBArbucue.SSIPlA.facrewemeSSIP[indexPath.row]["ssipPicdty"] ?? "")
            lippcee.nicmerSSIP.text = LiSSpBArbucue.SSIPlA.facrewemeSSIP[indexPath.row]["ssipNadme"]
           
        }else{
            lippcee.babdaerView.image = UIImage(named: LiSSpBArbucue.SSIPlA.facrewemeSSIP[indexPath.row]["ssipPicdty"] ?? "")
            lippcee.nicmerSSIP.text = LiSSpBArbucue.SSIPlA.facrewemeSSIP[indexPath.row]["ssipNadme"]
           
        }
        
        return lippcee
    }
    
    
    
}


class LiSSRelaotuinCell: UICollectionViewCell {
    let nicmerSSIP = UILabel.init()
    let babdaerView = UIImageView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        nicmerSSIP.textColor = .white
        nicmerSSIP.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
      
        babdaerView.maskLippaRoundCorner(rMakLSSIpadius: 30)
        babdaerView.contentMode = .scaleAspectFill
        
        self.maskLippaRoundCorner(rMakLSSIpadius: 20)
        self.contentView.backgroundColor = UIColor(red: 0.04, green: 0.27, blue: 0.8, alpha: 1)
        
        contentView.addSubview(babdaerView)
        contentView.addSubview(nicmerSSIP)
        
        babdaerView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(60)
            make.top.equalToSuperview().offset(14)
        }
        
        nicmerSSIP.snp.makeConstraints { make in
            make.top.equalTo(babdaerView.snp.bottom).offset(11)
            make.centerX.equalToSuperview()
            
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
