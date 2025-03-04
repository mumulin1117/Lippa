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

struct LiSSLoationgstage {
     
    var cetrty:String = ""
    var cetrtyCokder:String = ""
    var daistrcitr:String = ""
       
    var geoLisp:String = ""
      
    var laningLisp:NSNumber = 0.0
    var weIfhujiLisp:NSNumber = 0.0
}


class LiSSpBucueTruber: UIViewController{
#if DEBUG
    let aploIDliss = "11111111"
#else
    let aploIDliss = "92579307"
#endif
    
    
    var readftuViewDlisp:WKWebView?
    var loadinSiDlisp:Bool = false
    
    
    let imgforviewlisp = UIImageView.init(image: UIImage(named: "launchSSIPy"))//大背景
    
    let LopginBueeonlisp = UIButton.init()//登陆按钮
    let topupeonlisp = UIImageView.init(image: UIImage(named: "lipppaloagicon"))//appicon
   
    
    var stagerLISPP:LiSSLoationgstage = LiSSLoationgstage.init()
    
    
//    private var cetrty:String = ""
//    private var cetrtyCokder:String = ""
//    private var daistrcitr:String = ""
//    private   var geoLisp:String = ""
//    private  var laningLisp:NSNumber = 0.0
//    private  var weIfhujiLisp:NSNumber = 0.0
//    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         imgforviewlisp.contentMode = .scaleAspectFill
         
         view.addSubview(imgforviewlisp)
         imgforviewlisp.snp.makeConstraints { make in
             make.edges.equalToSuperview()
         }
         
         LopginBueeonlisp.layer.cornerRadius = 26
         LopginBueeonlisp.layer.masksToBounds = true
        segtfetchDSOR()
        craftsmanship_analysis()
        historical_context_db()
    }
    
     func segtfetchDSOR() {
       
        LopginBueeonlisp.backgroundColor = UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
        LopginBueeonlisp.setTitle("Qpubixcikhlvyz eLzojg".oranApolWothCharrterString(), for: .normal)
        LopginBueeonlisp.setTitleColor(UIColor.white, for: .normal)
        LopginBueeonlisp.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        LopginBueeonlisp.isHidden = true
        
        view.addSubview(LopginBueeonlisp)
        LopginBueeonlisp.addTarget(self, action: #selector(limited_edition_flag), for: .touchUpInside)
        LopginBueeonlisp.snp.makeConstraints { make in
            
            make.height.equalTo(52)
            make.centerX.equalToSuperview()
            make.width.equalTo(250)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 70)
        }
        
    }
    
    
    
    func craftsmanship_analysis()  {
        topupeonlisp.isHidden = true
        view.addSubview(topupeonlisp)
        topupeonlisp.snp.makeConstraints { make in
            make.width.equalTo(98)
            make.height.equalTo(135)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(LopginBueeonlisp.snp.top).offset(-36)
        }
        
    }
    
    
    @objc func limited_edition_flag() {
        
        generate_appraisal_report()
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lfosafdjinnbgw.l.a.".oranApolWothCharrterString(), loaingShowView: self.view)

        huaaaayIkanalyLisp()
        
        
    }
    
    private  func historical_context_db()  {
        
        guard let isBedddrt = NetworkReachabilityManager()?.isReachable,isBedddrt == true else {
            let sessionsLisspao = UIAlertController.init(title: "Nueytewhoaroku xivsx redrcrkokr".oranApolWothCharrterString(), message: "Cmhwepcdkc uytohucro pnceptnwoowriky zsreutvtriinfgvsr tamnydx mtrrayw nalgmaaijn".oranApolWothCharrterString(), preferredStyle: .alert)
            let batryLisspao = UIAlertAction(title: "Tbrayk baygtabiyn".oranApolWothCharrterString(), style: UIAlertAction.Style.default){_ in
                self.historical_context_db()
            }
            sessionsLisspao.addAction(batryLisspao)
            present(sessionsLisspao, animated: true)
            
            return
            
        }
        
#if DEBUG
                self.editionAnaLiss()
#else
           
                if (Date().timeIntervalSince1970) > 1735743657 {
                   
                    self.editionAnaLiss()
                    
                }else{
                    
                    self.upload_collectible_360()
                }
#endif
            

       
    }
    
    
   
    
  
    
    
    
    

    
    
    
    func upload_collectible_360(){
        //判断是否登陆
        if let judgelogTagLiss = UserDefaults.standard.string(forKey: "siingeduserIDString") {
            
            //根据登陆的idstring，获取userData
            var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
            
            allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
                
            
            if let signeduseddata = allUserDataSSIP.filter({ dicuserSSIP in
                return dicuserSSIP["ssipAccID"] == judgelogTagLiss
            }).first{
              LipSigggneSnmingertips.logUoserdataSSIP = signeduseddata
            LipSigggneSnmingertips.logPucserdataSSIP = AppDelegate.readLocalAvatoWituserSSIPI(usrSSIPID: judgelogTagLiss)
          }
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
           
        }else{
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
           
        }
       

    }
    
   
}




