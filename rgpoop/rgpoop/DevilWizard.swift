//
//  DevilWizard.swift
//  rgpoop
//
//  Created by Jeanne Mitchell on 6/13/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}