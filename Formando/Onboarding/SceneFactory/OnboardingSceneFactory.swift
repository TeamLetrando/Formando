// import Foundation
// import UIKit
//
// class OnboardingSceneFactory: SceneFactory {
//
//    private var navigationController: UINavigationController?
//
//    required init(navigationController: UINavigationController?) {
//        self.navigationController = navigationController
//    }
//
//    func instantiateViewController() -> UIViewController {
//        let onboardingViewController = OnboardingViewController()
//        onboardingViewController.setup(onboardingRouter: instantiateOnboardingRouter())
//
//        onboardingViewController.isModalInPresentation = true
//        return onboardingViewController
//    }
//
//    private func instantiateOnboardingRouter() -> OnboardingRouterLogic {
//        return OnboardingRouter(navigationController: navigationController)
//    }
// }