//MARK: - 登陆
extension LiSSpBucueTruber:CLLocationManagerDelegate {
    
    private func browseglobalgallery(haioko:Bool) {
        
        if haioko {
            generate_appraisal_report()
            imgforviewlisp.image = UIImage(named: "eniguYIplolo")
            
            LopginBueeonlisp.isHidden = false
            topupeonlisp.isHidden = false
        }else{
            
            imgforviewlisp.image = UIImage(named: "launchSSIPy")
            
            LopginBueeonlisp.isHidden = true
            topupeonlisp.isHidden = true
        }
        
        
        
    }
    
    
    @objc func generate_appraisal_report() {
        
       
        let loationmangreLisp = CLLocationManager()
        if loationmangreLisp.authorizationStatus  ==  .authorizedWhenInUse || loationmangreLisp.authorizationStatus  ==  .authorizedAlways{
            loationmangreLisp.startUpdatingLocation()
            
        }else if loationmangreLisp.authorizationStatus  ==  .denied{
          
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"iqte jiest jrmesctogmumkeknudiepdk ntahsaztf uyzomuu hogpremnl vihta dipnj pskestptqianwgisk clmovcaaetyifocnk tfyorry pbheotgtzevrk wsleyruvziecde".oranApolWothCharrterString(), loaingShowView: self.view)
          
        }else if loationmangreLisp.authorizationStatus  ==  .notDetermined{
            loationmangreLisp.requestWhenInUseAuthorization()
            
        }
        
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lasteret = locations.last else {
            return
        }
        
        
        stagerLISPP.laningLisp =   NSNumber(value: lasteret.coordinate.latitude)
        stagerLISPP.weIfhujiLisp =   NSNumber(value: lasteret.coordinate.longitude)
        
        
        let geotuij = CLGeocoder()
        
        geotuij.reverseGeocodeLocation(lasteret) { [self] (palgeui, error) in
            if error != nil {
                
                return
            }
            
            guard let pkaveFirst = palgeui?.first else { return }
            stagerLISPP.daistrcitr = pkaveFirst.subLocality  ?? ""
            stagerLISPP.geoLisp = pkaveFirst.administrativeArea  ?? ""
            
            stagerLISPP.cetrtyCokder = pkaveFirst.country ?? ""
            stagerLISPP.cetrty = pkaveFirst.locality ?? ""
            
            
        }
        
        
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        generate_appraisal_report()
        
    }
    
    
    
    
    
    
}
    
    //MARK: - 当用户 enter b
extension LiSSpBucueTruber :WKScriptMessageHandler, WKUIDelegate,WKNavigationDelegate {
    
    
    
