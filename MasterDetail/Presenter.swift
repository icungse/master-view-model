//
//  Presenter.swift
//  MasterDetail
//
//  Created by Saiful on 25/08/19.
//  Copyright © 2019 Saiful. All rights reserved.
//

import Foundation

class Presenter {
    private var myModel = Model<Date>()
    
    func addEntry() {
        myModel.insert(Date())
    }
    
    var count: Int {
        return myModel.count
    }
    
    func removeEntry(at index: Int) {
        myModel.remove(at: index)
    }
    
    subscript(index: Int) -> String? {
        guard let date = myModel[index] else {
            return nil
        }
        return date.description
    }
}
