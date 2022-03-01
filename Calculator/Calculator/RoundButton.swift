//
//  RoundButton.swift
//  Calculator
//
//  Created by SOLDA on 2022/03/01.
//

import UIKit

// 변경사항을 스토리보드에서 실시간으로 확인하기 위해
// 스토리보드를 열 때마다 빌드를 하기 때문에 버벅이거나 오류가 날 수 있음
@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        // 연산 프로퍼티
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
 
}