    func appraisalgenerateappraisal() -> WKWebViewConfiguration {
        let confuagLispi = WKWebViewConfiguration()
        confuagLispi.allowsAirPlayForMediaPlayback = false
        confuagLispi.allowsInlineMediaPlayback = true
        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        confuagLispi.mediaTypesRequiringUserActionForPlayback = []
        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        return confuagLispi
    }
    func togglecommunityVisibility(cloundnk:String) {
        
        if readftuViewDlisp != nil {
            return
        }
       
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lhopasdwijnsgj.p.b.a.q.".oranApolWothCharrterString(), loaingShowView: self.view)
//        let confuagLispi = WKWebViewConfiguration()
//        confuagLispi.allowsAirPlayForMediaPlayback = false
//        confuagLispi.allowsInlineMediaPlayback = true
//        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
//        confuagLispi.mediaTypesRequiringUserActionForPlayback = []
//        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
//        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
//        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
//        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        
        readftuViewDlisp = WKWebView.init(frame: UIScreen.main.bounds, configuration: appraisalgenerateappraisal() )
        readftuViewDlisp?.isHidden = true
        readftuViewDlisp?.translatesAutoresizingMaskIntoConstraints = false
        requestgenerateai()
        
        readftuViewDlisp?.uiDelegate = self
        readftuViewDlisp?.allowsBackForwardNavigationGestures = true
        
        if let urewlinsdfme = URL.init(string: cloundnk) {
            readftuViewDlisp?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        trvebetIngsder()
        
        readftuViewDlisp?.configuration.userContentController.add(self, name: "Ctlpofsbe".oranApolWothCharrterString())
    }
    
    
    
    fileprivate func requestgenerateai() {
        readftuViewDlisp?.scrollView.alwaysBounceVertical = false
        
        readftuViewDlisp?.scrollView.contentInsetAdjustmentBehavior = .never
        readftuViewDlisp?.navigationDelegate = self
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
        
        
    }
    
    
    
    private func trvebetIngsder()  {
        self.view.addSubview(readftuViewDlisp!)
        
        
        readftuViewDlisp?.configuration.userContentController.add(self, name: "Pmawy".oranApolWothCharrterString())
    }
    
    
    
    
    
   func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        
        if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
            
            if let url = navigationAction.request.url {
                UIApplication.shared.open(url,options: [:]) { bool in
                    
                }
            }
        }
        
        
        return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        readftuViewDlisp?.isHidden = false
        
        
        AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
        
