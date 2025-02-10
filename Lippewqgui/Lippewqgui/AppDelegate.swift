//
//  AppDelegate.swift
//  Lippewqgui
//
//  Created by mumu on 2025/2/10.
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
    
        
        if CSBFetcherAll.Hammer.ifLogStatusCSB == false {
            
            self.window?.rootViewController = UINavigationController(rootViewController: LipSigggneSnmingertips.init())
            
        }else{
            CSBFetcherAll.Hammer.ifLogStatusCSB = true
            
            CSBFetcherAll.Hammer.ceaterTestUserCSBINFO()
            self.window?.rootViewController = UINavigationController(rootViewController: LiSSpBArBootomrbucue.init())
           
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

  

}
