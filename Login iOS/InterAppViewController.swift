import UIKit

class InterAppViewController: UIViewController {

    var credentials = Credentials(username: "", password: "")
    var activityIndicator: UIActivityIndicatorView?
    var presenter: LoginPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        initLoadingInterface()
        let service = LoginServiceFactory.build()
        presenter = LoginPresenter(view: self, service: service)
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.login()
    }

    func initLoadingInterface() {
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .Gray)
        self.view.addSubview(activityIndicator)
        self.activityIndicator = activityIndicator
        self.activityIndicator?.startAnimating()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        let viewBounds = view.bounds
        let center = CGPoint(x: CGRectGetMidX(viewBounds), y: CGRectGetMidY(viewBounds))
        self.activityIndicator?.center = center
    }
}
