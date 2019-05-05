//
//  InterfaceController.swift
//  Watch Extension
//
//  Created by Morten Brudvik on 13/04/2019.
//  Copyright © 2019 Morten Brudvik. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var timePicker: WKInterfacePicker!
    
    var minutes: [Int] = []
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        minutes.append(contentsOf: (1...60).map{$0})
        
        var pickerItems: [WKPickerItem] = []
        
        minutes.forEach{
            let pickerItem = WKPickerItem()
            pickerItem.title = "\($0) \($0 == 1 ? "min" : "mins")"
            pickerItems.append(pickerItem)
        }
        
        timePicker.setItems(pickerItems)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
