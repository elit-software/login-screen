import UIKit

class InterAppViewController: UIViewController {

    var credentials = Credentials(username: "", password: "")
    var activityIndicator: UIActivityIndicatorView?
    var presenter: LoginPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        initLoadingInterface()
        let service = LoginServiceFactory.build()
        presenter = LoginPresenter(view: self, service: service)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.login()
    }

    func initLoadingInterface() {
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        view.addSubview(activityIndicator)
        self.activityIndicator = activityIndicator
        self.activityIndicator?.startAnimating()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        let viewBounds = view.bounds
        let center = CGPoint(x: viewBounds.midX, y: viewBounds.midY)
        activityIndicator?.center = center
    }
}