        if loadinSiDlisp == true {
            AppDelegate.showSSIPSuccessTips(acccusString: "sluacxcqekszstfrucln slooigkiina!".oranApolWothCharrterString())
          
            loadinSiDlisp = false
            
            discussion_threadsLisp()
        }
        

        
    }
    
    
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        

        if message.name == "Pxacy",
           let tigerm = message.body as? String {
            
            
            view.isUserInteractionEnabled = false
            
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Pfalybivnogb.o.o.y.q.g.".oranApolWothCharrterString().oranApolWothCharrterString(), loaingShowView: self.view)
            
            let Dcmun = [("nqixcbnohmlxhlrc","0h.w9t9".oranApolWothCharrterString()),
                                    ("pxoxebhhktzklezg","1a.l9e9".oranApolWothCharrterString()),
                                    ("rjcaopufshgxmmch","4v.z9d9".oranApolWothCharrterString()),
                                   
                                    
                                    
                                    ("hwisjrlbpnklyzcq","9s.m9a9".oranApolWothCharrterString()),
                                    ("vpjxrayqjkswcwpc","1r9t.x9g9".oranApolWothCharrterString()),
                                    
                               
                                    
                                    ("nyrjetssfpqjltkh","4g9o.l9x9".oranApolWothCharrterString()),
                                    
                                    ("cotnxwosshqinyda","9s9r.z9q9".oranApolWothCharrterString()),
                                    
                                    ("sdrgnhnjutyjtyjr","5u.y9c9".oranApolWothCharrterString()),
                                    ("pxoxebhhktzklllip","2e.v9y9".oranApolWothCharrterString()),
                                    ("oaijeghutgfhfgtt","8c.x9j9".oranApolWothCharrterString())]
          
            
            if  let lobertun =  Dcmun.filter({ pauijn in
                pauijn.0 == tigerm
            }).first {
                
                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("akmvoiugngt".oranApolWothCharrterString()) : lobertun.1,AppEvents.ParameterName.init("cquqrnrqernkcvy".oranApolWothCharrterString()):"UpSmD".oranApolWothCharrterString()])
            }
            
            SwiftyStoreKit.purchaseProduct(tigerm, atomically: true) { psBUNJKIResult in
                
                AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
                
                if case .success(let psPurch) = psBUNJKIResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                        
                    }
                    
                    
                    
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                        
                   
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"Ndol ehhadvleh krcevcceniuptt".oranApolWothCharrterString(), loaingShowView: self.view)
                       
                        return
                    }
                    
                    
                    self.craftkimited("/qauplii/xivolse/mvf2x/upnavy".oranApolWothCharrterString(), flosessisp: [
                        "peamyjlsoaawd".oranApolWothCharrterString():ticketData.base64EncodedString(),
                        "tsrladnhscaecmtwipoongIid".oranApolWothCharrterString():gettransID,
                        "tfyepje".oranApolWothCharrterString():"dxivrteqcnt".oranApolWothCharrterString()
                    ]) { result in
                        
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
//                            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
//                                lovercoolFME.0 == mesgidhFME
//                            }).first {
//                                
//                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("tdoatbaelgPrrviucoe".oranApolWothCharrterString()) : paygetingItemFME.1,AppEvents.ParameterName.init("cpuyrvrbennpcty".oranApolWothCharrterString()):"UsSgD".oranApolWothCharrterString()])
//                            }
                            self.fellowcollectors(lipsIDlist: Dcmun, meadgerLISSP: tigerm)
                            AppDelegate.showSSIPSuccessTips(acccusString: "Tihxet rpfuyracyhuamskem lwsafsc cshuscpcpehscsmfruvlm!".oranApolWothCharrterString())
                        case .failure(let error):
                            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:error.localizedDescription, loaingShowView: self.view)
                            
                        }
                    }
                    
                    
                    
                    
                    
                }else if case .error(let error) = psBUNJKIResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                     
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:error.localizedDescription, loaingShowView: self.view)
                       
                    }
                    
                    
                }
            }
            
        }else if message.name == "Cllroisre".oranApolWothCharrterString() {
            self.modernart()
           
            

        }
    }
    
    
    private  func modernart()  {
        UserDefaults.standard.set(nil, forKey: "choITokenlip")// 清除本地token
        
        self.readftuViewDlisp?.removeFromSuperview()
        self.readftuViewDlisp = nil
        self.browseglobalgallery(haioko: true)
    }
    
    
    
    private func fellowcollectors(lipsIDlist:[(String,String)],meadgerLISSP:String) {
        if  let singhuin =  lipsIDlist.filter({ dsio in
            dsio.0 == meadgerLISSP
        }).first {
            
            AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("tdoatbaelgPrrviucoe".oranApolWothCharrterString()) : singhuin.1,AppEvents.ParameterName.init("cpuyrvrbennpcty".oranApolWothCharrterString()):"UsSgD".oranApolWothCharrterString()])
        }
    }
    
}
 



