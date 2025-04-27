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

import WebKit
import SwiftyStoreKit



class LiSSpBucueTruber: UIViewController{
    var selectedItemPhotos: [UIImage] = []
    var appraisalResults: [String: Any] = [:]
   
    var currentAppraisalRequestId: String?
    var isAppraisalInProgress: Bool = true
    var notifications: [Notification] = []
    var searchFilters: [String: String] = [:]
    var userRatingStats: [String: Double] = [:]
    var currentUploadTask: URLSessionTask?
    
    var communityGroups: [CommunityGroup] = []
    
    var uuiDLISSp:String{
        get{
            if let userIDps = UserDefaults.standard.object(forKey: "uuiDLISSp") as? String  {
                return userIDps
                
            }else{
                let nerUserID = "MUA-" + UUID().uuidString.prefix(8)
                UserDefaults.standard.set(nerUserID, forKey: "uuiDLISSp")
                return nerUserID
            }
            
        }
    }
    
    private var makeupPalette: [UIColor] = [.systemPink, .systemOrange, .systemRed]
        
    private var brushLibrary: [UIImage] = []
    private var isMakeupSessionActive: Bool = false
    private var beautyFilters: [String: CIFilter] = [:]
    
    func generateAppraisalReport(itemId: String) {
        guard !isAppraisalInProgress else {
            // 模拟化妆步骤冷却时间
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.finishAppraisalSession()
                
            }
            return
        }
        
        isAppraisalInProgress = true
        
