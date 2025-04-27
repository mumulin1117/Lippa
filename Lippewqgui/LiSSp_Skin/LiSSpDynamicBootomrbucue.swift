//
//  LiSSpDynamicBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
import SnapKit
/// 动态贴子
class LiSSpDynamicBootomrbucue: LiSSpNOrmalSnmingertips,UICollectionViewDataSource,UICollectionViewDelegate {
    struct MakeupProduct {
           let brand: String
           let shadeName: String
           let hexColor: String
           let isNew: Bool
           let category: ProductCategory
           
           enum ProductCategory: String {
               case lipstick = "💄  lip"
               case eyeshadow = "👁  eye shadow"
               case blush = "🌺  powder blusher"
           }
      
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate { return appledeelgate.totalvrdataSSIP.count}
        return 0
       
    }
    
    // MARK: - 界面组件
       private lazy var tryOnButton: UIButton = {
           let button = UIButton(type: .system)
           button.setTitle("🪞  Virtual color testing", for: .normal)
           button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
           
           button.layer.cornerRadius = 24
           button.backgroundColor = .systemPink.withAlphaComponent(0.15)
           return button
       }()
    
    
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    
    private let productTagsStack = UIStackView()
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        
        
        let CellIDSIPP = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSpSeeingPOsecellreused", for: indexPath) as! LiSSpSeeingPOsecell
        if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
            let selidINdfo =  appledeelgate.totalvrdataSSIP[indexPath.row]
            
            CellIDSIPP.postCenDataSSIP = selidINdfo
            CellIDSIPP.collecPost.isSelected = (selidINdfo["islikeThisPublish"] == "SSIPLike")
            CellIDSIPP.reoipLSIPP.addTarget(self, action: #selector(shingcaseOriginReport), for: .touchUpInside)
            
        }
       