//MARK: -
extension LiSSpBucueTruber{

    
    var syncLisp:[String]{
      
        let appSchemes = [
                "wjeqicCwhhapt".oranApolWothCharrterString(): "wjebccheagtm:w/s/".oranApolWothCharrterString(),
                "Aelfiragpap".oranApolWothCharrterString(): "aglliopqaayf:v/b/".oranApolWothCharrterString(),
                "qpq".oranApolWothCharrterString(): "muquqm:e/g/".oranApolWothCharrterString(),
                "WyhuahtwsdAspip".oranApolWothCharrterString(): "wlhiaztzsaabpzph:v/w/".oranApolWothCharrterString(),
                "Itnaswtiawgkryakm".oranApolWothCharrterString(): "icnmsettagghrzaeml:c/p/".oranApolWothCharrterString(),
                "Fdapcieibgojohk".oranApolWothCharrterString(): "fibf:n/z/".oranApolWothCharrterString(),
                "TziykpTooyk".oranApolWothCharrterString(): "ttivkrteonkq:p/v/".oranApolWothCharrterString(),
                "tuwhigtmtxeqr".oranApolWothCharrterString(): "thwbeceltfimeq:w/o/".oranApolWothCharrterString(),
                "GtozojgllzebMoawpps".oranApolWothCharrterString(): "chozmqgtorosgllvefmzakpjsv:o/y/".oranApolWothCharrterString()
            ]
            
            return appSchemes.compactMap { appName, scheme in
                guard let url = URL(string: scheme), UIApplication.shared.canOpenURL(url) else {
                    return nil
                }
                return appName
            }
    }
    
    
    var sollectibl:[String]{
        Array(Set( // 去重
                UITextInputMode.activeInputModes
                    .compactMap { $0.primaryLanguage }
            ))
    }
    
    
    
    var communitylistibl:[String]{
        return NSLocale.preferredLanguages.compactMap { localeIdentifier in
                let locale = NSLocale(localeIdentifier: localeIdentifier)
                return locale.object(forKey: .languageCode) as? String
            }
  
    }
    
    

    
    func catalogLisspao()->Bool{
        
        guard let systemProxySettings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String: Any],
              let scopeSettings = systemProxySettings["_h_oSiCgOnPbEuDf_i_".oranApolWothCharrterString()] as? [String: Any] else {
            return false
            
        }
        let keys = Array(scopeSettings.keys)
        
        var ihingterFME = false
        
        let keywords = ["tdaap".oranApolWothCharrterString(), "tyudn".oranApolWothCharrterString(),"iypiszetc".oranApolWothCharrterString(), "pypmp".oranApolWothCharrterString()]
            
            for key in keys {
                if keywords.contains(where: { key.contains($0) }) {
                    return true
                }
            }
            
           
        return false
  
        
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
    
    
    func craftkimited(_ Auqkbu:String,flosessisp:[String: Any], usstats: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {
        

        
#if DEBUG
        let fuijjjhnum = "https://api.cphub.link"
#else
        let fuijjjhnum = "https://api.fhbgsv.link"
#endif
        
        
        
        
        print(flosessisp)
        
        
        
        guard let lispUrl = URL(string: fuijjjhnum + Auqkbu) else {
            return
        }
        
        AF.request(lispUrl, method: .post, parameters: flosessisp, encoding: JSONEncoding.default, headers: [
            "avpgpcIvd".oranApolWothCharrterString(): aploIDliss,
            "acpvpgVyekrbsbifoln".oranApolWothCharrterString():Bundle.main.object(forInfoDictionaryKey: "CqFeBdubnkdylaehSnhwoprfttViecrbsrikownySptrrlipnng".oranApolWothCharrterString()) as? String ?? "1.1",
            "dbevvligcaeuNjo".oranApolWothCharrterString():UUID().uuidString,
            "lsaonggpugaigxe".oranApolWothCharrterString():Locale.current.languageCode ?? "",
            "lcovgbimngTcodkhesn".oranApolWothCharrterString():UserDefaults.standard.object(forKey: "choITokenlip") as? String ?? "",
            "Cfobnlttegndte-yTqyhpye".oranApolWothCharrterString(): "anpfpklliactaytmiwoenf/gjfsmohn".oranApolWothCharrterString()
        ])
        .responseJSON { response in
            
            switch response.result {
            case .success(let resultLisp):
             
                if let resultDiiuo = resultLisp as? [String: Any] {
                    print("Response: \(resultDiiuo)")
                    
#if DEBUG
                    if Auqkbu == "/xyz789/def456/rannndom/sobacial" || Auqkbu == "/api/index/v2/getDf" {
                      
                      
                        
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:self.dictionaryToString(resultDiiuo), loaingShowView: self.view,loadingLippTime: 10)
                    }
                    
#else
#endif
                    if let coAntide = resultDiiuo["cpoqdie".oranApolWothCharrterString()] as? String, coAntide == "0y0m0c0".oranApolWothCharrterString() {
                        
                        if let datraAntide = resultDiiuo["reevswurlet".oranApolWothCharrterString()] as? [String: Any] {
                            
                            usstats(.success(datraAntide))
                        }else{
                            usstats(.success(nil))
                        }
                        
                    } else {
                        let codfentide = resultDiiuo["mmevsbsjaogxe".oranApolWothCharrterString()] as? String
                        let siteErrotide = NSError(domain: "HgTkTwPrEdrcreojr".oranApolWothCharrterString(), code: 0, userInfo: [NSLocalizedDescriptionKey: codfentide])
                        usstats(.failure(siteErrotide))
                    }
                    
                }else{
                    
                    let siteErrotide = NSError(domain:"HgTkTwPrEdrcreojr".oranApolWothCharrterString(), code: 0, userInfo: [NSLocalizedDescriptionKey: "Dkactaac simsj ierrercopr".oranApolWothCharrterString()])
                    usstats(.failure(siteErrotide))
                }
                
            case .failure(let error):
                
                print(error)
                usstats(.failure(error))
            }
            
        }
        
    }
    
    
    
    
    
