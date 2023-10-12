//
//  ViewController.swift
//  MyFavoriteBear
//
//  Created by D on 12.10.2023.
//

import Beryllium
import SnapKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.keyboardLayoutGuide.followsUndockedKeyboard = true

        view.addSubview(textView)
        textView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.left.right.equalToSuperview().inset(16)
            $0.bottom.equalTo(view.keyboardLayoutGuide.snp.top)
        }
    }

    private let textView = UITextView().configure {
        $0.tintColor = .red
        $0.attributedText = NSMutableAttributedString(
            string: """
            0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n\
            0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n\
            0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n\
            0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n\
            0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n\
            0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n\
            0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n\
            0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n\
            0\n1\n2\n3\n4\n5\n6\n7\n8\n9
            """,
            attributes: [
                .font: UIFont.systemFont(ofSize: 17)
            ]
        ).setParagraphStyle {
            $0.lineHeightMultiple = 1.5
        }
    }
}

