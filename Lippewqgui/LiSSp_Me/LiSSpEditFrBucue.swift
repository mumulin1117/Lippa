//
//  LiSSpEditFrBucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpEditFrBucue:  LissipSecondFrbucue , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var shineView: UIImageView!
    
    
    @IBOutlet weak var shoingNameSSIP: UITextField!
    
    
    @IBOutlet weak var shaingmrSSIP: UITextField!
    
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
            
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "The current device does not support  photos libary", loaingShowView: self.view)
            return
        }
        
        
        openMineTakeSSIPCamera()
        self.pickerSSIPVC?.delegate = self
    }
    
  
    @IBAction func baocunDDSSIp(_ sender: Any) {
        guard let aboutsipp = shoingNameSSIP.text,
              aboutsipp.count != 0 ,
        let namesipp = shaingmrSSIP.text,
        namesipp.count != 0
        
        else {
            
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Change name or Brief cant not be empty!", loaingShowView: self.view)
            return
        }
        ssuipCreaNet(namesipp: namesipp, aboutsipp: aboutsipp)
        
        self.performBlockAfterDelayINSSIP(secondsSSIP: 1.5) {
            
            self.navigationController?.popViewController(animated: true)
            
            AppDelegate.showSSIPSuccessTips(acccusString: "update complete!")
           
        }
       
        
    }
    private func ssuipCreaNet(namesipp:String,aboutsipp:String) {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Changeing....", loaingShowView: self.view)
        LipSigggneSnmingertips.logUoserdataSSIP["ssipNadme"] = namesipp
        
        LipSigggneSnmingertips.logUoserdataSSIP["ssipDtfestBriedf"] = aboutsipp
        LipSigggneSnmingertips.logPucserdataSSIP = self.shineView.image
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            picker.dismiss(animated: true, completion: nil)
            return
        }
       
        ssuitreatNet(gibernSSIP: image)
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    private func ssuitreatNet(gibernSSIP:UIImage) {
        DispatchQueue.main.async(execute: DispatchWorkItem(block: {
           
            self.shineView.image = gibernSSIP
        }))
    }
}