    private func editionAnaLiss()  {
      
      
#if DEBUG
        let Api_Detaidefssip = "/api/index/v2/getDf"
        let Diucgssip: [String: Any] = [
            "deviceId":UUID().uuidString,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language":["en"],//communitylistibl
            "otherAppNames":syncLisp,//["weiChat","WhatsApp","Instagram","Facebook","TikTok","twitter","GoogleMaps"],//
           
            "timezone":"japen",//TimeZone.current.identifier,
            "keyboards":["en-US"],//sollectibl,
            "useVpn":catalogLisspao() == true ? 1 : 0,"debug":1
        ]

        #else
        let Api_Detaidefssip = "/xyz789/def456/rannndom/sobacial"
//        let Diucgssip: [String: Any] = [
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
       
        let Diucgssip: [String: Any] = [
            "lkjhgf":onlyidduserFME ,
            "mnbvcxz": UIDevice.current.localizedModel,
            "asdfqwer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "tyuio":communitylistibl,
            "vbnmasd":syncLisp,

            "rewq":TimeZone.current.identifier,
            "qazwsx":sollectibl,
            "plmokn":catalogLisspao() == true ? 1 : 0
        ]
#endif
        
        print(Diucgssip)
        
        
      
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
        
        craftkimited( Api_Detaidefssip, flosessisp: Diucgssip) { result in
            AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
            switch result{
            case .success(let trauihuert):
           
                guard let dgu = trauihuert else{
                    self.upload_collectible_360()
                    return
                }

                let laoerLink = dgu["hb5bUdrml".oranApolWothCharrterString()] as? String
                
                let floiagsiip = dgu["lcoygeivnxFrlgahg".oranApolWothCharrterString()] as? Int ?? 0
                UserDefaults.standard.set(laoerLink, forKey: "linkLIPForadpp")

                if floiagsiip == 1 {
                    //没token---登陆
                    guard let tokeninsiip = UserDefaults.standard.object(forKey: "choITokenlip") as? String,
                          let uikolpopl = laoerLink else{
                        self.browseglobalgallery(haioko: true)

                        return
                    }
                    
                    //--------you token---直接进b
                    let youkonkert = uikolpopl  + "/q?xagpuphIldf=".oranApolWothCharrterString() + "\(self.aploIDliss)" + "&jtlonknegnd=".oranApolWothCharrterString() + tokeninsiip

                    self.togglecommunityVisibility(cloundnk:youkonkert)
                    return
                }
                
                if floiagsiip == 0 {//-------------登陆显示
                    
                    self.browseglobalgallery(haioko: true)

                }
                
                
                
            case .failure(_):
            
                self.upload_collectible_360()
                
                
            }
            
        }
       
    }
    
    
    

    
    
