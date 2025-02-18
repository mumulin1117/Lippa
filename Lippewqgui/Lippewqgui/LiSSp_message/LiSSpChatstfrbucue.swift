//
//  LiSSpChatstfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpChatstfrbucue: LissipSecondFrbucue,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        PChatUSerFwbnke.chatSSIPList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let asdSSIp = tableView.dequeueReusableCell(withIdentifier: "LiSSTagwCellID", for: indexPath) as! LiSSTagwCell
        asdSSIp.selectionStyle = .none
        asdSSIp.buberryoleSSIP.text = PChatUSerFwbnke.chatSSIPList[indexPath.row].1
        asdSSIp.okayIsMinwe = PChatUSerFwbnke.chatSSIPList[indexPath.row].0
        return asdSSIp
        
    }
    
    @IBOutlet weak var puitertView: UITextField!
    
    
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var nicmerSSIP: UILabel!
    
    @IBOutlet weak var babdaerView: UIImageView!
    
    @IBOutlet weak var appChatMeassgeSSIP: UITableView!
    
    var PChatUSerFwbnke:SSIPChatUSerFwbnke
    init(_PChatUSerFwbnke :SSIPChatUSerFwbnke) {
        self.PChatUSerFwbnke = _PChatUSerFwbnke
        super.init(nibName: nil, bundle: nil)
    }
    

     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        for (id,itru) in LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.enumerated() {
            if itru.whoseSSIP["ssipAccID"] == PChatUSerFwbnke.whoseSSIP["ssipAccID"]{
                LiSSpMeaddgeBootomrbucue.cxhatArraySSIP[id] = PChatUSerFwbnke
            }
        }
        
        if LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.filter({ SSIPChatUSerFwbnked in
            return SSIPChatUSerFwbnked.whoseSSIP["ssipAccID"] == PChatUSerFwbnke.whoseSSIP["ssipAccID"]
        }).count == 0 {
            LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.append(PChatUSerFwbnke)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        nicmerSSIP.text = PChatUSerFwbnke.whoseSSIP["ssipNadme"] ?? ""
        babdaerView.image = UIImage(named: PChatUSerFwbnke.whoseSSIP["ssipPicdty"] ?? "")
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(ctterBsdNoingSSIP), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        babdaerView.maskLippaRoundCorner(rMakLSSIpadius: 18)

        appChatMeassgeSSIP.separatorStyle = .none
        appChatMeassgeSSIP.register(LiSSTagwCell.self, forCellReuseIdentifier: "LiSSTagwCellID")
        appChatMeassgeSSIP.delegate = self
        appChatMeassgeSSIP.dataSource = self

       
    }

    @IBAction func chpickedCLIKSSip(_ sender: UIButton) {
        
        let normailAreport = UIAlertController(title: "Report OR Black", message:nil, preferredStyle: .actionSheet)
        
        normailAreport.addAction(UIAlertAction(title: "Black", style: .default, handler: { alertSSIP in
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Requesting...", loaingShowView: self.view)
            self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                AppDelegate.showSSIPSuccessTips(acccusString: "Black successful!")
                self.delsteSSIPONenterBottomUser(iduserSSIP: self.PChatUSerFwbnke.whoseSSIP)
            }
           
        }))
       
        normailAreport.addAction(UIAlertAction(title: "Report", style: .default, handler: { alertSSIP in
            self.shingcaseOriginReport()
           
        }))
        normailAreport.addAction(UIAlertAction(title: "cancel", style: .default))
        
        self.present(normailAreport, animated: true)
    }
    
    
    
    private  func shingcaseOriginReport()  {
        
        let normailAreport = UIAlertController(title: "Report User Reason", message:nil, preferredStyle: .actionSheet)
        let reasonsdonin = ["Offensive Language","Inaccuracy","Privacy Violation","Spam or Irrelevance"]
        
        for item in reasonsdonin {
            normailAreport.addAction(UIAlertAction(title: item, style: .default, handler: { alertSSIP in
                AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
                self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                    AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                    AppDelegate.showSSIPSuccessTips(acccusString: "Thank you for your report. We will verify and handle it as soon as possible")
                }
               
            }))
        }
       
        
        normailAreport.addAction(UIAlertAction(title: "cancel", style: .default))
        
        self.present(normailAreport, animated: true)
        
        
    }
    
    @IBAction func surepostingSSIp(_ sender: UIButton) {
      
        guard let puictertView = self.puitertView.text,puictertView.isEmpty == false else {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Enter what you want to say first!", loaingShowView: self.view)
            return  }
        
        let newmesag = (true,puictertView)
        
        PChatUSerFwbnke.chatSSIPList.append(newmesag)
        appChatMeassgeSSIP.reloadData()
        puitertView.resignFirstResponder()
        puitertView.text = nil
    }
    

}
