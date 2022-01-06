import UIKit
class TopButtonsView: UIStackView {
    private var wonButton: WonButton = WonButton()
    private var giftButton: GiftButton = GiftButton()
    private var closeButton: CloseButton = CloseButton()
    private var favouriteButton: FavouriteButton = FavouriteButton()
    
    lazy var functionButtonsView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [favouriteButton, wonButton, giftButton])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .horizontal
        stackV.distribution = .equalSpacing
        stackV.widthAnchor.constraint(equalToConstant: 130).isActive = true
        return stackV
    }()
    
    lazy var topButtonsView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [closeButton, functionButtonsView])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .horizontal
        stackV.distribution = .equalSpacing
        stackV.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return stackV
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(topButtonsView)
        topButtonsView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        topButtonsView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

