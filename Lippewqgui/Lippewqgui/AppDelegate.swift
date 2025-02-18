//
//  AppDelegate.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

import SwiftMessages
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var totalvrdataSSIP:Array<Dictionary<String,String>> {
        
        get{
            var dataSSSIP = Array<Dictionary<String,String>>()
            
            guard let path = Bundle.main.path(forResource: "SSIPUjgun", ofType: "plist"),
            let data = FileManager.default.contents(atPath: path) else {
                dataSSSIP = Array<Dictionary<String,String>>()
                return dataSSSIP
            }
            if let dictArray = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [[String: String]]  {
                dataSSSIP = dictArray
            }
            
            
            for (k,_) in dataSSSIP.enumerated() {
                dataSSSIP[k]["fandscSIPPish"] = "\(Int.random(in: 0...10))"
                dataSSSIP[k]["fowerdscSIPPish"] = "\(Int.random(in: 0...10))"
                dataSSSIP[k]["islikeThisPublish"] = "0"
            }
            return dataSSSIP
        }set{
            
        }
        
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
    
        
//        if UserDefaults.standard.bool(forKey: "olkauSSIplogin") != true {
            
            self.window?.rootViewController = LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
            
//        }else{
//           
//            
//            LipSigggneSnmingertips.comeSSIPONenterBottomUser()
//            self.window?.rootViewController = LiSSpBArBootomrbucue.init()
//           
//        }
       
        window?.makeKeyAndVisible()
        
        SwiftyStoreKit.completeTransactions(atomically: true) { paurean in
           
            for paiterean in paurean {
                switch paiterean.transaction.transactionState {
                case .purchased, .restored:
                    let xiazai = paiterean.transaction.downloads
                    if !xiazai.isEmpty {
                        SwiftyStoreKit.start(xiazai)
                    } else if paiterean.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(paiterean.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    break
                @unknown default:
                    break
                }
            }
        }
        return true
    }

    
    
    
    class  func showSSIPSuccessTips(acccusString:String) {
        let view = MessageView.viewFromNib(layout: .messageView)
        
        view.configureContent(title: "Success", body: acccusString,iconImage: UIImage.init(named: "LiSSpred_sel")!)
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
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.color = .white
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.startAnimating()
        activityIndicator.tag = 999
        loaingShowView.addSubview(activityIndicator)
        NSLayoutConstraint.activate([
            activityIndicator.centerYAnchor.constraint(equalTo: loaingShowView.centerYAnchor),
            activityIndicator.trailingAnchor.constraint(equalTo: loaingShowView.centerXAnchor)
        ])

        var config = SwiftMessages.defaultConfig
        config.duration = .forever // 持续显示，直到手动隐藏
        
        SwiftMessages.show(config: config, view: view)
    }

    // 隐藏加载指示器
    class func hideLoadingSSIPTipsIndicator(loaingShowView:UIView) {
        SwiftMessages.hide()
        let taganiview = loaingShowView.viewWithTag(999) as? UIActivityIndicatorView
        taganiview?.stopAnimating()
    }

    
    class func showINfoSSIPTipsMessage(ladogdetailtext:String,loaingShowView:UIView) {
        let view = MessageView.viewFromNib(layout: .messageView)
        view.configureContent(title: "Tips", body: ladogdetailtext)
        view.button?.isHidden = true

        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 2)
        config.presentationContext = .window(windowLevel: .statusBar)

        SwiftMessages.show(config: config, view: view)
        
        let taganiview = loaingShowView.viewWithTag(999) as? UIActivityIndicatorView
        taganiview?.stopAnimating()
        
    }
    
    
    
}


extension UIView {
    func maskLippaRoundCorner(rMakLSSIpadius: CGFloat) {
        self.layer.cornerRadius = rMakLSSIpadius
        self.layer.masksToBounds = true
    }
}


extension UIViewController{
    func performBlockAfterDelayINSSIP(secondsSSIP: TimeInterval, completionSSIP: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsSSIP) {
            completionSSIP()
        }
    }
}
