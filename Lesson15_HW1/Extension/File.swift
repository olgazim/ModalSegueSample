//  Copyright © 2019 Olga Zimina. All rights reserved.
//

import UIKit

protocol Identifierable where Self: UIViewController {
    
    static var identifier: String { get }
}

extension Identifierable {

    static var identifier: String {
        
        return String(describing: self)
    }
}
