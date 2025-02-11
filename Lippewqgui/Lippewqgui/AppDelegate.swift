//
//  AppDelegate.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
import IQKeyboardManager
import SwiftMessages
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared().isEnabled = true
        window = UIWindow(frame: UIScreen.main.bounds)
    
        
        if LiSSpBArbucue.SSIPlA.olkauSSIplogin == false {
            
            self.window?.rootViewController = LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
            
        }else{
            LiSSpBArbucue.SSIPlA.olkauSSIplogin = true
            
            LiSSpBArbucue.SSIPlA.comeSSIPONenterBottomUser()
            self.window?.rootViewController = LiSSpBArBootomrbucue.init()
           
        }
       
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
        view.configureContent(title: "Success", body: acccusString)
        view.button?.isHidden = true // 隐藏按钮

        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 2) // 设置持续时间
        config.presentationContext = .window(windowLevel: .statusBar) // 设置展示上下文

        SwiftMessages.show(config: config, view: view)
    }

    class func showLoadingSSIPTipsIndicator(ladogdetailtext:String) {
        let view = MessageView.viewFromNib(layout: .cardView)
//        view.backgroundView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        view.titleLabel?.text = "Loading..."
        view.bodyLabel?.text = ladogdetailtext
        
        // 使用一个活动指示器
        let activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.startAnimating()
        
        view.addSubview(activityIndicator)
        NSLayoutConstraint.activate([
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            activityIndicator.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])

        var config = SwiftMessages.defaultConfig
        config.duration = .forever // 持续显示，直到手动隐藏
        
        SwiftMessages.show(config: config, view: view)
    }

    // 隐藏加载指示器
    class func hideLoadingSSIPTipsIndicator() {
        SwiftMessages.hide()
    }

    
    class func showINfoSSIPTipsMessage(ladogdetailtext:String) {
        let view = MessageView.viewFromNib(layout: .messageView)
        view.configureContent(title: "Tips", body: ladogdetailtext)
        view.button?.isHidden = true

        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 2)
        config.presentationContext = .window(windowLevel: .statusBar)

        SwiftMessages.show(config: config, view: view)
    }
}
