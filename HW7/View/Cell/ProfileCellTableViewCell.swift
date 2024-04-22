import UIKit

final class ProfileCellTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var constrArray = [NSLayoutConstraint]()

    private lazy var mainView : UIView = AppUI.createBackgroundView()
    
    private lazy var mainImage : UIImageView = AppUI.createImage(withCornerRadius: 30)
    
    private lazy var profilePicture : UIImageView = AppUI.createImage(withCornerRadius: 32)
    
    private lazy var profileLabel : UILabel = AppUI.createLabel(withTextColor: String.white)
    
    private lazy var header : UILabel = AppUI.createLabel(withTextColor: String.black)
    
    private lazy var descr : UILabel = AppUI.createText()
    
    private lazy var button : UIButton = AppUI.createButton()
    
    func setUpCell(model: Profile) {
        
        selectionStyle = .none
        contentView.backgroundColor = .clear
        
        mainImage.image = UIImage(named: model.mainImage)
        
        profilePicture.image = UIImage(named: model.profilePic)
        
        profileLabel.text = model.nameLabel
        
        header.text = model.header
        
        descr.text = model.text
        
        addSubview(mainView)
        [mainImage, header, descr, button].forEach { mainView.addSubview($0) }
        [profilePicture, profileLabel].forEach { mainImage.addSubview($0) }
        
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainView.topAnchor.constraint(equalTo: topAnchor),
            mainView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -22),
            
            mainImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            mainImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            mainImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            mainImage.heightAnchor.constraint(equalToConstant: 240),
            
            profilePicture.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 20),
            profilePicture.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 20),
            profilePicture.widthAnchor.constraint(equalToConstant: 64),
            profilePicture.heightAnchor.constraint(equalToConstant: 64),
            
            profileLabel.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 20),
            profileLabel.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 175),
            profileLabel.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -20),
            profileLabel.bottomAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: -40),
            
            header.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 36),
            header.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 21),
            header.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -36),
            header.heightAnchor.constraint(equalToConstant: 30),
            
            descr.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor),
            descr.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 12),
            descr.widthAnchor.constraint(equalTo: mainImage.widthAnchor),
            
            button.leadingAnchor.constraint(equalTo: descr.leadingAnchor),
            button.topAnchor.constraint(equalTo: descr.bottomAnchor, constant: 26),
            button.widthAnchor.constraint(equalTo: descr.widthAnchor),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20),
        ])
    }
}
