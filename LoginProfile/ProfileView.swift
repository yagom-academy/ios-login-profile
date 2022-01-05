import UIKit

class ProfileView: UIView {
    private var backgroundImage: UIImageView = UIImageView(image: UIImage(named: "sky"))
    private var profileImage: UIImageView = UIImageView(image: UIImage(named: "penguine"))
    private var chatImage: UIImageView = UIImageView(image: UIImage(named: "btn_bubble"))
    private var callImage: UIImageView = UIImageView(image: UIImage(named: "btn_phone"))
    private var callImage: UIImageView = UIImageView(image: UIImage(named: "btn_quote"))
    private var topButtonsView: UIStackView = UIStackView()

    private var wonButton: WonButton = WonButton()
    private var giftButton: GiftButton = GiftButton()
    private var closeButton: UIView = UIView()
    private var circleButton: CircleButton = CircleButton()
    private var favouriteButton: FavouriteButton = FavouriteButton()

    private var button: UIButton = UIButton()
    private var label: UILabel = UILabel()
    
//    lazy var bottomButtonsView: UIStackView = {
//        let stackV = UIStackView(arrangedSubviews: [chatImage, callImage, storyImage])
//        stackV.translatesAutoresizingMaskIntoConstraints = false
//        stackV.axis = .horizontal
//        stackV.spacing = 10
//        stackV.distribution = .fillEqually
//        return stackV
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(backgroundImage)
        self.addSubview(chatImage)
        self.addSubview(callImage)
        self.addSubview(callImage)
//        self.addSubview(bottomButtonsView)
        self.addSubview(label)
        
        label.text = "abc"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
//        bottomButtonsView.backgroundColor = .black

        setConstraint(view: (label as UIView), left: 16, right: 16, top: 156, bottom: nil)
        setConstraint(view: (chatImage as UIView), left: 30, right: 30, top: nil, bottom: 50)
//        setConstraint(view: (bottomButtonsView as UIView), left: 30, right: 30, top: nil, bottom: 50)
    }
    
    func setConstraint(view: UIView, left: CGFloat?, right: CGFloat?, top: CGFloat?, bottom: CGFloat?) {
        let safeArea = self.safeAreaLayoutGuide
        if let left = left {
            view.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: left).isActive = true
        }
        if let right = right {
            view.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: right).isActive = true
        }
        if let top = top {
            view.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: top).isActive = true
        }
        
        if let bottom = bottom {
            view.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: bottom).isActive = true
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initViews() {
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(button)
        topButtonsView.axis = .horizontal
        topButtonsView.addSubview(closeButton)
        topButtonsView.addSubview(favouriteButton)
        topButtonsView.addSubview(wonButton)
        topButtonsView.addSubview(giftButton)
        topButtonsView.backgroundColor = .black
        topButtonsView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(topButtonsView)

        button.setTitleColor(.black, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.titleLabel?.font = .boldSystemFont(ofSize: 12)
        button.contentHorizontalAlignment = .center
        button.semanticContentAttribute = .forceRightToLeft //<- 중요

        self.addSubview(button)
        print(topButtonsView.arrangedSubviews)
    }
}
