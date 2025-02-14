//
//  LiSSpBArbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
import SwiftMessages


class SSIPChatUSerFwbnke {

    var whoseSSIP:[String: String]
    var chatSSIPList:Array<(Bool,String)>
    init(_whoseSSIP: [String : String], _chatSSIPList: Array<(fromMeSSIP: Bool, commenMeSSIP: String)>) {
        self.whoseSSIP = _whoseSSIP
        self.chatSSIPList = _chatSSIPList
    }
}



class LiSSpBArbucue: NSObject {
    static let SSIPlA = LiSSpBArbucue.init()
 
    var totalvrdataSSIP:Array<Dictionary<String,String>> = Array<Dictionary<String,String>>()
    
    
    var logUoserdataSSIP:Dictionary<String,String> = Dictionary<String,String>()
    var logPucserdataSSIP:UIImage?
    
    var isagreeeeSSIP:Bool = false
    
    
    var FolsdwemeSSIP = [[String: String]]()
    var facrewemeSSIP = [[String: String]]()
  
    var cxhatArraySSIP = [SSIPChatUSerFwbnke].init()//聊天列表
    
    var olkauSSIplogin:Bool{
        get{
           
            return UserDefaults.standard.bool(forKey: "olkauSSIplogin")
        }
        set{
            UserDefaults.standard.set(newValue, forKey: "olkauSSIplogin")
            if newValue == false {
                logUoserdataSSIP.removeAll()
                logPucserdataSSIP = nil
                FolsdwemeSSIP.removeAll()
                facrewemeSSIP.removeAll()
               
                cxhatArraySSIP.removeAll()
            }
           
        }
    }
    
    func comeSSIPONenterBottomUser() {
        logUoserdataSSIP["ssipNadme"] = "Aria"
        logUoserdataSSIP["ssipPicdty"] = "SSIPavator9"
        logUoserdataSSIP["ssipDoimond"] = "200"
        logUoserdataSSIP["ssipDtfestAccount"] = "lippa@gmail.com"
        logUoserdataSSIP["ssipDtfestBriedf"] = "🖤 Collector of forgotten stories | Preserving history, one treasure at a time 📜"
       
        logUoserdataSSIP["ssipAccID"] = "234589"
        
        logUoserdataSSIP["ssipColletionPic"] = ""
        logUoserdataSSIP["ssipColletionDesc"] = ""
       
        
        logUoserdataSSIP["ssipPublishPic"] = "SSIpTiezi8"
        logUoserdataSSIP["ssipPublishDesc"] = "My first medieval - style dagger for my weapon collection. It's a conversation starter, for sure."
        logUoserdataSSIP["csbCommentr"] = ""
        
        logPucserdataSSIP = UIImage(named:"SSIPavator9")
        
        FolsdwemeSSIP = Array(totalvrdataSSIP.shuffled().prefix(1))
        facrewemeSSIP = Array(totalvrdataSSIP.shuffled().prefix(1))
        
        if let laiker = totalvrdataSSIP.first  {
            let comengONe = SSIPChatUSerFwbnke.init(_whoseSSIP: laiker, _chatSSIPList: [(true,"What kind of art do you collect?"),(false,"I love oil paintings, especially Impressionism.")])
            cxhatArraySSIP.append(comengONe)

        }
        
        if  totalvrdataSSIP.count == 2 {
            
            let laiet = totalvrdataSSIP[1]
            let comengtwo = SSIPChatUSerFwbnke.init(_whoseSSIP: laiet, _chatSSIPList: [(false,"How do you choose what to collect?"),(true,"I mainly look for emotional resonance in the work.")])
            cxhatArraySSIP.append(comengtwo)
            
        }
        
        
        if  totalvrdataSSIP.count == 3 {
            
            let laidsan = totalvrdataSSIP[2]
            let comengtwo = SSIPChatUSerFwbnke.init(_whoseSSIP: laidsan, _chatSSIPList: [(false,"Any advice on collecting art?")])
            cxhatArraySSIP.append(comengtwo)
            
        }
    }
    
    override init() {
        super.init()
        guard let path = Bundle.main.path(forResource: "SSIPUjgun", ofType: "plist"),
        let data = FileManager.default.contents(atPath: path) else {
            totalvrdataSSIP = Array<Dictionary<String,String>>()
            return
        }
        if let dictArray = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [[String: String]]  {
            totalvrdataSSIP = dictArray
        }
        
        
        for (k,_) in totalvrdataSSIP.enumerated() {
            totalvrdataSSIP[k]["fandscSIPPish"] = "\(Int.random(in: 0...10))"
            totalvrdataSSIP[k]["fowerdscSIPPish"] = "\(Int.random(in: 0...10))"
            totalvrdataSSIP[k]["islikeThisPublish"] = "0"
        }
        
     
        
        
    }
    
  
    
    
    func delsteSSIPONenterBottomUser(iduserSSIP:[String:String]) {
        
        let onlyID = iduserSSIP["ssipAccID"] ?? ""
        totalvrdataSSIP = totalvrdataSSIP.filter { !($0["ssipAccID"]  == onlyID) }
        
        self.FolsdwemeSSIP = FolsdwemeSSIP.filter { !($0["ssipAccID"]  == onlyID) }
        
        self.facrewemeSSIP = facrewemeSSIP.filter { !($0["ssipAccID"]  == onlyID) }
        
        
        cxhatArraySSIP = cxhatArraySSIP.filter { !($0.whoseSSIP["ssipAccID"]  == onlyID) }
        
        NotificationCenter.default.post(name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
    }
    
    
    func giveAttitudeTirtNenterBottomUser(transderinfo:Dictionary<String,String>,isSSIPlijer:Bool)  {
        
        for (u,item) in totalvrdataSSIP.enumerated() {
            if item ["ssipAccID"] == transderinfo ["ssipAccID"]{
                totalvrdataSSIP[u]["islikeThisPublish"] = isSSIPlijer ? "SSIPLike" : "SSIPUNLike"
               
                
            }
        }
        
       
        
    }
    
    
   
   

}
