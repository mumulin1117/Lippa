//
//  LiSSpBucueTruber.swift
//  Lippewqgui
//
//  Created by  on 2025/2/27.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftMessages
import FBSDKCoreKit
import WebKit
import SwiftyStoreKit
class LiSSpBucueTruber: UIViewController{
#if DEBUG
    let appleidSmalllWrite = "11111111"
#else
    let appleidSmalllWrite = "92579307"
#endif
    
    
    var fmePlaungView:WKWebView?
    var fmersousifgnin:Bool = false
    
    
    let matherlang = UIImageView.init(image: UIImage(named: "launchSSIPy"))//大背景
    
    let  lsignintouchHTL = UIButton.init()//登陆按钮
    let detailIonger = UIImageView.init(image: UIImage(named: "lipppaloagicon"))//appicon
   
    
    var netrequestCountFME:Int = 0
    
    var ifAreadylogin:Bool{
      
        get{
            return UserDefaults.standard.bool(forKey: "ifAreadylogin")
        }
        set{
            UserDefaults.standard.set(newValue, forKey: "ifAreadylogin")
        }
        
    }

    
    private let weteranlocatertoolFME = CLLocationManager()
    private let gewotoolFME = CLGeocoder()
    
    
    private var shootersFcituiyFME:String = ""
    private var shootersFcodeFME:String = ""
    private var shootersFdistrrectFME:String = ""
    private   var shootersdeogerFME:String = ""
    private  var shootersFJingduFME:NSNumber = 0.0
    private  var shootersFcweiDuFME:NSNumber = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segtfetchDSOR()
        onceawayNowInlaunch()
    }
    
    fileprivate func segtfetchDSOR() {
       
        matherlang.contentMode = .scaleAspectFill
        
        view.addSubview(matherlang)
        matherlang.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        lsignintouchHTL.layer.cornerRadius = 26
        lsignintouchHTL.layer.masksToBounds = true
        lsignintouchHTL.backgroundColor = UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
        lsignintouchHTL.setTitle("Quickly Log", for: .normal)
        lsignintouchHTL.setTitleColor(UIColor.white, for: .normal)
        lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        lsignintouchHTL.isHidden = true
        
        view.addSubview(lsignintouchHTL)
        lsignintouchHTL.addTarget(self, action: #selector(touchEntanceEnterFME), for: .touchUpInside)
        lsignintouchHTL.snp.makeConstraints { make in
            
            make.height.equalTo(52)
            make.centerX.equalToSuperview()
            make.width.equalTo(250)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 70)
        }
        detailIonger.isHidden = true
        view.addSubview(detailIonger)
        detailIonger.snp.makeConstraints { make in
            make.width.equalTo(98)
            make.height.equalTo(135)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(lsignintouchHTL.snp.top).offset(-36)
        }
        
    }
    @objc func touchEntanceEnterFME() {
        
        getnlocationAuthsFMer()
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "loadging.....", loaingShowView: self.view)
       
//
//       
       
        quickLogoin()
        
        
    }
    
    private  func onceawayNowInlaunch()  {
         let reachabilityManager = NetworkReachabilityManager()
        guard let isReachable = reachabilityManager?.isReachable,isReachable == true else {
            print("无法检测到网络状态")
            if self.netrequestCountFME <= 3 {
                self.onceawayNowInlaunch()
                self.netrequestCountFME += 1
                return
            }
            self.showalertReloadFME()
            
            return
            
        }
        
#if DEBUG
                self.inWhichEntranceFME()
#else
           
                if (Date().timeIntervalSince1970) > 1735743657 {
                   
                    self.inWhichEntranceFME()
                    
                }else{
                    
                    self.enterceWithnoFeaturesFME()
                }
#endif
            

       
    }
    
    
    private func showalertReloadFME() {
        let netalertFME = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.onceawayNowInlaunch()
        }
        netalertFME.addAction(truoncetiomFME)
        present(netalertFME, animated: true)
    }
    
  
    
    
    
    

    
    
    
    func enterceWithnoFeaturesFME(){
        //判断是否登陆
        if let uieidSignin = UserDefaults.standard.string(forKey: "siingeduserIDString") {
            
            //根据登陆的idstring，获取userData
            var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
            
            allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
                
            
            if let signeduseddata = allUserDataSSIP.filter({ dicuserSSIP in
                return dicuserSSIP["ssipAccID"] == uieidSignin
            }).first{
              LipSigggneSnmingertips.logUoserdataSSIP = signeduseddata
            LipSigggneSnmingertips.logPucserdataSSIP = AppDelegate.readLocalAvatoWituserSSIPI(usrSSIPID: uieidSignin)
          }
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
           
        }else{
            ssuipCreaNet()
           
           
        }
       

    }
    
    private func ssuipCreaNet() {
        
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
       
    }
}