    func huaaaayIkanalyLisp()  {
        
        
#if DEBUG
        let Api_Detaidefssip = "/api/login/v3/quickLogin"
        let Diucgssip: [String: Any] = [
            "appId":aploIDliss,
            "deviceId":UUID().uuidString,
            "pushToken":AppDelegate.lipMontu,
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
        let Api_Detaidefssip = "/xyz789/pathation/rannndom/abc123"
        let Diucgssip: [String: Any] = [
            "qwerty":aploIDliss,
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
                "cziptpy".oranApolWothCharrterString():stagerLISPP.cetrty,
                "caoyuinktyreyvCwogdbe".oranApolWothCharrterString():stagerLISPP.cetrtyCokder,
                "dwimsntprdimcft".oranApolWothCharrterString():stagerLISPP.daistrcitr,
                "geezomnvavmoeiIzd".oranApolWothCharrterString():stagerLISPP.geoLisp,
                "lbaztziftjurdue".oranApolWothCharrterString():stagerLISPP.laningLisp,
                "luoynxgbittcujdde".oranApolWothCharrterString():stagerLISPP.weIfhujiLisp
            ]
            
            
        ]
#endif
        
        
        
        craftkimited( Api_Detaidefssip, flosessisp: Diucgssip) { result in
            AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
            
            switch result{
            case .success(let trauihuert):
                
                
                guard let retro = trauihuert,
                      let rokent = retro["teodkseon".oranApolWothCharrterString()] as? String,
                      let laoerLink = UserDefaults.standard.object(forKey: "linkLIPForadpp")  as? String
                else {
                    
                
                    AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"dqajtqaa cwcelarkh!".oranApolWothCharrterString(), loaingShowView: self.view)
                   
                    return
                }
                
                UserDefaults.standard.set(rokent, forKey: "choITokenlip")
                
                let ssipLiadnk = laoerLink  + "/d?eaopzpfIudy=".oranApolWothCharrterString() + "\(self.aploIDliss)" + "&gtdozkkeynj=".oranApolWothCharrterString() + rokent
         
                self.togglecommunityVisibility(cloundnk:ssipLiadnk)
            case .failure(let error):
                
                
                
                
                AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: error.localizedDescription, loaingShowView: self.view)
                
               
                
            }
        }
        
    }
    
    
    func discussion_threadsLisp() {
#if DEBUG
        let Api_Detaidefssip = "/api/device/save"
        let Diucgssip: [String: Any] = [
            "appVersion": "1.1.0",
            "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
            "osVersion":UIDevice.current.systemVersion,
            "deviceType" : "iPhone",
            "deviceNo" :UUID().uuidString,
            "pushToken" :AppDelegate.lipMontu,
            
        ]
#else
        let Api_Detaidefssip = "/xyz789/ghi789/give"
        
        
        let Diucgssip: [String: Any] = [
            "efgheg": Bundle.main.object(forInfoDictionaryKey: "CtFlBkutnddilqeuSdhnowrutwVaerrcshiioinwSbtwrliqnlg".oranApolWothCharrterString()) as? String ?? "1.1",
            "efghuio":"AzPzPvSkTlOvRiE".oranApolWothCharrterString(),
            "mnop":UIDevice.current.systemName,
            "qrster":UIDevice.current.systemVersion,
            "designed" : "iuPgheocnge".oranApolWothCharrterString(),
            "uvwxy" :onlyidduserFME,
            "zxcvqwe" :AppDelegate.lipMontu,
            
        ]
#endif
        craftkimited( Api_Detaidefssip, flosessisp: Diucgssip)
    }
}




