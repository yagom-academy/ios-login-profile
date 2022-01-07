import UIKit

class ProfileViewController: UIViewController {    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = ProfileView()
    }
    
    override func viewWillLayoutSubviews() {
        (view as? ProfileView)?.makeProfileRound()
    }
}
