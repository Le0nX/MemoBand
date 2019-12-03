//
//  UserViewModel.swift
//  MemoBand
//
//  Created by Denis Nefedov on 04.12.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation

final class UserViewModel: ObservableObject {
    @Published private(set) var users = [User(name: "John", age: 13),
                                         User(name: "Kate", age: 28),
                                         User(name: "Petya", age: 18),
                                         User(name: "Den", age: 89),
                                         User(name: "Vitya", age: 45),]
}
