//
//  ViewModel.swift
//  Sample
//
//  Created by Renato Sarro Matos on 15/04/19.
//  Copyright © 2019 Renato Sarro Matos. All rights reserved.
//

import UIKit

class ViewModel<View, Data>: ViewModelProtocol where View: Presenter, Data: Any {
    var viewType: View.Type {
        return View.self
    }
    
    var data: Any
    
    private var view: View?
    
    init(data: Data) {
        self.data = data
        self.initialize()
    }
    
    func config() {
    }
    
    private func initialize() {
        self.view = self.viewType.init()
    }
}
