//
//  LiSSpTieZIPostfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
import AVFoundation

/// 发帖
class LiSSpTieZIPostfrbucue:  LissipSecondFrbucue , UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    @IBOutlet weak var ChokenSSIP: UIButton!
    var manSSIPStataus:UIImage?
    @IBOutlet weak var takeColIconLIPSS: UIButton!
    @IBOutlet weak var sedescribitTextView: UITextView!
    
    @IBOutlet weak var sureaddINgLIPSS: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        
        sedescribitTextView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        sedescribitTextView.maskLippaRoundCorner(rMakLSSIpadius: 12)
        takeColIconLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 12)
        
        
        sureaddINgLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 27)
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
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Please take a photo first!", loaingShowView: self.view)
            return
        }
        
        guard let artdesc = sedescribitTextView.text,artdesc.isEmpty == false,artdesc != "Talkspace description" else {
            
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Please describ your post first!", loaingShowView: self.view)
            return
        }
        
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "uploading.....", loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 2.5) {
            AppDelegate.showSSIPSuccessTips(acccusString: "Upload successful, your post will be displayed after review")
            
            self.navigationController?.popViewController(animated: true)
        }
    }


}