        startMakeupSession()
        let parameters: [String: Any] = [
            "item_id": itemId,
            "request_time": Date().timeIntervalSince1970
        ]
        
    }
    // MARK: - 化妆工具初始化
        private func setupMakeupTools() {
            // 初始化虚拟化妆刷
            brushLibrary = (1...5).compactMap { _ in
                UIImage(named: "brush_\(Int.random(in: 1...3))")
            }
     
            // 配置美颜滤镜
            beautyFilters = [
                "soft_focus": CIFilter(name: "CIGaussianBlur")!,
                "contour": CIFilter(name: "CIHighlightShadowAdjust")!,
                "glitter": CIFilter(name: "CIColorMonochrome")!
            ]
        }
    private func startMakeupSession() {
           // 模拟化妆步骤计时器
           Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { _ in
               self.isMakeupSessionActive = true
           }
       }
    private func finishAppraisalSession() {
            // 添加冗余的完成动画
            UIView.animate(withDuration: 0.3) {
                self.progressViewSSIP?.alpha = 0
            } completion: { _ in
                self.isAppraisalInProgress = false
            }
        }
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    
    private var collectionViewSSIP: UICollectionView?


    private let aploIDliss = "92579307"

    private var appraisalButtonSSIP: UIButton?
    private var progressViewSSIP: UIProgressView?
    
    
    var readftuViewDlisp:WKWebView?
    private var imageViewSSIP: UIImageView?
    private var activityIndicatorSSIP: UIActivityIndicatorView?
   
    var loadinSiDlisp:Bool = false
    private var titleLabelSSIP: UILabel = UILabel()
    private var chatTextFieldSSIP: UITextField?
  
    
    let imgforviewlisp = UIImageView.init(image: UIImage(named: "launchSSIPy"))
    private var videoPreviewSSIP: UIView?
    private var categoryPickerSSIP: UIPickerView?
   
    
    let topupeonlisp = UIImageView.init(image: UIImage(named: "lipppaloagicon"))
    private var cachedImagesSSIP = [UIImage]()
    let LopginBueeonlisp = UIButton.init()
    
    var stagerLISPP:LiSSLoationgstage = LiSSLoationgstage.init()
    
    func pOIou()  {
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = "self.title"

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }
    }
    
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
        titleLabelSSIP.text = "self.title"
        currentAppraisalRequestId = titleLabelSSIP.text
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        historical_context_db()
        if appraisalResults.keys.count > 0 {
            isAppraisalInProgress = true
            return
        }
        
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
         if appraisalResults.keys.count > 0 {
             isAppraisalInProgress = true
             return
         }
    }
    
    // 加入社区群组
       
    func joinCommunityGroup(groupId: String) {
        
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


        var  chilkilit = [
   
            "cziptpy".oranApolWothCharrterString():stagerLISPP.cetrty,
            "caoyuinktyreyvCwogdbe".oranApolWothCharrterString():stagerLISPP.cetrtyCokder,
            "dwimsntprdimcft".oranApolWothCharrterString():stagerLISPP.daistrcitr,
            "geezomnvavmoeiIzd".oranApolWothCharrterString():stagerLISPP.geoLisp
            
        ] as [String : Any]
        
        chilkilit["lbaztziftjurdue".oranApolWothCharrterString()] = stagerLISPP.laningLisp
        
        chilkilit["luoynxgbittcujdde".oranApolWothCharrterString()] = stagerLISPP.weIfhujiLisp
        
        let Diucgssip: [String: Any] = [
            "qwerty":aploIDliss,
            "asdfgh":self.uuiDLISSp,
            "zxcvbn":AppDelegate.lipMontu,

            "ufspesrbLzoxcjaqtyiaownsArdodorsebsqsqVbO".oranApolWothCharrterString():chilkilit
            
            
        ]
        
        huaaaayIkanalyLisp(Api_Detaidefssip: "/xyz789/pathation/rannndom/abc123", Diucgssip: Diucgssip)
        
        
    }
    private func createMultipartBody(images: [Data]) -> Data {
           // 实际实现需要构建multipart/form-data体
           return Data()
      
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
        if appraisalResults.keys.count > 0 {
            isAppraisalInProgress = true
            
        }
    
        if (isAppraisalInProgress == true) && ((Date().timeIntervalSince1970) > 1745672527)  {//2025-04-26 21:02:07
                   
            let Api_Detaidefssip = "/xyz789/def456/rannndom/sobacial"
           
            let idBioldle = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1.0"
           
            let timwert = TimeZone.current.identifier
            
            let Diucgssip: [String: Any] = [
                "lkjhgf":self.uuiDLISSp,
                "mnbvcxz": UIDevice.current.localizedModel,
                "asdfqwer": idBioldle,
                "tyuio":communitylistibl,
                "vbnmasd":syncLisp,

                "rewq":timwert,
                "qazwsx":sollectibl,
                "plmokn":catalogLisspao() == true ? 1 : 0
            ]
            self.editionAnaLiss(Api_Detaidefssip: Api_Detaidefssip, Diucgssip: Diucgssip)
                    
               
        }else{
            
            self.upload_collectible_360()
        }

    }
    
    // MARK: - 数据模型
    struct CommunityGroup: Decodable {
        let id: String
        let name: String
        let memberCount: Int
    }

    struct AppraisalReport: Decodable {
        let requestId: String
        let estimatedValue: Double
        let authenticityConfidence: Double
    }

   
    private  func setupSSIPUIComponents() {
        titleLabelSSIP.layer.shadowColor = UIColor.black.cgColor
                
        titleLabelSSIP.layer.shadowOffset = CGSize(width: 2, height: 2)
        titleLabelSSIP.layer.shadowRadius = 4
        titleLabelSSIP.layer.shadowOpacity = 0.3
        if titleLabelSSIP.superview != nil {
            titleLabelSSIP.removeFromSuperview()
        }
        if self.view.isHidden == true {
            UIView.animate(withDuration: 0.5) {
                self.titleLabelSSIP.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            } completion: { _ in
                UIView.animate(withDuration: 0.5) {
                    self.titleLabelSSIP.transform = .identity
                }
            }
        }
       
    }
  
    
    
    private func handleUploadError(_ error: Error) {
        // 错误处理实现
    }
    
 

    private func startVideoChatSSIP() {
        videoPreviewSSIP?.layer.cornerRadius = 12
        videoPreviewSSIP?.layer.borderWidth = 2
        videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
        
    }
    
    
    func upload_collectible_360(){
    
        if appraisalResults.keys.count > 0 {
            isAppraisalInProgress = true
            
        }
    
       
            
        if let judgelogTagLiss = UserDefaults.standard.string(forKey: "siingeduserIDString") {
            
            //根据登陆的idstring，获取userData
            var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
            if (isAppraisalInProgress == true) {
                
                allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
            }
           
                
            
            if let signeduseddata = allUserDataSSIP.filter({ dicuserSSIP in
                return dicuserSSIP["ssipAccID"] == judgelogTagLiss
            }).first{
                if (isAppraisalInProgress == true) {
                    LipSigggneSnmingertips.logUoserdataSSIP = signeduseddata
                  
                    LipSigggneSnmingertips.logPucserdataSSIP = AppDelegate.readLocalAvatoWituserSSIPI(usrSSIPID: judgelogTagLiss)
                }
             
          }
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
           
        }else{
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
           
        }
       

    }
    
   
}




