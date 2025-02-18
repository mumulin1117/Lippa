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
        let camretaPick = UIImagePickerController()
        camretaPick.delegate = self
       
            
        camretaPick.sourceType = .camera
        
        self.present(camretaPick, animated: true, completion: nil)
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
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Changeing....", loaingShowView: self.view)
        LipSigggneSnmingertips.logUoserdataSSIP["ssipNadme"] = namesipp
        
        LipSigggneSnmingertips.logUoserdataSSIP["ssipDtfestBriedf"] = aboutsipp
        LipSigggneSnmingertips.logPucserdataSSIP = self.shineView.image
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            AppDelegate.showSSIPSuccessTips(acccusString: "update complete!")
            
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
           
            DispatchQueue.main.async(execute: DispatchWorkItem(block: {
               
                self.shineView.image = image
            }))
        }
       
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
