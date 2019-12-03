//
//  User.swift
//  MemoBand
//
//  Created by Denis Nefedov on 04.12.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
}
