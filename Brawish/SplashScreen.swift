

import UIKit

class SplashScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
        perform(#selector(SplashScreen.showNavController), with: nil, afterDelay: 3)
    }
    
    func showNavController()
    {
        performSegue(withIdentifier: "splashScreen", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

   

}
