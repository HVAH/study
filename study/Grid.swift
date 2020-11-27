//
//  Grid.swift
//  study
//
//  Created by hvah on 2020/11/26.
//  Copyright © 2020 hvah. All rights reserved.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    init (_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        GeometryReader { geomerty in
            let gridLayout = GridLayout(itemCount: items.count, in: geomerty.size)
            ForEach(items) { item in
                self.viewForItem(item)
                    .frame(width: gridLayout.itemSize.width, height: gridLayout.itemSize.height)
                    .position(gridLayout.location(ofItemAt: self.items.firstIndex(item)))
            }
            
        }
        
    }
    
    
}