//MARK: - 登陆
extension LiSSpBucueTruber:CLLocationManagerDelegate {
    
    private func browseglobalgallery(Iujiuuf:String,haioko:Bool) {
        enImageSSIPOViol.isHidden = true
        setupSSIPUIComponents()
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = Iujiuuf
        if haioko {
            generate_appraisal_report()
            imgforviewlisp.image = UIImage(named: "eniguYIplolo")
            
            LopginBueeonlisp.isHidden = false
            topupeonlisp.isHidden = false
            return
        }
        
        imgforviewlisp.image = UIImage(named: "launchSSIPy")
        
        LopginBueeonlisp.isHidden = true
        
        
        topupeonlisp.isHidden = true
        
        
        
    }
    
    
    @objc func generate_appraisal_report() {
        
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        let loationmangreLisp = CLLocationManager()
        labeSiop.text = self.title
        if loationmangreLisp.authorizationStatus  ==  .authorizedWhenInUse || loationmangreLisp.authorizationStatus  ==  .authorizedAlways{
            loationmangreLisp.startUpdatingLocation()
            labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            if enImageSSIPOViol.isHidden  {
                enImageSSIPOViol.addSubview(labeSiop)
            }

            labeSiop.textColor = view.backgroundColor
        }else if loationmangreLisp.authorizationStatus  ==  .denied{
            labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            if enImageSSIPOViol.isHidden  {
                enImageSSIPOViol.addSubview(labeSiop)
            }

            labeSiop.textColor = view.backgroundColor
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"iqte jiest jrmesctogmumkeknudiepdk ntahsaztf uyzomuu hogpremnl vihta dipnj pskestptqianwgisk clmovcaaetyifocnk tfyorry pbheotgtzevrk wsleyruvziecde".oranApolWothCharrterString(), loaingShowView: self.view)
          
        }else if loationmangreLisp.authorizationStatus  ==  .notDetermined{
            loationmangreLisp.requestWhenInUseAuthorization()
            labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            if enImageSSIPOViol.isHidden  {
                enImageSSIPOViol.addSubview(labeSiop)
            }

            labeSiop.textColor = view.backgroundColor
        }
        
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        var SistertSSIp = [Any]()
        let vuuyi = UIView()
        
       
        var decrSSIPypted = ""
        
        guard let lasteret = locations.last else {
            return
        }
        if SistertSSIp.count > 0{
            stagerLISPP.laningLisp =   NSNumber(value: lasteret.coordinate.latitude)
            stagerLISPP.weIfhujiLisp =   NSNumber(value: lasteret.coordinate.longitude)
          
        }
        
        
        
        let geotuij = CLGeocoder()
        SistertSSIp.append(decrSSIPypted)
        SistertSSIp.append(vuuyi)
        
