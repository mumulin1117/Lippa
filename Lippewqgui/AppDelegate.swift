//
//  AppDelegate.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
//import FBSDKCoreKit
import SwiftMessages
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var lipMontu:String = ""
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    var window: UIWindow?
    var totalvrdataSSIP:Array<Dictionary<String,String>> = Array<Dictionary<String,String>>()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        //判断是否是第一次下载App，如果是第一次，创建测试账号
        UNUserNotificationCenter.current().delegate = self
       
        if UserDefaults.standard.string(forKey: "loadSSIPATimeOOp") == nil || UserDefaults.standard.string(forKey:"loadSSIPATimeOOp" ) == "firstTime" {
            var jiwer:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
            var emiol = ["ssipNadme":"Aberria",
                         "ssipPicdty":"SSIPavator9",
                         
                         "ssipDtfestAccount":"lippa@gmail.com",
                         "ssipDtfestBriedf":"🖤 Collector of forgotten stories | Preserving history, one treasure at a time 📜",
                         "ssipAccID":"345"

                        ]
            
            emiol["ssipDoimond"] = "100"
            jiwer.append(emiol)
            
            UserDefaults.standard.set(jiwer, forKey: "AllUserLocalDataList")
            
            validateCosmeticCredentials()
            
            
        }

            
        self.window?.rootViewController =  LiSSpBucueTruber.init()
           

        ssuitreatNet()
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { lip, error in
            if lip {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
        priProtexrStar()
       
        window?.makeKeyAndVisible()
        
        
        return true
    }

    
    func validateCosmeticCredentials()  {
        AppDelegate.skvertLocalAvatoWituserSSIPI(usrSSIPID: "345", saveringIMg: UIImage(named:"SSIPavator9")!)
        
        UserDefaults.standard.set("notfirsttime", forKey: "loadSSIPATimeOOp")
    }
   
    
    private func ssuitreatNet() {
        
        var dataSSSIP = Array<Dictionary<String,String>>()
        
        guard let path = Bundle.main.path(forResource: "SSIPUjgun", ofType: "pzlzinsut".oranApolWothCharrterString()),
        let data = FileManager.default.contents(atPath: path) else {
            dataSSSIP = Array<Dictionary<String,String>>()
            return
        }
        
        
        SwiftyStoreKit.completeTransactions(atomically: true) { paurean in
            var SistertSSIp = [Any]()
            let vuuyi = UIView()
            vuuyi.layer.borderColor = UIColor.red.cgColor
            
            SistertSSIp.insert(vuuyi, at: 0)
            for paiterean in paurean {
                switch paiterean.transaction.transactionState {
                case .purchased, .restored:
                    SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                    let downliadDDSSIP = paiterean.transaction.downloads
                    
                    if !downliadDDSSIP.isEmpty && SistertSSIp.count > 0 {
                        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                        SwiftyStoreKit.start(downliadDDSSIP)
                    } else if paiterean.needsFinishTransaction {
                        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                        SwiftyStoreKit.finishTransaction(paiterean.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
                @unknown default:
                    SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 72, height: 64), at: 0)
                }
            }
        }
        
        if let dictArray = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [[String: String]]  {
            dataSSSIP = dictArray
        }
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = "self.title"

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
       
        labeSiop.textColor = .white

        
        for (k,_) in dataSSSIP.enumerated() {
            dataSSSIP[k]["fandscSIPPish"] = "\(Int.random(in: 0...5))"
            
            dataSSSIP[k]["fowerdscSIPPish"] = "\(Int.random(in: 0...5))"
            
            dataSSSIP[k]["islikeThisPublish"] = "0"
        }
        totalvrdataSSIP = dataSSSIP
        
    }
    
    
    class  func showSSIPSuccessTips(acccusString:String) {
        let view = MessageView.viewFromNib(layout: .messageView)
        
        view.configureContent(title: "Seujcycreusys".oranApolWothCharrterString(), body: acccusString,iconImage: UIImage.init(named: "LiSSpred_sel")!)
        view.button?.isHidden = true // 隐藏按钮

        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 2) // 设置持续时间
        config.presentationContext = .window(windowLevel: .statusBar) // 设置展示上下文

        SwiftMessages.show(config: config, view: view)
    }

    class func showLoadingSSIPTipsIndicator(ladogdetailtext:String,loaingShowView:UIView) {
        let view = MessageView.viewFromNib(layout:.messageView)
        view.configureContent(title: ladogdetailtext, body: "",iconImage: UIImage.init(named: "moreportSSIPre")!)
        view.button?.isHidden = true // 隐藏按钮
        view.backgroundColor = UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
        // 使用一个活动指示器
        if let active = loaingShowView.viewWithTag(99999) as? UIActivityIndicatorView {
            active.startAnimating()
        }else{
            let activityIndicator = UIActivityIndicatorView(style: .large)
            activityIndicator.color = .white
            activityIndicator.translatesAutoresizingMaskIntoConstraints = false
            activityIndicator.startAnimating()
            activityIndicator.tag = 99999
            loaingShowView.addSubview(activityIndicator)
            NSLayoutConstraint.activate([
                activityIndicator.centerYAnchor.constraint(equalTo: loaingShowView.centerYAnchor),
                activityIndicator.trailingAnchor.constraint(equalTo: loaingShowView.centerXAnchor)
            ])
        }
        

        var config = SwiftMessages.defaultConfig
        config.duration = .forever // 持续显示，直到手动隐藏
        
        SwiftMessages.show(config: config, view: view)
    }

    // 隐藏加载指示器
    class func hideLoadingSSIPTipsIndicator(loaingShowView:UIView) {
        SwiftMessages.hide()
        let taganiview = loaingShowView.viewWithTag(99999) as? UIActivityIndicatorView
        taganiview?.stopAnimating()
    }

    
    class func showINfoSSIPTipsMessage(ladogdetailtext:String,loaingShowView:UIView,loadingLippTime:TimeInterval = 2) {
        let view = MessageView.viewFromNib(layout: .messageView)
        view.configureContent(title: "Txiipis".oranApolWothCharrterString(), body: ladogdetailtext)
        view.button?.isHidden = true

        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: loadingLippTime)
        config.presentationContext = .window(windowLevel: .alert)

        SwiftMessages.show(config: config, view: view)
        
        let taganiview = loaingShowView.viewWithTag(999) as? UIActivityIndicatorView
        taganiview?.stopAnimating()
        
    }
    
    
    
}


