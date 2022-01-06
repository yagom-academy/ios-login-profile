import UIKit
class BottomButtonsView: UIStackView {
    private var chatImage: UIImageView = UIImageView(image: UIImage(named: "btn_bubble"))
    private var callImage: UIImageView = UIImageView(image: UIImage(named: "btn_phone"))
    private var storyImage: UIImageView = UIImageView(image: UIImage(named: "btn_quote"))
    
    private var chatLabel: UILabel = UILabel()
    private var callLabel: UILabel = UILabel()
    private var storyLabel: UILabel = UILabel()
    
    lazy var chatView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [chatImage, chatLabel])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .vertical
        stackV.distribution = .equalSpacing
        stackV.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return stackV
    }()
    
    lazy var callView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [callImage, callLabel])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .vertical
        stackV.distribution = .equalSpacing
        stackV.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return stackV
    }()
    
    lazy var storyView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [storyImage, storyLabel])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .center
        stackV.axis = .vertical
        stackV.distribution = .equalSpacing
        stackV.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return stackV
    }()
    
    lazy var bottomButtonsView: UIStackView = {
        let stackV = UIStackView(arrangedSubviews: [chatView, callView, storyView])
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.alignment = .fill
        stackV.axis = .horizontal
        stackV.distribution = .fillEqually
        return stackV
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(bottomButtonsView)
        bottomButtonsView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        bottomButtonsView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        chatLabel.text = "1:1 채팅"
        callLabel.text = "전화하기"
        storyLabel.text = "카카오스토리"
        makeColorIn(labels: [chatLabel, callLabel, storyLabel], color: .white)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeColorIn(labels: [UILabel], color: UIColor) {
        labels.forEach { $0.textColor = .white }
    }
}