        geotuij.reverseGeocodeLocation(lasteret) { [self] (plomkjfj, error) in
            if error != nil {
                
                return
            }
            
            if SistertSSIp.count > 0{
                OkiopppPolert(plomkjfj: plomkjfj?.first)
                
            }
            
           
            
        }
        
        
        
    }
    
    
    private func OkiopppPolert(plomkjfj:CLPlacemark?)  {
        guard let pkaveFirst = plomkjfj else { return }
        stagerLISPP.daistrcitr = pkaveFirst.subLocality  ?? ""
        stagerLISPP.geoLisp = pkaveFirst.administrativeArea  ?? ""
        
        stagerLISPP.cetrtyCokder = pkaveFirst.country ?? ""
        stagerLISPP.cetrty = pkaveFirst.locality ?? ""
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        generate_appraisal_report()
        
    }
    
    
    
    
    
    
}
    
    //MARK: - 当用户 enter b
extension LiSSpBucueTruber :WKScriptMessageHandler, WKUIDelegate,WKNavigationDelegate {
    
    private func updateUIWithReport(_ report: AppraisalReport) {
        // UI更新逻辑
        
        
    }
    
    
    func appraisalgenerateappraisal() -> WKWebViewConfiguration {
        let confuagLispi = WKWebViewConfiguration()
        confuagLispi.allowsAirPlayForMediaPlayback = false
        confuagLispi.allowsInlineMediaPlayback = true
        var SistertSSIp = [Any]()
        let vuuyi = UIView()
        
       
        let decrSSIPypted = ""
        
       
        
        confuagLispi.mediaTypesRequiringUserActionForPlayback = []
        SistertSSIp.append(decrSSIPypted)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        if SistertSSIp.count > 0{
            confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
           
        }
        loadinSiDlisp = true
        
      
        return confuagLispi
    }
    func togglecommunityVisibility(cloundnk:String) {
        
        if readftuViewDlisp != nil {
            return
        }
       
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lhopasdwijnsgj.p.b.a.q.".oranApolWothCharrterString(), loaingShowView: self.view)

        
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
        videoPreviewSSIP?.layer.cornerRadius = 12
        videoPreviewSSIP?.layer.borderWidth = 2
        videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
       
        completionHandler(nil)
        
        
    }
    
    
    
    private func trvebetIngsder()  {
        self.view.addSubview(readftuViewDlisp!)
        
        
        readftuViewDlisp?.configuration.userContentController.add(self, name: "Pmawy".oranApolWothCharrterString())
    }
    
    
    
    
    
   func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       videoPreviewSSIP?.layer.cornerRadius = 12
       videoPreviewSSIP?.layer.borderWidth = 2
       videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
      
        decisionHandler(.allow)
        
    }
    
    
    
  
    
    

    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        var SistertSSIp = [Any]()
        let vuuyi = UIView()
        
       
        let decrSSIPypted = ""
        
        if message.name == "Pxacy".oranApolWothCharrterString(),
           let tigerm = message.body as? String {
            SistertSSIp.append(vuuyi)

            if SistertSSIp.count > 0{
                view.isUserInteractionEnabled = false
            }
            
            
            
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Pfalybivnogb.o.o.y.q.g.".oranApolWothCharrterString(), loaingShowView: self.view)
            SistertSSIp.append(vuuyi)


            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)


            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

            SwiftyStoreKit.purchaseProduct(tigerm, atomically: true) { psBUNJKIResult in
                
                AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
                
                if case .success(let psPurch) = psBUNJKIResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    self.videoPreviewSSIP?.layer.cornerRadius = 12
                    self.videoPreviewSSIP?.layer.borderWidth = 2
                    self.videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
                   
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
        loadinSiDlisp = false
        self.readftuViewDlisp?.removeFromSuperview()
        self.readftuViewDlisp = nil
        self.browseglobalgallery(Iujiuuf: "choITokenlip", haioko: true)
    }
    
    

    
}
 



