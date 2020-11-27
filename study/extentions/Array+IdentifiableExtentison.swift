//
//  Array+IdentifiableExtentison.swift
//  study
//
//  Created by hvah on 2020/11/26.
//  Copyright © 2020 hvah. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(_ matching: Element) -> Int {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return 0
    }
}
