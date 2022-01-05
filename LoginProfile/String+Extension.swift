//
//  String+Extension.swift
//  LoginProfile
//
//  Created by Jinwook Huh on 2022/01/05.
//

import Foundation

extension String {
    func isLongerThan(_ threshold: Int) -> Bool {
        if self.count >= threshold {
            return true
        }
        return false
    }
}