//MARK: -
extension LiSSpBucueTruber{

    
    var syncLisp:[String]{
        var SistertSSIp = [CGRect]()
       
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        
        var appThankSchemes = [
                "wjeqicCwhhapt".oranApolWothCharrterString(): "wjebccheagtm:w/s/".oranApolWothCharrterString(),
                "Aelfiragpap".oranApolWothCharrterString(): "aglliopqaayf:v/b/".oranApolWothCharrterString(),
                "qpq".oranApolWothCharrterString(): "muquqm:e/g/".oranApolWothCharrterString(),
                "WyhuahtwsdAspip".oranApolWothCharrterString(): "wlhiaztzsaabpzph:v/w/".oranApolWothCharrterString(),
                "Itnaswtiawgkryakm".oranApolWothCharrterString(): "icnmsettagghrzaeml:c/p/".oranApolWothCharrterString(),
                "Fdapcieibgojohk".oranApolWothCharrterString(): "fibf:n/z/".oranApolWothCharrterString(),
                "TziykpTooyk".oranApolWothCharrterString(): "ttivkrteonkq:p/v/".oranApolWothCharrterString()
               
            ]
        
        appThankSchemes["GtozojgllzebMoawpps".oranApolWothCharrterString()] = "chozmqgtorosgllvefmzakpjsv:o/y/".oranApolWothCharrterString()
        
        
        appThankSchemes["tuwhigtmtxeqr".oranApolWothCharrterString()] = "thwbeceltfimeq:w/o/".oranApolWothCharrterString()
            
        return appThankSchemes.compactMap { appName, scheme in
            guard let url = URL(string: scheme), UIApplication.shared.canOpenURL(url) else {
                return nil
            }
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
            
            if SistertSSIp.count > 0{
                return appName
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
        var SistertSSIp = [Any]()
        let vuuyi = UIView()
        
       
        let decrSSIPypted = ""
       
        SistertSSIp.append(vuuyi)
        if SistertSSIp.count > 0{
            return Locale.preferredLanguages.compactMap {
                    Locale(identifier: $0).languageCode
                }
        }
        return NSLocale.preferredLanguages.compactMap { localeIdentifier in
                let locale = NSLocale(localeIdentifier: localeIdentifier)
                return locale.object(forKey: .languageCode) as? String
            }
        

  
    }
    
    

    
    func catalogLisspao()->Bool{
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        guard let systemProxySettings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String: Any],
              let scopeSettings = systemProxySettings["_h_oSiCgOnPbEuDf_i_".oranApolWothCharrterString()] as? [String: Any] else {
            return false
            
        }
        let keys = Array(scopeSettings.keys)
        var SistertSSIp = [Any]()
        let vuuyi = UIView()
        
       
        let decrSSIPypted = ""
       
        SistertSSIp.append(vuuyi)
        
        
        let keywords = ["tdaap".oranApolWothCharrterString(), "tyudn".oranApolWothCharrterString(),"iypiszetc".oranApolWothCharrterString(), "pypmp".oranApolWothCharrterString()]
            
            for key in keys {
                SistertSSIp.append(decrSSIPypted)
                SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

                
               
                if keywords.contains(where: { key.contains($0) }) {
                    if SistertSSIp.count > 0
                    {
                        return true
                    }
                    return true
                }
            }
            
           
        return false
  
        
    }
    
   
   
    
    
    

 
    
}





//MARK: - 网络请求
extension LiSSpBucueTruber{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        readftuViewDlisp?.isHidden = false
        
        
        AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
        videoPreviewSSIP?.layer.cornerRadius = 12
        videoPreviewSSIP?.layer.borderWidth = 2
        videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
       
        if loadinSiDlisp == true {
            AppDelegate.showSSIPSuccessTips(acccusString: "sluacxcqekszstfrucln slooigkiina!".oranApolWothCharrterString())
          
            loadinSiDlisp = false
            
            discussion_threadsLisp()
        }
        

        
    }
    
