import UIKit
class TopButtonsView: UIStackView {
    private var wonButton: WonButton = WonButton()
    private var giftButton: GiftButton = GiftButton()
    private var closeButton: CloseButton = CloseButton()
    private var favouriteButton: FavouriteButton = FavouriteButton()
    
    lazy var functionButtonsView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [favouriteButton, wonButton, giftButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        return stackView
    }()
    
    lazy var topButtonsView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [closeButton, functionButtonsView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.alignment = .center
        self.axis = .horizontal
        self.distribution = .equalSpacing
        self.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.addArrangedSubview(closeButton)
        self.addArrangedSubview(functionButtonsView)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

