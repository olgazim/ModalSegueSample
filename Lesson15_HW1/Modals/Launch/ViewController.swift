//  Copyright © 2019 Olga Zimina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func presentPresentee(_ sender: UIButton) {
        
        let presentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: PresenteeViewController.identifier) as! PresenteeViewController
        
        present(presentVC,
                animated: true,
                completion: nil)
        
    
        presentVC.callback = { color in
            
            var choosedColor: UIColor?
            switch color {
            case .bright:
                choosedColor = .blue
            case .dark:
                choosedColor = .red
            }
            
            self.view.backgroundColor = choosedColor
        }
    }
    

}