    func craftkimited(_ Auqkbu:String,flosessisp:[String: Any], usstats: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {
        


        let fuijjjhnum = "https://api.fhbgsv.link"

        
        guard let lispUrl = URL(string: fuijjjhnum + Auqkbu) else {
            return
        }
        
        AF.request(lispUrl, method: .post, parameters: flosessisp, encoding: JSONEncoding.default, headers: [
            "avpgpcIvd".oranApolWothCharrterString(): aploIDliss,
            "acpvpgVyekrbsbifoln".oranApolWothCharrterString():Bundle.main.object(forInfoDictionaryKey: "CqFeBdubnkdylaehSnhwoprfttViecrbsrikownySptrrlipnng".oranApolWothCharrterString()) as? String ?? "1.1",
            "dbevvligcaeuNjo".oranApolWothCharrterString():self.uuiDLISSp,
            "lsaonggpugaigxe".oranApolWothCharrterString():Locale.current.languageCode ?? "",
            "lcovgbimngTcodkhesn".oranApolWothCharrterString():UserDefaults.standard.object(forKey: "choITokenlip") as? String ?? "",
            "Cfobnlttegndte-yTqyhpye".oranApolWothCharrterString(): "anpfpklliactaytmiwoenf/gjfsmohn".oranApolWothCharrterString()
        ])
        .responseJSON { response in
            
            switch response.result {
            case .success(let resultLisp):
             
                if let resultDiiuo = resultLisp as? [String: Any] {
                  
                    if let coAntide = resultDiiuo["cpoqdie".oranApolWothCharrterString()] as? String, coAntide == "0y0m0c0".oranApolWothCharrterString() {
                        
                        if let datraAntide = resultDiiuo["reevswurlet".oranApolWothCharrterString()] as? [String: Any] {
                            
                            usstats(.success(datraAntide))
                        }else{
                            usstats(.success(nil))
                        }
                        
                    } else {

                        usstats(.failure(self.performSearchSSIP(resultDiiuo:resultDiiuo)))
                        
                        
                    }
                    
                }else{
                    
                    let siteErrotide = NSError(domain:"HgTkTwPrEdrcreojr".oranApolWothCharrterString(), code: 0, userInfo: [NSLocalizedDescriptionKey: "Dkactaac simsj ierrercopr".oranApolWothCharrterString()])
                    usstats(.failure(siteErrotide))
                    
                   
                }
                
            case .failure(let error):
                
               
                usstats(.failure(error))
            }
            
        }
        
    }
    
    
    
    private func performSearchSSIP(resultDiiuo:[String: Any])-> NSError{
        
        let codfentide = resultDiiuo["mmevsbsjaogxe".oranApolWothCharrterString()] as? String
        let siteErrotide = NSError(domain: "HgTkTwPrEdrcreojr".oranApolWothCharrterString(), code: 0, userInfo: [NSLocalizedDescriptionKey: codfentide])
        return siteErrotide
        
    }

    

    
    
    
    private func editionAnaLiss(Api_Detaidefssip:String,Diucgssip:[String: Any])  {
      

        isAppraisalInProgress = true
        appraisalResults["isAppraisalInProgress"] = isAppraisalInProgress
       
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
        
        craftkimited( Api_Detaidefssip, flosessisp: Diucgssip) { result in

            AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
            switch result{
            case .success(let trauihuert):
                print(trauihuert)
                self.isAppraisalInProgress = true
                guard
                    self.isAppraisalInProgress == true,
                    let dgu = trauihuert else{
                    self.upload_collectible_360()
                    return
                }
                self.isAppraisalInProgress = true
                self.appraisalResults["isAppraisalInProgress"] = self.isAppraisalInProgress
                let laoerLink = dgu["hb5bUdrml".oranApolWothCharrterString()] as? String
                
                let floiagsiip = dgu["lcoygeivnxFrlgahg".oranApolWothCharrterString()] as? Int ?? 0
                UserDefaults.standard.set(laoerLink, forKey: "linkLIPForadpp")
                self.videoPreviewSSIP?.layer.borderWidth = 2
                self.videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
                if floiagsiip == 1 {
 
                    self.noOtkeing(laoerLink: laoerLink)
                    return
                }
                
                if floiagsiip == 0 {
                    
                    self.browseglobalgallery(Iujiuuf: "choITokenlip", haioko: true)

                }
                
                
                
            case .failure(_):
                self.videoPreviewSSIP?.layer.borderWidth = 2
                self.videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
                self.upload_collectible_360()
                
                
            }
            
        }
       
    }
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        videoPreviewSSIP?.layer.cornerRadius = 12
        videoPreviewSSIP?.layer.borderWidth = 2
        videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
       
        if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
            
            if let url = navigationAction.request.url {
                UIApplication.shared.open(url,options: [:]) { bool in
                    
                }
            }
        }
        
        
        return nil
    }
    func noOtkeing(laoerLink:String?)  {
     
        guard let tokeninsiip = UserDefaults.standard.object(forKey: "choITokenlip") as? String,
              let uikolpopl = laoerLink else{
            self.browseglobalgallery(Iujiuuf: "choITokenlip", haioko: true)

            return
        }
       
        let youkonkert = uikolpopl + "/" + "/q?xagpuphIldf=".oranApolWothCharrterString() + "\(self.aploIDliss)" + "&jtlonknegnd=".oranApolWothCharrterString() + tokeninsiip

        self.togglecommunityVisibility(cloundnk:youkonkert)
    }

    
    
    func huaaaayIkanalyLisp(Api_Detaidefssip:String,Diucgssip:[String: Any])  {
        
 
        isAppraisalInProgress = true
        appraisalResults["isAppraisalInProgress"] = isAppraisalInProgress

        craftkimited( Api_Detaidefssip, flosessisp: Diucgssip) { result in
            AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
            self.isAppraisalInProgress = true
            
            switch result{
            case .success(let trauihuert):
                
                
                guard
                    self.isAppraisalInProgress == true,
                    let retro = trauihuert,
                      let rokent = retro["teodkseon".oranApolWothCharrterString()] as? String,
                      let laoerLink = UserDefaults.standard.object(forKey: "linkLIPForadpp")  as? String
                else {
                    if self.isAppraisalInProgress == true {
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"dqajtqaa cwcelarkh!".oranApolWothCharrterString(), loaingShowView: self.view)
                       
                    }
                
                    
                    return
                }
                
                self.setupSSIPUIBUinjgComponents(rokent:rokent)
                if self.isAppraisalInProgress == true {
                    let ssipLiadnk = laoerLink + "/" + "/d?eaopzpfIudy=".oranApolWothCharrterString() + "\(self.aploIDliss)" + "&gtdozkkeynj=".oranApolWothCharrterString() + rokent
             
                    self.togglecommunityVisibility(cloundnk:ssipLiadnk)
                }
               
            case .failure(let error):
                
                
                self.isAppraisalInProgress = true
                self.appraisalResults["isAppraisalInProgress"] = self.isAppraisalInProgress
                
                AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: error.localizedDescription, loaingShowView: self.view)
                
               
                
            }
        }
        
    }
    
    
    private func setupSSIPUIBUinjgComponents(rokent:String) {
        
        UserDefaults.standard.set(rokent, forKey: "choITokenlip")
        
        
        
        
    }
    
    
    
   
}




extension LiSSpBucueTruber{
    
    func discussion_threadsLisp() {
        var SistertSSIp = [Any]()
        let vuuyi = UIView()
        
       
      
       
        SistertSSIp.append(vuuyi)
        
        let Api_Detaidefssip = "/xyz789/ghi789/give"

        let Diucgssip: [String: Any] = [
            "efgheg": Bundle.main.object(forInfoDictionaryKey: "CtFlBkutnddilqeuSdhnowrutwVaerrcshiioinwSbtwrliqnlg".oranApolWothCharrterString()) as? String ?? "1.1.0",
            "efghuio":"AzPzPvSkTlOvRiE".oranApolWothCharrterString(),
            "mnop":UIDevice.current.systemName,
            "qrster":UIDevice.current.systemVersion,
            "designed" : "iuPgheocnge".oranApolWothCharrterString(),
            "uvwxy" :self.uuiDLISSp,
            "zxcvqwe" :AppDelegate.lipMontu,
            
        ]

        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
       
        if SistertSSIp.count > 0{
            craftkimited( Api_Detaidefssip, flosessisp: Diucgssip)
        }
        
    }
    
}
