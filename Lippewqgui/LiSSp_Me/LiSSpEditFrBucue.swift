//
//  LiSSpEditFrBucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpEditFrBucue:  LissipSecondFrbucue , UIImagePickerControllerDelegate & UINavigationControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        MakeupPreferences.preferredStyles.count
    }
    
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var shineView: UIImageView!
    
    
    @IBOutlet weak var shoingNameSSIP: UITextField!
    
    
    @IBOutlet weak var shaingmrSSIP: UITextField!
    
    
    private lazy var makeupStylePicker: UIPickerView = {
        let picker = UIPickerView()
        picker.dataSource = self
        picker.delegate = self
        picker.backgroundColor = .systemGray6
        return picker
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        shoingNameSSIP.text = LipSigggneSnmingertips.logUoserdataSSIP["ssipDtfestBriedf"]
        shaingmrSSIP.text = LipSigggneSnmingertips.logUoserdataSSIP["ssipNadme"]
        shineView.image = LipSigggneSnmingertips.logPucserdataSSIP
        
        shineView.maskLippaRoundCorner(rMakLSSIpadius: 28)
    }

    @IBAction func editNoingSSIp(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) == false{
            
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Tehlep bcouurwryegnptu ldgexvlilcnex ddxofejsn tnrootl ysuuhpipmolrbtr a gpthoojtcocsq vlgirbnaarmy".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        
        
        openMineTakeSSIPCamera()
        self.pickerSSIPVC?.delegate = self
    }
    private lazy var skillLevelSlider: UISlider = {
            let slider = UISlider()
            slider.minimumValue = 0
            slider.maximumValue = 12
            slider.value = 2 // 默认选中"熟练工"
            
            return slider
       
    }()
    
    
    
    
    
  
    @IBAction func baocunDDSSIp(_ sender: Any) {
        guard let aboutsipp = shoingNameSSIP.text,
              aboutsipp.count != 0 ,
        let namesipp = shaingmrSSIP.text,
        namesipp.count != 0
        
        else {
            
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Cxhyaenhgveu qnjakmjep uodrh lBcreiteafj fcbabngtd gnsolth uboek fexmopotpyp!".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        ssuipCreaNet(namesipp: namesipp, aboutsipp: aboutsipp)
        
        self.performBlockAfterDelayINSSIP(secondsSSIP: 1.5) {
            
            self.navigationController?.popViewController(animated: true)
            
            AppDelegate.showSSIPSuccessTips(acccusString: "unpadtahthec ochowmxpqlueotwec!".oranApolWothCharrterString())
           
        }
       
        
    }
    private func ssuipCreaNet(namesipp:String,aboutsipp:String) {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Cbhcaonvgrerikncgq.x.j.a.".oranApolWothCharrterString(), loaingShowView: self.view)
        LipSigggneSnmingertips.logUoserdataSSIP["ssipNadme"] = namesipp
        
        LipSigggneSnmingertips.logUoserdataSSIP["ssipDtfestBriedf"] = aboutsipp
        LipSigggneSnmingertips.logPucserdataSSIP = self.shineView.image
        
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
        
        AppDelegate.skvertLocalAvatoWituserSSIPI(usrSSIPID: useiIDING ?? "345", saveringIMg: self.shineView.image!)
    }
    
    private let favoriteBrandTags: [String] = {
            var tags = MakeupPreferences.favoriteBrands
        tags.insert("otherts", at: 0)
            return tags
       
    }()
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            picker.dismiss(animated: true, completion: nil)
            return
        }
       
        ssuitreatNet(gibernSSIP: image)
        picker.dismiss(animated: true, completion: nil)
    }
    
    private struct MakeupPreferences {
        static let preferredStyles = ["Natural nude makeup "," smoky makeup "," Korean style shimmer "," European and American thick makeup "," Japanese style transparency "]
        static let skillLevels = ["Novice Village 🐣 Skilled worker 💄 Expert level 🎨 Master level 🏆 "]
        static let favoriteBrands = ["Lippa", "MAC", "NARS", "SUQQU", "Charlotte Tilbury"]
        
    }
    private func ssuitreatNet(gibernSSIP:UIImage) {
        DispatchQueue.main.async(execute: DispatchWorkItem(block: {
           
            self.shineView.image = gibernSSIP
        }))
    }
}



