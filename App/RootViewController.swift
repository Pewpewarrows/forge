import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // navigationController!.setViewControllers([FooViewController()], animated:true)
        // alternatively, could do `self.navigationItem.hidesBackButton = YES;` within the pushed controller
        // navigationController!.pushViewController(FooViewController(), animated: true)
    }

}
