import UIKit

class ProfileView: UIView {
    private var backgroundImage: UIImageView = UIImageView(image: UIImage(named: "sky"))
    private var profileImage: UIImageView = UIImageView(image: UIImage(named: "penguine"))
    
    private var topButtonsView: TopButtonsView = TopButtonsView()
    private var bottomButtonsView: BottomButtonsView = BottomButtonsView()
    
    private var divider: Divider = Divider()
    
    private var nameLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "claire"
        label.textColor = .white
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    lazy var profileView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [profileImage, nameLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(backgroundImage)
        self.addSubview(topButtonsView)
        self.addSubview(bottomButtonsView)
        self.addSubview(divider)
        drawFullsizeBackground()
        drawProfileImage()
        setConstraint(view: topButtonsView, left: 16, right: 16, top: 16, bottom: nil)
        setConstraint(view: bottomButtonsView, left: 60, right: 60, top: nil, bottom: 100)
        setConstraint(view: divider, left: 0, right: 0, top: nil, bottom: nil)
        divider.bottomAnchor.constraint(equalTo: bottomButtonsView.topAnchor, constant: -25).isActive = true
    }
    
    func drawProfileImage() {
        self.addSubview(profileView)
        profileImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.25).isActive = true
        profileImage.heightAnchor.constraint(equalTo: profileImage.widthAnchor).isActive = true
        profileImage.clipsToBounds = true
        profileImage.contentMode = .scaleToFill
        
        setConstraint(view: profileView, left: 0, right: 0, top: nil, bottom: nil)
        profileView.bottomAnchor.constraint(equalTo: divider.topAnchor, constant: -80).isActive = true
    }
    
    func makeProfileRound() {
        profileImage.layer.cornerRadius = self.frame.width * 0.25 * 0.3
    }
    
    func drawFullsizeBackground() {
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    func setConstraint(view: UIView, left: CGFloat?, right: CGFloat?, top: CGFloat?, bottom: CGFloat?) {
        let safeArea: UILayoutGuide = self.safeAreaLayoutGuide
        if let left: CGFloat = left {
            view.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: left).isActive = true
        }
        if let right: CGFloat = right {
            view.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -right).isActive = true
        }
        if let top: CGFloat = top {
            view.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: top).isActive = true
        }
        
        if let bottom: CGFloat = bottom {
            view.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -bottom).isActive = true
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
