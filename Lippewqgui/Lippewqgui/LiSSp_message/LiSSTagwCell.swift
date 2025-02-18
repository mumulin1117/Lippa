//
//  LiSSTagwCell.swift
//  Lippewqgui
//


import UIKit

class LiSSTagwCell: UITableViewCell {
    let buberryoleSSIP = UILabel.init()
    private  let syingwhtaSSIP = UIView.init()
    
    
    var okayIsMinwe:Bool = true{
        didSet{
            
            
            buberryoleSSIP.textAlignment = okayIsMinwe ? .right : .left
            
            if okayIsMinwe {
                buberryoleSSIP.textColor = .white
                syingwhtaSSIP.layer.maskedCorners  = [.layerMinXMinYCorner,.layerMaxXMinYCorner,
                                                      .layerMinXMaxYCorner]
                buberryoleSSIP.numberOfLines = 0
                syingwhtaSSIP.backgroundColor = UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
                 buberryoleSSIP.snp.remakeConstraints { make in
                     make.right.equalToSuperview().offset(-40)
                     make.top.equalToSuperview().offset(16 + 30)
                     make.bottom.equalToSuperview().offset(-16 - 30)
                     make.width.greaterThanOrEqualTo(80)
                     make.width.lessThanOrEqualTo(266)
                 }
                 
                 syingwhtaSSIP.snp.remakeConstraints { make in
                     make.right.equalTo(buberryoleSSIP.snp.right).offset(16)
                     make.left.equalTo(buberryoleSSIP.snp.left).offset(-16)
                     make.top.equalTo(buberryoleSSIP.snp.top).offset(-16)
                     make.bottom.equalTo(buberryoleSSIP.snp.bottom).offset(16)
                 }
                return
            }
            
            
            buberryoleSSIP.textColor = .black
            
            buberryoleSSIP.numberOfLines = 0
            syingwhtaSSIP.backgroundColor = .white
            
            syingwhtaSSIP.layer.maskedCorners  = [.layerMinXMinYCorner,.layerMaxXMinYCorner,
                                                  .layerMaxXMaxYCorner]
            buberryoleSSIP.snp.remakeConstraints { make in
                make.left.equalToSuperview().offset(40)
                make.top.equalToSuperview().offset(16 + 30)
                make.bottom.equalToSuperview().offset(-16 - 30)
                make.width.greaterThanOrEqualTo(80)
                make.width.lessThanOrEqualTo(266)
            }
            
            syingwhtaSSIP.snp.remakeConstraints { make in
                make.left.equalTo(buberryoleSSIP.snp.left).offset(-16)
                make.right.equalTo(buberryoleSSIP.snp.right).offset(16)
                make.top.equalTo(buberryoleSSIP.snp.top).offset(-16)
                make.bottom.equalTo(buberryoleSSIP.snp.bottom).offset(16)
            }
               
            
        }
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        buberryoleSSIP.textColor = .white
        
        buberryoleSSIP.numberOfLines = 0
        syingwhtaSSIP.backgroundColor = UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
        
        contentView.addSubview(syingwhtaSSIP)
        contentView.addSubview(buberryoleSSIP)
        syingwhtaSSIP.layer.masksToBounds = true
        
        self.backgroundColor = .clear
       
        buberryoleSSIP.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-40)
            make.top.equalToSuperview().offset(16 + 30)
            make.bottom.equalToSuperview().offset(-16 - 30)
            make.width.greaterThanOrEqualTo(80)
            make.width.lessThanOrEqualTo(266)
        }
        
        syingwhtaSSIP.snp.makeConstraints { make in
            make.right.equalTo(buberryoleSSIP.snp.right).offset(16)
            make.left.equalTo(buberryoleSSIP.snp.left).offset(-16)
            make.top.equalTo(buberryoleSSIP.snp.top).offset(-16)
            make.bottom.equalTo(buberryoleSSIP.snp.bottom).offset(16)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
