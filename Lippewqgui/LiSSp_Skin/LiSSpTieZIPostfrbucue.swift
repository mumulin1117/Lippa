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
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        ssuitreatNet()
        takeColIconLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 12)
        
        enImageSSIPOViol.isHidden = true
        sureaddINgLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 27)
    }
    private func ssuitreatNet() {
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        enImageSSIPOViol.isHidden = true
        sedescribitTextView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        sedescribitTextView.maskLippaRoundCorner(rMakLSSIpadius: 12)
    }
    @IBAction func stakwingToArtsee(_ sender: UIButton) {
        let status = AVCaptureDevice.authorizationStatus(for: .video)
        enImageSSIPOViol.isHidden = true
        if status == .authorized {
            self.openMineTakeSSIPCamera()
            self.pickerSSIPVC?.delegate = self
        } else if status == .notDetermined {
            AVCaptureDevice.requestAccess(for: .video) { granted in
                if granted {
                    DispatchQueue.main.async {
                        self.openMineTakeSSIPCamera()
                        self.pickerSSIPVC?.delegate = self
                    }
                }
            }
        } else {
            // 提示用户打开相机权限
            shiVabyuiogPermisson()
        }
        
    }
    
    struct MakeupStep: Codable, Equatable {
        let stepNumber: Int
        var actionDescription: String
        var productUsed: String?
        var techniqueTip: String?
        var mediaType: MediaType = .text
        
        enum MediaType: String, Codable {
            case text = "Pure text explanation"
            case image = "Step diagram"
            case video = "Operation demonstration video"
        }
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        enImageSSIPOViol.isHidden = true
        
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            picker.dismiss(animated: true, completion: nil)
            return
        }
       
        ssuitreatNet(gibernSSIP: image)
        picker.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - 界面组件
       private lazy var stepRecorderStack: UIStackView = {
           let stack = UIStackView()
           stack.axis = .vertical
           stack.spacing = 16
           stack.isLayoutMarginsRelativeArrangement = true
           stack.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16)
           stack.layer.cornerRadius = 16
           stack.layer.borderWidth = 1
           stack.layer.borderColor = UIColor.systemPink.withAlphaComponent(0.3).cgColor
           return stack
       }()
    private func ssuitreatNet(gibernSSIP:UIImage) {
        DispatchQueue.main.async(execute: DispatchWorkItem(block: {
           
            self.manSSIPStataus = gibernSSIP
            self.takeColIconLIPSS.setBackgroundImage(gibernSSIP, for:.normal)
        }))
    }
 
    private lazy var addStepButton: UIButton = {
           let button = UIButton(type: .system)
           button.setTitle("➕  Add new steps", for: .normal)
           button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
           
           button.layer.cornerRadius = 22
           button.backgroundColor = .systemPink.withAlphaComponent(0.1)
           return button
       }()
    
    
    @IBAction func surestareAiUpload(_ sender: UIButton) {
        enImageSSIPOViol.isHidden = true
        if self.manSSIPStataus == nil {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Pdlyetarsgei htyafkjeo uan apqhuontbot cfdiwrrsstd!".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        
        guard let artdesc = sedescribitTextView.text,artdesc.isEmpty == false,artdesc != "Talkspace description" else {
            
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Pjlfezadsnez bdreesmcmrritbo kyaonufrb ipvoksatw xfgixrpsztk!".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        ssuipCreaNet()
        
     
    }
    private let emptyStateView: UIView = {
            let view = UIView()
            let image = UIImageView(image: UIImage(systemName: "paintpalette")?.withTintColor(.systemGray4, renderingMode: .alwaysOriginal))
        let label = UILabel.init()
        
        label.text = "There is no record of makeup steps yet"
        
        label.font = UIFont.systemFont(ofSize: 14)
            
            view.addSubview(image)
            view.addSubview(label)
            
            image.snp.makeConstraints {
                $0.centerX.equalToSuperview()
                $0.top.equalToSuperview().offset(80)
            }
            
            label.snp.makeConstraints {
                $0.centerX.equalToSuperview()
                $0.top.equalTo(image.snp.bottom).offset(12)
            }
            
            return view
        }()
    private func ssuipCreaNet() {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "uxpclbobandgienrgs.x.p.m.m.".oranApolWothCharrterString(), loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 2.5) {
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
            
            self.navigationController?.popViewController(animated: true)
            
            AppDelegate.showSSIPSuccessTips(acccusString: "Ucphleoealdc msquxckcjekscssfsudlb,p iyxocuqri zpcovsetm xwrieldlf ibuez xdqibsvpflrasyjeide oaafithesrj erueivriverw".oranApolWothCharrterString())
            
        }
    }
    

        
        private func updateEmptyStateVisibility() {
            emptyStateView.isHidden = true
        }

}