        return CellIDSIPP
       
    }
    
    @IBOutlet weak var topcircleImagSipp: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ssuipCreaNet()
        enImageSSIPOViol.isHidden = true
    }
    
    var  _rundatabviewSIPP:UICollectionView?
    
    
    private func ssuipCreaNet() {
        enImageSSIPOViol.isHidden = true
        _rundatabviewSIPP?.reloadData()
    }
    
    // MARK: - 功能集成
       func integrateMakeupTryOn() {
           // 添加试色按钮到工具栏
           if let toolBar = self.navigationController?.toolbar {
               let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
               toolBar.items = [flexible, UIBarButtonItem(customView: tryOnButton), flexible]
               toolBar.isHidden = false
           }
           
           // 添加色卡展示区
           
       }
       
    override func viewDidLoad() {
        super.viewDidLoad()
        let funflow  = UICollectionViewFlowLayout()
        enImageSSIPOViol.isHidden = true
        funflow.itemSize = CGSize(width: UIScreen.main.bounds.width - 24, height: 420)
        funflow.minimumLineSpacing = 12
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        
        funflow.minimumInteritemSpacing = 12
        
                                  
       
        let rundatabviewSIPP = UICollectionView.init(frame: .zero, collectionViewLayout: funflow)
        
       
        rundatabviewSIPP.delegate = self
        rundatabviewSIPP.dataSource = self
        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        labeSiop.textColor = view.backgroundColor
        rundatabviewSIPP.showsVerticalScrollIndicator = false
        rundatabviewSIPP.backgroundColor = .clear
        rundatabviewSIPP.register(UINib(nibName: "LiSSpSeeingPOsecell", bundle: nil), forCellWithReuseIdentifier: "LiSSpSeeingPOsecellreused")
        rundatabviewSIPP.isHidden = true
        view.addSubview(rundatabviewSIPP)
        rundatabviewSIPP.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.top.equalTo(topcircleImagSipp.snp.bottom).offset(12)
            make.bottom.equalToSuperview()
        }
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lzovaxdvignpgk.n.g.".oranApolWothCharrterString(), loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
            rundatabviewSIPP.isHidden = false
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
        }
        _rundatabviewSIPP = rundatabviewSIPP
    }
    private func ssuitreatNet() {
        
    }
    
    private func updateProductDisplay(_ product: MakeupProduct) {
           // 更新产品标签
          
           
           let brandTag = createProductTag(text: product.brand, style: .brand)
           let shadeTag = createProductTag(text: product.shadeName, style: .shade)
           let categoryTag = createProductTag(text: product.category.rawValue, style: .category)
           
          
           
           // 更新界面主题色
        view.backgroundColor = UIColor.clear.withAlphaComponent(0.1)
        tryOnButton.backgroundColor = UIColor.clear.withAlphaComponent(0.2)
       }
    private enum ProductTagStyle {
        case brand
        case shade
        case category
    }
    private class PaddedLabel: UILabel {
        init(withInsets top: CGFloat = 0, _ bottom: CGFloat = 0, _ left: CGFloat = 0, _ right: CGFloat = 0) {
            super.init(frame: .zero)
            setContentHuggingPriority(.defaultHigh, for: .horizontal)
            setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        }
        
        required init?(coder: NSCoder) { fatalError() }
        
        override func drawText(in rect: CGRect) {
            super.drawText(in: rect.inset(by: UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)))
        }
    }
       private func createProductTag(text: String, style: ProductTagStyle) -> UILabel {
           let label = PaddedLabel(withInsets: 8, 6, 8, 6)
           label.text = text
           label.font = .systemFont(ofSize: 14, weight: style == .brand ? .bold : .regular)
           label.textColor = style == .category ? .systemGray : .label
           label.backgroundColor = style == .brand ? UIColor.red : .systemGray6
           label.layer.cornerRadius = 12
           label.layer.borderWidth = style == .brand ? 2 : 0
           
           return label
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
            
            let selidINdfo =  appledeelgate.totalvrdataSSIP[indexPath.row]
            
            let teizige = LiSSpTieZIngefrbucue.init()
            teizige.postCenDataSSIP = selidINdfo
            self.navigationController?.pushViewController(teizige, animated: true)
        }
        
    }
    
    
    
    @IBAction func takinSIPPhpost(_ sender: UIButton) {
        
        if sender.tag == 10 {
            self.navigationController?.pushViewController(LiSSpSearcZIPostfrbucue.init(), animated: true)
        }else{
            
            self.navigationController?.pushViewController(LiSSpTieZIPostfrbucue.init(), animated: true)
            
        }
        
        
    }
    
    
    @objc func shingcaseOriginReport(_ sender: UIButton) {
        
        let normailAreport = UIAlertController(title: "Rsexphojrotm gCnounutfeznjt".oranApolWothCharrterString(), message:nil, preferredStyle: .actionSheet)
        let reasonsdonin = ["Harassment or Bullying","Inappropriate Content","Spam or Scam Attempts","Hate Speech"]
        
        for item in reasonsdonin {
            normailAreport.addAction(UIAlertAction(title: item, style: .default, handler: { alertSSIP in
                self.DetailssuitreatNet()
               
            }))
        }
       
        
        normailAreport.addAction(UIAlertAction(title: "Cmabnvcjeel".oranApolWothCharrterString(), style: .default))
        
        self.present(normailAreport, animated: true)
        
        
    }
    private func DetailssuitreatNet() {
//        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Rgeyquuieesptn.k.h.".oranApolWothCharrterString(), loaingShowView: self.view)
//        self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
//            
//            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
            AppDelegate.showSSIPSuccessTips(acccusString: "Tfhraangkc lyxoauj ufooarp vyvovugrk cskuvpteergvrizsqipopnh.k lWqez uwtijlllg zvlejrnimfmyp oavnhdc mhpaxncdblaef viqto damse mslogognj caosl dppofszsriibclae".oranApolWothCharrterString())
//        }
    }

}
