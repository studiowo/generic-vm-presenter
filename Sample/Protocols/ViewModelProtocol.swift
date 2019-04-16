//
//  ViewModelProtocol.swift
//  Sample
//
//  Created by Renato Sarro Matos on 15/04/19.
//  Copyright © 2019 Renato Sarro Matos. All rights reserved.
//

import UIKit

protocol ViewModelProtocol {
    associatedtype View
    
    var viewType: View.Type { get }
    var data: Any { get }
    
    func config()
}
