//
//  ViewController.swift
//  RegressionApp
//
//  Created by user on 2023/06/13.
//

import UIKit
import CoreML

class ViewController: UIViewController {
    @IBOutlet weak var x1TextField: UITextField!
    @IBOutlet weak var x2TextField: UITextField!
    @IBOutlet weak var x3TextField: UITextField!
    @IBOutlet weak var x4TextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        x1TextField.placeholder = "x1"
        x2TextField.placeholder = "x2"
        x3TextField.placeholder = "x3"
        x4TextField.placeholder = "x4"
    }
    // CoreMLモデルのインスタンスををmodelへ代入(try!はエラーが起きない時だけ使う　本来はdo-catch使う)
    let model = try! Regression(configuration: .init())

    @IBAction func predictButtonPressed(_ sender: UIButton) {
        guard let x1 = Double(x1TextField.text!),
              let x2 = Double(x2TextField.text!),
              let x3 = Double(x3TextField.text!),
              let x4 = Double(x4TextField.text!) else {
            return
        }

        let input = RegressionInput(x1: x1, x2: x2, x3: x3, x4: x4)
        // 予測結果をoutputへ代入(try?はエラー時はnil返す)
        if let output = try? model.prediction(input: input) {
            resultLabel.text = "yの予測結果は: \(output.y)"
        }
    }
}
