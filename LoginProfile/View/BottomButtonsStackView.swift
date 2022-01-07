import UIKit
class BottomButtonsStackView: UIStackView {
    private let chatImage: UIImageView = UIImageView(image: UIImage(named: "btn_bubble"))
    private let callImage: UIImageView = UIImageView(image: UIImage(named: "btn_phone"))
    private let storyImage: UIImageView = UIImageView(image: UIImage(named: "btn_quote"))
    
    private let chatLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "1:1 채팅"
        label.textColor = .white
        return label
    }()
    
    private let callLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "전화하기"
        label.textColor = .white
        return label
    }()
    
    private let storyLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "카카오스토리"
        label.textColor = .white
        return label
    }()
    
    private lazy var chatView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [chatImage, chatLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return stackView
    }()
    
    private lazy var callView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [callImage, callLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return stackView
    }()
    
    private lazy var storyView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [storyImage, storyLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addArrangedSubview(chatView)
        self.addArrangedSubview(callView)
        self.addArrangedSubview(storyView)
        self.alignment = .fill
        self.axis = .horizontal
        self.distribution = .fillEqually
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
