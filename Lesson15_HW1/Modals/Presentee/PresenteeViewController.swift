//  Copyright © 2019 Olga Zimina. All rights reserved.
//

import UIKit

enum Color: String {
    
    case dark = "Dark"
    case bright = "Bright"
}

class PresenteeViewController: UIViewController, Identifierable {
    
    typealias CollorCallback = (_ choosedColor: Color) -> Void
    var callback: CollorCallback?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chooseAndDismiss(_ sender: UIButton) {
        
        guard let choosedSide = sender.currentTitle else { return }
        
        let choosedColor = Color.init(rawValue: choosedSide)
        callback?(choosedColor!)
        
        dismiss(animated: true,
                completion: nil)
    
    }
    
}
