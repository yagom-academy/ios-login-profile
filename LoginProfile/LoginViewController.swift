import UIKit

class LoginViewController: UIViewController {
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var emailOrPhoneNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailOrPhoneNumber.addTarget(self, action: #selector(emailTextFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc
    func emailTextFieldDidChange(_ sender: UITextField?) {
        guard let text = sender?.text, text.count >= 5 else {
            activateButton(false)
            return
        }
        activateButton(true)
    }
    
    @IBAction func onLoginButtonPressed(_ sender: Any) {
        print("login")
        let board = UIStoryboard(name: "Profile", bundle: nil)
        let profileViewController = board.instantiateViewController(withIdentifier: "ProfileViewController")
        profileViewController.modalPresentationStyle = .fullScreen
        present(profileViewController, animated: true, completion: nil)
        
    }
    
    func activateButton(_ isActive: Bool) {
        loginButton.backgroundColor = isActive ? .systemYellow : .systemGray5
        self.loginButton.isEnabled = isActive
    }
}

