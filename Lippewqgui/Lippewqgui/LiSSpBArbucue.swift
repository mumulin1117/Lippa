//
//  LiSSpBArbucue.swift
//  Lippewqgui
//
//  Created by mumu on 2025/2/10.
//

import UIKit

class LiSSpBArbucue: NSObject {

}

class CSBChatPack {

    var whoToMeCSBDic:[String: String]
    var chatCSBList:Array<(Bool,String)>
    init(whoCSB: [String : String], chatCSB: Array<(isMine: Bool, comment: String)>) {
        self.whoToMeCSBDic = whoCSB
        self.chatCSBList = chatCSB
    }
}

class CSBFetcherAll: NSObject {
    static let Hammer = CSBFetcherAll.init()
 
    var mineCSBShowUser:Array<Dictionary<String,String>> = Array<Dictionary<String,String>>()
    
    
    var melingCSBINfo:Dictionary<String,String> = Dictionary<String,String>()
    var shoHeadCSB:UIImage?
    
    var showNewstCSB = [[String: String]]()
    var showFiretCSB = [[String: String]]()
    
    var folooweNewstCSB = [[String: String]]()
    var likemeuCSB = [[String: String]]()
    var meunlikeCSB = [[String: String]]()
    var allMyChatListCSB = [CSBChatPack].init()
    
    var ifLogStatusCSB:Bool{
        get{
            return true
            return UserDefaults.standard.bool(forKey: "ifUserloginStatus")
        }
        set{
            UserDefaults.standard.set(newValue, forKey: "ifUserloginStatus")
            if newValue == false {
                melingCSBINfo.removeAll()
                shoHeadCSB = nil
                folooweNewstCSB.removeAll()
                likemeuCSB.removeAll()
                meunlikeCSB.removeAll()
                allMyChatListCSB.removeAll()
            }
           
        }
    }
    
    func ceaterTestUserCSBINFO() {
        melingCSBINfo["csbpersonName"] = "Sawyer"
        melingCSBINfo["csbpersonHead"] = "userHear9"
        melingCSBINfo["allCoind"] = "20"
        melingCSBINfo["csbEmail"] = "Qin1234@gmail.com"
        melingCSBINfo["csbpasword"] = "12345678"
        melingCSBINfo["csbbirth"] = "1999-08-22"
        melingCSBINfo["csbpersonID"] = "2489"
        
        
        melingCSBINfo["csbpersonDymPic"] = "userDmy9"
        melingCSBINfo["csbpersonDymTitle"] = "😜Curling chaos, but oh so fun.🎉"
        melingCSBINfo["csbpersonDymTime"] = "Oct.16 13:21:23"
        melingCSBINfo["csbpersonbelikecount"] = "0"
        
        
        shoHeadCSB = UIImage(named:"userHear9")
        
        folooweNewstCSB = Array(mineCSBShowUser.shuffled().prefix(3))
        likemeuCSB = Array(mineCSBShowUser.shuffled().prefix(1))
        if let oned = mineCSBShowUser.first  {
            let comengONe = CSBChatPack.init(whoCSB: oned, chatCSB: [(true,"Hi!Have you seen the latest handmade ceramic pieces at the local craft fair?"),(false,"No, I haven't. Are they amazing?")])
            
            
            allMyChatListCSB.append(comengONe)
            
            
        }
        
        if  mineCSBShowUser.count >= 2 {
            
            let two = mineCSBShowUser[1]
            let comengtwo = CSBChatPack.init(whoCSB: two, chatCSB: [(false,"Have you been following curling…")])
            allMyChatListCSB.append(comengtwo)
            
        }
    }
    
    override init() {
        super.init()
        mineCSBShowUser = loading_actionve_CSBData(pathCSB: "CSBAUserlistg")
        
        for (k,_) in mineCSBShowUser.enumerated() {
            mineCSBShowUser[k]["csbAllFolow"] = "\(Int.random(in: 0...10))"
            mineCSBShowUser[k]["csbAllIlike"] = "\(Int.random(in: 0...10))"
            mineCSBShowUser[k]["heartForerDym"] = "0"
        }
        
        
        
        showNewstCSB = Array(mineCSBShowUser.prefix(5))
        showFiretCSB = Array(mineCSBShowUser.suffix(5))
        
        
    }
    
    
    func loading_actionve_CSBData(pathCSB:String)->Array<Dictionary<String,String>> {
        guard let path = Bundle.main.path(forResource: pathCSB, ofType: "plist"),
        let data = FileManager.default.contents(atPath: path) else {
            return Array<Dictionary<String,String>>()
        }
        if let dictArray = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [[String: String]]  {
            return dictArray
        }
        
        return Array<Dictionary<String,String>>()
    }
    
    func removeSomeUserCSBINfo(iuCSB:[String:String]) {
        
        let onlyID = iuCSB["csbpersonID"] ?? ""
        if meunlikeCSB.filter({ ($0["csbpersonID"]  == onlyID) }).count == 0{
            self.meunlikeCSB.append(iuCSB)
        }
        
        self.folooweNewstCSB = folooweNewstCSB.filter { !($0["csbpersonID"]  == onlyID) }
        
        self.likemeuCSB = likemeuCSB.filter { !($0["csbpersonID"]  == onlyID) }
        
        self.showNewstCSB = showNewstCSB.filter { !($0["csbpersonID"]  == onlyID) }
        
        self.showFiretCSB = showFiretCSB.filter { !($0["csbpersonID"]  == onlyID) }
        allMyChatListCSB = allMyChatListCSB.filter { !($0.whoToMeCSBDic["csbpersonID"]  == onlyID) }
        
        NotificationCenter.default.post(name: NSNotification.Name.init("laheiCSBkUsers"), object: nil)
    }
    
    
    func updateIlikeStatus(wight:Dictionary<String,String>,isLike:Bool)  {
        
        for (ijo,item) in showNewstCSB.enumerated() {
            if item ["csbpersonID"] == wight ["csbpersonID"]{
                showNewstCSB[ijo]["heartForerDym"] = isLike ? "1" : "0"
                showNewstCSB[ijo]["csbpersonbelikecount"] =  isLike ? "\((Int(showNewstCSB[ijo]["csbpersonbelikecount"] ?? "0") ?? 0) + 1)" : "\((Int(showNewstCSB[ijo]["csbpersonbelikecount"] ?? "0") ?? 0) - 1)"
                
            }
        }
        
        for (ijo,item) in showFiretCSB.enumerated() {
            if item ["csbpersonID"] == wight ["csbpersonID"]{
                showFiretCSB[ijo]["heartForerDym"] = isLike ? "1" : "0"
                showNewstCSB[ijo]["csbpersonbelikecount"] = isLike ? "\((Int(showNewstCSB[ijo]["csbpersonbelikecount"] ?? "0") ?? 0) + 1)" : "\((Int(showNewstCSB[ijo]["csbpersonbelikecount"] ?? "0") ?? 0) - 1)"
            }
        }
        
        
        
    }
}