//MARK: - 登陆
extension LiSSpBucueTruber:CLLocationManagerDelegate {
    
    private func isShoingLoginPageUI_Isenter(ifSh:Bool) {
        
        if ifSh {
            getnlocationAuthsFMer()
            matherlang.image = UIImage(named: "eniguYIplolo")
            
            lsignintouchHTL.isHidden = false
            detailIonger.isHidden = false
        }else{
            
            matherlang.image = UIImage(named: "launchSSIPy")
            
            lsignintouchHTL.isHidden = true
            detailIonger.isHidden = true
        }
        
        
        
    }
    
    
    @objc func getnlocationAuthsFMer() {
        
        
        if weteranlocatertoolFME.authorizationStatus  ==  .authorizedWhenInUse || weteranlocatertoolFME.authorizationStatus  ==  .authorizedAlways{
            weteranlocatertoolFME.startUpdatingLocation()
            
        }else if weteranlocatertoolFME.authorizationStatus  ==  .denied{
          
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"it is recommended that you open it in settings location for better service", loaingShowView: self.view)
          
        }else if weteranlocatertoolFME.authorizationStatus  ==  .notDetermined{
            weteranlocatertoolFME.requestWhenInUseAuthorization()
            
        }
        
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
        
        shootersFJingduFME =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        shootersFcweiDuFME =   NSNumber(value: lastlocationVAF.coordinate.longitude)
        
        
        
        
        gewotoolFME.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
            
            guard let palvemajfVAF = plcaevfg?.first else { return }
            shootersFdistrrectFME = palvemajfVAF.subLocality  ?? ""
            shootersdeogerFME = palvemajfVAF.administrativeArea  ?? ""
            
            shootersFcodeFME = palvemajfVAF.country ?? ""
            shootersFcituiyFME = palvemajfVAF.locality ?? ""
            
            
        }
        
        
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getnlocationAuthsFMer()
        
    }
    
    
    
    
    
    
}
    
    //MARK: - 当用户 enter b
extension LiSSpBucueTruber :WKScriptMessageHandler, WKUIDelegate,WKNavigationDelegate {
    
    
    func enter_DSOR_weeebbbpppgege(appurlLink:String) {
        
        if fmePlaungView != nil {
            return
        }
       
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "loadging.....".oranApolWothCharrterString(), loaingShowView: self.view)
        let fmeviewstys = WKWebViewConfiguration()
        fmeviewstys.allowsAirPlayForMediaPlayback = false
        fmeviewstys.allowsInlineMediaPlayback = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.mediaTypesRequiringUserActionForPlayback = []
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        
        fmePlaungView = WKWebView.init(frame: UIScreen.main.bounds, configuration: fmeviewstys)
        fmePlaungView?.isHidden = true
        fmePlaungView?.translatesAutoresizingMaskIntoConstraints = false
        fmePlaungView?.scrollView.alwaysBounceVertical = false
        
        fmePlaungView?.scrollView.contentInsetAdjustmentBehavior = .never
        fmePlaungView?.navigationDelegate = self
        
        fmePlaungView?.uiDelegate = self
        fmePlaungView?.allowsBackForwardNavigationGestures = true
        
