//
//  ItemData.swift
//  Expandable_Menu_Items
//
//  Created by Anmol Maheshwari on 03/11/20.
//

import Foundation
import UIKit

struct ItemData: Identifiable {
    let id = UUID()
    let name: String
    let image: UIImage
    var subItems: [ItemData]?
    
    static private let itemsA = [ItemData(name: "A - 1", image: UIImage.imageWith(name: "A")!),
                                 ItemData(name: "A - 2", image: UIImage.imageWith(name: "B")!),
                                 ItemData(name: "A - 3", image: UIImage.imageWith(name: "C")!),
                                 ItemData(name: "A - 4", image: UIImage.imageWith(name: "D")!)]
    
    static private let itemsBB = [ItemData(name: "BB - 2", image: UIImage.imageWith(name: "BB")!)]
    
    static private let itemsB = [ItemData(name: "B - 1", image: UIImage.imageWith(name: "A")!, subItems: itemsBB),
                                 ItemData(name: "B - 2", image: UIImage.imageWith(name: "B")!),
                                 ItemData(name: "B - 3", image: UIImage.imageWith(name: "C")!),
                                 ItemData(name: "B - 4", image: UIImage.imageWith(name: "D")!)]
    
    static private let itemsC = [ItemData(name: "C - 1", image: UIImage.imageWith(name: "1")!),
                                 ItemData(name: "C - 2", image: UIImage.imageWith(name: "2")!),
                                 ItemData(name: "C - 3", image: UIImage.imageWith(name: "3")!),
                                 ItemData(name: "C - 4", image: UIImage.imageWith(name: "4")!)]
    
    static let FirstData = ItemData(name: "First", image: UIImage.imageWith(name: "F")!, subItems: ItemData.itemsA)
    
    static let SecondData = ItemData(name: "Second", image: UIImage.imageWith(name: "S")!, subItems: ItemData.itemsB)
    
    static let ThirdData = ItemData(name: "Third", image: UIImage.imageWith(name: "T")!, subItems: ItemData.itemsC)
}
