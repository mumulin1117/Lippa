//
//  LiSSpSeeingPOsecell.swift
//  Lippewqgui
//


import UIKit

class LiSSpSeeingPOsecell: UICollectionViewCell {
    @IBOutlet weak var postingUserimgSSIP: UIImageView!
    
    @IBOutlet weak var postusernamSSIP: UILabel!
    
    @IBOutlet weak var beautufulbl: UIButton!
    
    @IBOutlet weak var postingCOntentCAseSSIP: UIImageView!
    
    
    
    @IBOutlet weak var postingContetntesxrSSIP: UILabel!
    
    
    
    @IBOutlet weak var coaprmentSSIP: UIButton!
    
    
    @IBOutlet weak var collecPost: UIButton!
    
    var postCenDataSSIP:Dictionary<String,String> = [:]{
        didSet{
            postingUserimgSSIP.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
            postusernamSSIP.text = postCenDataSSIP["ssipNadme"]
            
            postingCOntentCAseSSIP.image = UIImage(named: postCenDataSSIP["ssipPublishPic"] ?? "")
            
            postingContetntesxrSSIP.text = postCenDataSSIP["ssipPublishDesc"]
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.maskLippaRoundCorner(rMakLSSIpadius: 20)
        beautufulbl.maskLippaRoundCorner(rMakLSSIpadius: 17)
        postingUserimgSSIP.maskLippaRoundCorner(rMakLSSIpadius: 21.5)
    }

}
