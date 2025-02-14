//
//  LiSSpAIResuiltingsingefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpAIResuiltingsingefrbucue: LissipSecondFrbucue {
    
    @IBOutlet weak var appCiateSSIP: UIImageView!
    
    
    @IBOutlet weak var sedescribitTextView: UITextView!
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    var transImagSSIP:UIImage?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        appCiateSSIP.image = transImagSSIP
    }
    
    
    
    @IBAction func shingcaseOriginReport(_ sender: UIButton) {
        
        let normailAreport = UIAlertController(title: "Report AI Content", message:nil, preferredStyle: .actionSheet)
        let reasonsdonin = ["Offensive Language","Inaccuracy","Privacy Violation","Spam or Irrelevance"]
        
        for item in reasonsdonin {
            normailAreport.addAction(UIAlertAction(title: item, style: .default, handler: { alertSSIP in
                AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
                self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                    AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                    AppDelegate.showSSIPSuccessTips(acccusString: "Thank you for your supervision. We will verify and handle it as soon as possible")
                }
               
            }))
        }
       
        
        normailAreport.addAction(UIAlertAction(title: "cancel", style: .default))
        
        self.present(normailAreport, animated: true)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingROOTSSIP), for: .touchUpInside)

        sedescribitTextView.contentInset = UIEdgeInsets(top: 62, left: 14, bottom: 20, right: 14)
        
        sedescribitTextView.maskLippaRoundCorner(rMakLSSIpadius: 12)
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "AI Appreciation.....", loaingShowView: self.view)
        // 创建请求的 URL
            guard let SSIPurl = URL(string: "http://www.foresttreetrail89.xyz/talktwo/askQuestionv2") else {
                return
            }
            
            // 设置请求
            var SSIPrequest = URLRequest(url: SSIPurl)
            SSIPrequest.httpMethod = "POST"
            SSIPrequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            // 设置请求体
            let SSIPparameters: [String: Any] = [
                "question": "Assuming you are now an art collection appreciation robot, capable of generating appreciation copy based on uploaded images. I don't have any pictures for you now. Please randomly generate a collection appreciation copy within 1000 words.",
                "questionType": 1,
                "eqNo": "5555"
            ]
            
            do {
                SSIPrequest.httpBody = try JSONSerialization.data(withJSONObject: SSIPparameters, options: [])
            } catch {
                print("Error creating JSON from parameters: \(error.localizedDescription)")
                return
            }
            
            // 执行请求
            let SSIPtask = URLSession.shared.dataTask(with: SSIPrequest) { SSIPdata, SSIPresponse, SSIPerror in
                // 返回主线程更新 UI
                DispatchQueue.main.async {
                    AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                    
                    if let SSIPerror = SSIPerror {
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: SSIPerror.localizedDescription, loaingShowView: self.view)
                        
                        return
                    }
                    
                    guard let SSIPdata = SSIPdata else {
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "No data received.", loaingShowView: self.view)
                        
                        
                        return
                    }
                    
                    do {
                        if let SSIPjson = try JSONSerialization.jsonObject(with: SSIPdata, options: []) as? [String: Any] {
                            guard let SSIPcontent = SSIPjson["data"] as? String else {
                                AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Data format error occurred.....", loaingShowView: self.view)
                                return
                            }
                            self.sedescribitTextView.text = SSIPcontent
                            
                        } else {
                            
                            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Request error occurred.....", loaingShowView: self.view)
                         
                        }
                    } catch {
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "JSON parsing error: \(error.localizedDescription)", loaingShowView: self.view)
                     
                     
                    }
                }
            }
            
            SSIPtask.resume() // 启动请求
        
        
        
        
        
    }


    @objc func ctterBsdNoingROOTSSIP()  {
        self.navigationController?.popToRootViewController(animated: true)
        
    }

}


