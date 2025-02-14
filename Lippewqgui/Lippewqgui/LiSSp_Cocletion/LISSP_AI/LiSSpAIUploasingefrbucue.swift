//
//  LiSSpAIUploasingefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//
import AVFoundation
import UIKit

class LiSSpAIUploasingefrbucue: LissipSecondFrbucue , UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var takeColIconLIPSS: UIButton!

    @IBOutlet weak var sureaddINgLIPSS: UIButton!
    
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    var manSSIPStataus:UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
    
        takeColIconLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 24)
        sureaddINgLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 26)
        
        
    }

    @IBAction func stakwingToArtsee(_ sender: UIButton) {
        let status = AVCaptureDevice.authorizationStatus(for: .video)
                
        if status == .authorized {
            self.openMineTakeSSIPCamera()
        } else if status == .notDetermined {
            AVCaptureDevice.requestAccess(for: .video) { granted in
                if granted {
                    DispatchQueue.main.async {
                        self.openMineTakeSSIPCamera()
                    }
                }
            }
        } else {
            // 提示用户打开相机权限
            let alert = UIAlertController(title: "Camera Permission Denied", message: "Please enable camera access in the Settings.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        if let image = info[.originalImage] as? UIImage {
            self.manSSIPStataus = image
            takeColIconLIPSS.setBackgroundImage(image, for:.normal)
        }
        dismiss(animated: true, completion: nil)
       
    }
    
    
    private func openMineTakeSSIPCamera() {
           
        let piscshoingSSIPPicker = UIImagePickerController()
        piscshoingSSIPPicker.delegate = self
        piscshoingSSIPPicker.sourceType = .camera
        present(piscshoingSSIPPicker, animated: true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func surestareAiUpload(_ sender: UIButton) {
        if self.manSSIPStataus == nil {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Please upload photos of your collection first!", loaingShowView: self.view)
        }else{
            let resulitingAi = LiSSpAIResuiltingsingefrbucue.init()
            resulitingAi.transImagSSIP = self.manSSIPStataus
            self.navigationController?.pushViewController(resulitingAi, animated: true)
            
        }
    }
    
}
