import Foundation
import UIKit

final class AppUI {
    
    static func createBackgroundView() -> UIView {
        
        .config(view: UIView(), completion: { bV in
            bV.backgroundColor = UIColor(named: String.appWhite)
            bV.layer.cornerRadius = 30
        })
    }
    
    static func createImage(withCornerRadius rad: CGFloat) -> UIImageView {
        
        .config(view: UIImageView()) { img in
            img.layer.cornerRadius = rad
            img.contentMode = .scaleAspectFill
            img.clipsToBounds = true
        }
    }
    
    static func createLabel(withTextColor color: String) -> UILabel {
        
        .config(view: UILabel()) { label in
            label.textColor = UIColor(named: color)
            label.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
            label.textAlignment = .left
        }
    }
    
    static func createText() -> UILabel {
        
        .config(view: UILabel()) { txt in
            txt.numberOfLines = .zero
            txt.font = UIFont.systemFont(ofSize: 18)
        }
    }
    
    static func createButton() -> UIButton {
        
        .config(view: UIButton(primaryAction: UIAction(handler: { _ in
            print("tap-tap")
        }))) { btn in
            btn.backgroundColor = UIColor(named: String.appGreen)
            btn.setTitle("Next", for: .normal)
            btn.setTitleColor(UIColor(named: String.white), for: .normal)
            btn.layer.cornerRadius = 20
        }
    }
}