        if let urewlinsdfme = URL.init(string: appurlLink) {
            fmePlaungView?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        self.view.addSubview(fmePlaungView!)
        
        
        fmePlaungView?.configuration.userContentController.add(self, name: "Pay")
        fmePlaungView?.configuration.userContentController.add(self, name: "Close")
    }
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
        
        
    }
    @nonobjc func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        decisionHandler(.allow)
        
    }
    @objc(webView:createWebViewWithConfiguration:forNavigationAction:windowFeatures:) func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        
        if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
            
            if let url = navigationAction.request.url {
                UIApplication.shared.open(url,options: [:]) { bool in
                    
                }
            }
        }
        
        
        return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        fmePlaungView?.isHidden = false
        
        
        AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
        
        if fmersousifgnin == true {
            AppDelegate.showSSIPSuccessTips(acccusString: "successful login!")
          
            fmersousifgnin = false
            
        }
        

        
    }
    
    
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        

        if message.name == "Pay",
           let mesgidhFME = message.body as? String {
            
            
            view.isUserInteractionEnabled = false
            
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Paying......".oranApolWothCharrterString(), loaingShowView: self.view)
            let alllPayblaIDlist = [("nqixcbnohmlxhlrc",400,"0.99"),
                                    ("pxoxebhhktzklezg",800,"1.99"),
                                    ("rjcaopufshgxmmch",2450,"4.99"),
                                   
                                    
                                    
                                    ("hwisjrlbpnklyzcq",4900,"9.99"),
                                    ("vpjxrayqjkswcwpc",9800,"19.99"),
                                    
                               
                                    
                                    ("nyrjetssfpqjltkh",24500,"49.99"),
                                    
                                    ("cotnxwosshqinyda",49000,"99.99"),
                                    
                                    ("sdrgnhnjutyjtyjr",2650,"5.99"),
                                    ("pxoxebhhktzklllip",1150,"2.99"),
                                    ("oaijeghutgfhfgtt",4650,"8.99")]
          
            
            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
                lovercoolFME.0 == mesgidhFME
            }).first {
                
                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("amount") : paygetingItemFME.2,AppEvents.ParameterName.init("currency"):"USD"])
            }
            
            SwiftyStoreKit.purchaseProduct(mesgidhFME, atomically: true) { psResult in
                AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                        
                    }
                    
                    
                    
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                        
                   
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"No have receipt", loaingShowView: self.view)
                       
                        return
                    }
                    
                    
                    self.installEnterRemallLastNetiFME("/api/ios/v2/pay", stallParFME: [
                        "payload":ticketData.base64EncodedString(),
                        "transactionId":gettransID,
                        "type":"direct"
                    ]) { result in
                        
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
                                lovercoolFME.0 == mesgidhFME
                            }).first {
                                
                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("totalPrice") : paygetingItemFME.2,AppEvents.ParameterName.init("currency"):"USD"])
                            }
                         
                            AppDelegate.showSSIPSuccessTips(acccusString: "The purchase was successful!".oranApolWothCharrterString())
                        case .failure(let error):
                            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:error.localizedDescription, loaingShowView: self.view)
                            
                        }
                    }
                    
                    
                    
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                     
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:error.localizedDescription, loaingShowView: self.view)
                        return
                    }
                    
                    
                }
            }
            
        }else if message.name == "Close" {
            
            UserDefaults.standard.set(nil, forKey: "femuserlogidectoken")// 清除本地token
            
            self.fmePlaungView?.removeFromSuperview()
            self.fmePlaungView = nil
            self.isShoingLoginPageUI_Isenter(ifSh: true)
            

        }
    }
    
    
    
}
 



//MARK: -
extension LiSSpBucueTruber{

    
    var installednaesFME:[String]{
      
        let appSchemes = [
                "weiChat": "wechat://",
                "Aliapp": "alipay://",
                "qq": "mqq://",
                "WhatsApp": "whatsapp://",
                "Instagram": "instagram://",
                "Facebook": "fb://",
                "TikTok": "tiktok://",
                "twitter": "tweetie://",
                "GoogleMaps": "comgooglemaps://"
            ]
            
            return appSchemes.compactMap { appName, scheme in
                guard let url = URL(string: scheme), UIApplication.shared.canOpenURL(url) else {
                    return nil
                }
                return appName
            }
    }
    
    
    var fmeboadrdkeysLaungs:[String]{
        Array(Set( // 去重
                UITextInputMode.activeInputModes
                    .compactMap { $0.primaryLanguage }
            ))
    }
    
    
    
    var hustlangsAllLocalFME:[String]{
        return NSLocale.preferredLanguages.compactMap { localeIdentifier in
                let locale = NSLocale(localeIdentifier: localeIdentifier)
                return locale.object(forKey: .languageCode) as? String
            }
  
    }
    
    

    
    func checkphonertvpiernLinkcted()->Bool{
        
        guard let systemProxySettings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String: Any],
              let scopeSettings = systemProxySettings["__SCOPED__"] as? [String: Any] else {
            return false
            
        }
        let keys = Array(scopeSettings.keys)
        
        var ihingterFME = false
        
        let keywords = ["tap", "tun","ipsec", "ppp"]
            
