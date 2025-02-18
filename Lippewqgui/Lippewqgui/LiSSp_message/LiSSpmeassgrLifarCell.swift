//
//  LiSSpmeassgrLifarCell.swift
//  Lippewqgui
//


import UIKit

/// 聊天列表
class LiSSpmeassgrLifarCell: UICollectionViewCell {
    let nicmerSSIP = UILabel.init()
    let babdaerView = UIImageView()
    let sauingSSIP = UILabel.init()
    
    
    var talkingSang:SSIPChatUSerFwbnke?{
        didSet{
            let datagking = talkingSang?.whoseSSIP
            
            let firstgcomg = talkingSang?.chatSSIPList.first
            
            if firstgcomg?.0 == true {
                
                nicmerSSIP.text = "Me"
//                babdaerView.image = LipSigggneSnmingertips.logPucserdataSSIP
            }else{
                nicmerSSIP.text = datagking?["ssipNadme"] ?? ""
                
            }
            babdaerView.image = UIImage(named: datagking?["ssipPicdty"] ?? "")
            sauingSSIP.text = firstgcomg?.1
        }
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nicmerSSIP.textColor = .white
        nicmerSSIP.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        sauingSSIP.textColor = .lightGray
        sauingSSIP.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        
        babdaerView.maskLippaRoundCorner(rMakLSSIpadius: 30)
        babdaerView.contentMode = .scaleAspectFill
        
        self.maskLippaRoundCorner(rMakLSSIpadius: 20)
        self.contentView.backgroundColor = .black
        
        contentView.addSubview(babdaerView)
        contentView.addSubview(nicmerSSIP)
        contentView.addSubview(sauingSSIP)
        
        babdaerView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.width.height.equalTo(60)
            make.centerY.equalToSuperview()
        }
        
        nicmerSSIP.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.leading.equalTo(babdaerView.snp.trailing).offset(11)
            
        }
        
        sauingSSIP.snp.makeConstraints { make in
            make.top.equalTo(nicmerSSIP.snp.bottom).offset(12)
            make.leading.equalTo(babdaerView.snp.trailing).offset(11)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
