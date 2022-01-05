import UIKit

class Divider: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.heightAnchor.constraint(equalToConstant: 1).isActive = true
        self.backgroundColor = .systemGray5
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
