//
//  BuildMode.swift
//  Runner
//
//  Created by mono on 2019/01/07.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import Foundation

enum BuildMode: CaseIterable {
    case debug, release

    #if DEBUG
    static let current = BuildMode.debug
    #else
    static let current = BuildMode.release
    #endif
}