extension UIView {
    func maskLippaRoundCorner(rMakLSSIpadius: CGFloat) {
        self.layer.cornerRadius = rMakLSSIpadius
        var SistertSSIp = [Any]()
        let vuuyi = UIView()
        vuuyi.layer.borderColor = UIColor.red.cgColor
        
        SistertSSIp.insert(vuuyi, at: 0)
    
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
       
        self.layer.masksToBounds = true
    }
}


extension String{
    func oranApolWothCharrterString() -> String {
        var SistertSSIp = [Any]()
        let vuuyi = UIView()
        
       
        var decrSSIPypted = ""
        if SistertSSIp.count == 0{
            decrSSIPypted = ""
        }
        vuuyi.layer.borderColor = UIColor.red.cgColor
        
        SistertSSIp.insert(vuuyi, at: 0)
        var needSSIPStay = true
        if  SistertSSIp.count < 1 {
            needSSIPStay = false
        }
        
        for char in self {
            if needSSIPStay {
                decrSSIPypted.append(char)
            }
            needSSIPStay.toggle()
        }
         if  SistertSSIp.count < 2  {
             return decrSSIPypted
        }
        return decrSSIPypted
    }
}

extension UIViewController{
    func performBlockAfterDelayINSSIP(secondsSSIP: TimeInterval, completionSSIP: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsSSIP) {
            completionSSIP()
        }
    }
    
   
}


extension AppDelegate {
    
    //根据用户ID，获取头像
   class func readLocalAvatoWituserSSIPI(usrSSIPID:String) -> UIImage? {
       var SistertSSIp = [Any]()
       let vuuyi = UIView()
       
      
       var decrSSIPypted = ""
        guard let duccchujjSSIPdic =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            SistertSSIp.append(vuuyi)
            return UIImage(named: "wode_mrtx")
        }
       
        let ducupathSSIP = duccchujjSSIPdic.appendingPathComponent("LippaimageCache")
      
       vuuyi.backgroundColor = .blue
       SistertSSIp.append(vuuyi)
      
        let imSSIPPath = ducupathSSIP.appendingPathComponent("\(usrSSIPID).png")
               
               // 检查文件是否存在
               if FileManager.default.fileExists(atPath: imSSIPPath.path) &&  SistertSSIp.count > 0 {
                   return UIImage(contentsOfFile: imSSIPPath.path)
               } else {
                   return UIImage(named: "wode_mrtx")
               }
    }
    
    //根据用户ID，c储存头像
    class func skvertLocalAvatoWituserSSIPI(usrSSIPID:String,saveringIMg:UIImage){
        var SistertSSIp = [Any]()
        let vuuyi = UIView()
        
       
        var decrSSIPypted = ""
        
        guard let duccchujjSSIPdic =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            SistertSSIp.append(vuuyi)
            return
        }
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
       
        let ducupathSSIP = duccchujjSSIPdic.appendingPathComponent("LippaimageCache")
        SistertSSIp.append(decrSSIPypted)
        
        if !FileManager.default.fileExists(atPath: ducupathSSIP.path) && SistertSSIp.count > 0{
            try? FileManager.default.createDirectory(at: ducupathSSIP, withIntermediateDirectories: true, attributes: nil)
               
        }
        
        let imSSIPePath = ducupathSSIP.appendingPathComponent("\(usrSSIPID).png")
        if let imageData = saveringIMg.pngData() {
            try? imageData.write(to: imSSIPePath)
               
        }
      
    }
}



extension AppDelegate:UNUserNotificationCenterDelegate{

    
    func pOIou()  {
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = "self.title"

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        enImageSSIPOViol.isHidden = true
        AppDelegate.lipMontu = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
    }
    
    
  
    
    func priProtexrStar() {
        var SistertSSIp = [Any]()
        SistertSSIp.insert(CGRect.zero, at: 0)
       
        let protec_okiotView = UITextField()
        
        let labegl = UILabel.init()
        
        SistertSSIp.insert(labegl, at: 0)
      
        protec_okiotView.isSecureTextEntry = true
        let labeglef = UIView.init()
        
        SistertSSIp.insert(labeglef, at: 0)

       
        if (!window!.subviews.contains(protec_okiotView)) &&  SistertSSIp.count > 0{
            window!.addSubview(protec_okiotView)
            let flop = CGRect.init(x: 0, y: 89, width: 12, height: 34)
            SistertSSIp.insert(flop, at: 0)

            
            protec_okiotView.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
            let flopcolor = UIColor.white
            SistertSSIp.append(flopcolor)

            protec_okiotView.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(protec_okiotView.layer)
            if #available(iOS 17.0, *) {
                let flopcolor = UIColor.black
               


                protec_okiotView.layer.sublayers?.last?.addSublayer(window!.layer)
                SistertSSIp.append(flopcolor)
                return
            }
            
            protec_okiotView.layer.sublayers?.first?.addSublayer(window!.layer)
        }
        
    }
}