            for key in keys {
                if keywords.contains(where: { key.contains($0) }) {
                    return true
                }
            }
            
           
        return false
        
        
//        let combineFME =  "__SCOPED__****tap****tun****ipsec****ppp".components(separatedBy: "****")
//
//        if let dict = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String : Any],
//           let scopeFME = dict[combineFME[0]] as? [String : Any] {
//
//            let keysFME = scopeFME.keys.map { $0 as String }
//
//
//            for kefMey in keysFME {
//                if kefMey.contains(combineFME[1]) || kefMey.contains(combineFME[2]) || kefMey.contains(combineFME[3]) || kefMey.contains(combineFME[4]) {
//
//                    ihingterFME = true
//
//                    break
//
//                }
//            }
//        }
//
//        return ihingterFME
//
        
        
    }
    

    

    
   
    
    
    
    
#if DEBUG
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
#else
#endif
    
   
    
    
 
    
}





//MARK: - 网络请求
extension LiSSpBucueTruber{
    
    
    func installEnterRemallLastNetiFME(_ goinFMer:String,stallParFME:[String: Any], lasterVBLockFME: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {
        

        
#if DEBUG
        let usrlinkSmalllWrite = "https://api.cphub.link"
#else
        let usrlinkSmalllWrite = "https://api.fhbgsv.link"
#endif
        
        
        
        
        print(stallParFME)
        
        
        
        guard let compltelujingREZU = URL(string: usrlinkSmalllWrite + goinFMer) else {
            return
        }
        
        AF.request(compltelujingREZU, method: .post, parameters: stallParFME, encoding: JSONEncoding.default, headers: [
            "appId": appleidSmalllWrite,
            "appVersion":Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "deviceNo":UUID().uuidString,
            "language":Locale.current.languageCode ?? "",
            "loginToken":UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String ?? "",
            "Content-Type": "application/json"
        ])
        .responseJSON { response in
            
            switch response.result {
            case .success(let respFME):
             
                if let olertlio = respFME as? [String: Any] {
                    print("Response: \(olertlio)")
                    
#if DEBUG
                    if goinFMer == "/xyz789/def456/rannndom/sobacial" || goinFMer == "/api/index/v2/getDf" {
                      
                      
                        
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:self.dictionaryToString(olertlio), loaingShowView: self.view,loadingLippTime: 10)
                    }
                    
#else
#endif
                    if let Codvrgvdf = olertlio["code"] as? String, Codvrgvdf == "0000" {
                        
                        if let frilodeFME = olertlio["result"] as? [String: Any] {
                            
                            lasterVBLockFME(.success(frilodeFME))
                        }else{
                            lasterVBLockFME(.success(nil))
                        }
                        
                    } else {
                        let codeFMEre = olertlio["message"] as? String
                        let cerrtosFME = NSError(domain: "HTTPError", code: 0, userInfo: [NSLocalizedDescriptionKey: codeFMEre])
                        lasterVBLockFME(.failure(cerrtosFME))
                    }
                    
                }else{
                    
                    let cerrtosFME = NSError(domain:"HTTPError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Data is error"])
                    lasterVBLockFME(.failure(cerrtosFME))
                }
                
            case .failure(let error):
                
                print(error)
                lasterVBLockFME(.failure(error))
            }
            
        }
        
    }
    
    
    
    
    
    private func inWhichEntranceFME()  {
      
      
#if DEBUG
        let adventurepatherFME = "/api/index/v2/getDf"
        let versationParamFME: [String: Any] = [
            "deviceId":UUID().uuidString,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language":["en"],//hustlangsAllLocalFME
            "otherAppNames":installednaesFME,//["weiChat","WhatsApp","Instagram","Facebook","TikTok","twitter","GoogleMaps"],//
           
            "timezone":"japen",//TimeZone.current.identifier,
            "keyboards":["en-US"],//fmeboadrdkeysLaungs,
            "useVpn":checkphonertvpiernLinkcted() == true ? 1 : 0,"debug":1
        ]

        #else
        let adventurepatherFME = "/xyz789/def456/rannndom/sobacial"
//        let versationParamFME: [String: Any] = [
//            "lkjhgf":onlyidduserFME ,
//            "mnbvcxz": UIDevice.current.localizedModel,
//            "asdfqwer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "vbnmasd":["en-CU"],
//            "hJ9tF":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
//
//            "rewq":"America/New_York",
//            "qazwsx":["en-US"],
//            "plmokn": 0
//        ]
       
        let versationParamFME: [String: Any] = [
            "lkjhgf":onlyidduserFME ,
            "mnbvcxz": UIDevice.current.localizedModel,
            "asdfqwer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "tyuio":hustlangsAllLocalFME,
            "vbnmasd":installednaesFME,

            "rewq":TimeZone.current.identifier,
            "qazwsx":fmeboadrdkeysLaungs,
            "plmokn":checkphonertvpiernLinkcted() == true ? 1 : 0
        ]
#endif
        
        print(versationParamFME)
        
        
      
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
        
        installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
            AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
            switch result{
            case .success(let bavuyr):
           
                guard let retro = bavuyr else{
                    self.enterceWithnoFeaturesFME()
                    return
                }

                let effortlesslyfme = retro["h5Url"] as? String
                
                let actionfme = retro["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(effortlesslyfme, forKey: "fmeconnetcikiner")

                if actionfme == 1 {
                    //没token---登陆
                    guard let chatbotfme = UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String,
                          let tsunamifme = effortlesslyfme else{
                        self.isShoingLoginPageUI_Isenter(ifSh: true)

                        return
                    }
                    
                    //--------you token---直接进b
                    let gloriousfme = tsunamifme  + "/?appId=\(self.appleidSmalllWrite)&token=" + chatbotfme

                    self.enter_DSOR_weeebbbpppgege(appurlLink:gloriousfme)
                    return
                }
                
                if actionfme == 0 {//-------------登陆显示
                    
                    self.isShoingLoginPageUI_Isenter(ifSh: true)

                }
                
                
                
            case .failure(_):
            
                self.enterceWithnoFeaturesFME()
                
                
            }
            
        }
       
    }
    
    
    

    
    
    func quickLogoin()  {
        
        
#if DEBUG
        let adventurepatherFME = "/api/login/v3/quickLogin"
        let versationParamFME: [String: Any] = [
            "appId":appleidSmalllWrite,
            "deviceId":UUID().uuidString,
            "pushToken":AppDelegate.appUITPushToken,
            "userLocationAddressVO":[
                "city":"Seoul",
                "countryCode":"KR",
                "district":"Seoul",
                "geonameId":"1835848",
                "latitude":37.5665,
                "longitude":126.9780
            ]
        ]
#else
        let adventurepatherFME = "/xyz789/pathation/rannndom/abc123"
        let versationParamFME: [String: Any] = [
            "qwerty":appleidSmalllWrite,
            "asdfgh":onlyidduserFME,
            "zxcvbn":UITLoakerinder.pnolyert.fmerpushingIdkrn,
//            "userLocationAddressVO":[
//                "city":"Seoul",
//                "countryCode":"KR",
//                "district":"Seoul",
//                "geonameId":"1835848",
//                "latitude":37.5665,
//                "longitude":126.9780
//            ]
            
            "userLocationAddressVO":[
                "city":recordCityVAF,
                "countryCode":recordCitycodeVAF,
                "district":recordDistrictVAF,
                "geonameId":recordDeogVAF,
                "latitude":recordLatitudeVAF,
                "longitude":recordLuitudeVAF
            ]
            
            
        ]
#endif
        
        
        
        installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
            AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
            
            switch result{
            case .success(let bavuyr):
                
                
                guard let retro = bavuyr,
                      let getintokeniddFME = retro["token"] as? String,
                      let effortlesslyfme = UserDefaults.standard.object(forKey: "fmeconnetcikiner")  as? String
                else {
                    
                
                    AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"data weak!", loaingShowView: self.view)
                   
                    return
                }
                
                UserDefaults.standard.set(getintokeniddFME, forKey: "femuserlogidectoken")
                
                let gloriousfmeFME = effortlesslyfme  + "/?appId=\(self.appleidSmalllWrite)&token=" + getintokeniddFME
         
                self.enter_DSOR_weeebbbpppgege(appurlLink:gloriousfmeFME)
            case .failure(let error):
                
                
                
                
                AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: error.localizedDescription, loaingShowView: self.view)
                
               
                
            }
        }
        
    }
    
    
    func saveuploadInfo() {
#if DEBUG
        let adventurepatherFME = "/api/device/save"
        let versationParamFME: [String: Any] = [
            "appVersion": "1.1.0",
            "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
            "osVersion":UIDevice.current.systemVersion,
            "deviceType" : "iPhone",
            "deviceNo" :UUID().uuidString,
            "pushToken" :AppDelegate.appUITPushToken,
            
        ]
#else
        let adventurepatherFME = "/xyz789/ghi789/give"
        
        
        let versationParamFME: [String: Any] = [
            "efgheg": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "efghuio":"APPSTORE",
            "mnop":UIDevice.current.systemName,
            "qrster":UIDevice.current.systemVersion,
            "designed" : "iPhone",
            "uvwxy" :onlyidduserFME,
            "zxcvqwe" :AppDelegate.appUITPushToken,
            
        ]
#endif
        installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME)
    }
}




