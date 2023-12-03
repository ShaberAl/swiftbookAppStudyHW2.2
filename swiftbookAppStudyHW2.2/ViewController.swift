//
//  ViewController.swift
//  swiftbookAppStudyHW2.2
//
//  Created by MacOS on 01.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewWindow: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var redValueSlider: UISlider!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var greenValueSlider: UISlider!
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var blueValueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    @IBAction func sliderValueChanged() {
        updateViewColorAndLabels()
    }
    
    private func configureView() {
        view.backgroundColor = .systemGray2
        
        redLabel.text = "Red"
        redLabel.textColor = .red
        redValueLabel.textColor = .red
        redValueSlider.minimumValue = 0
        redValueSlider.maximumValue = 1
        redValueSlider.value = Float.random(in: redValueSlider.minimumValue...redValueSlider.maximumValue)
        redValueSlider.minimumTrackTintColor = .red
        redValueSlider.maximumTrackTintColor = .black
        redValueSlider.thumbTintColor = .red
        
        greenLabel.text = "Green"
        greenLabel.textColor = .green
        greenValueLabel.textColor = .green
        greenValueSlider.minimumValue = 0
        greenValueSlider.maximumValue = 1
        greenValueSlider.value = Float.random(in: greenValueSlider.minimumValue...greenValueSlider.maximumValue)
        greenValueSlider.minimumTrackTintColor = .green
        greenValueSlider.maximumTrackTintColor = .black
        greenValueSlider.thumbTintColor = .green
        
        blueLabel.text = "Blue"
        blueLabel.textColor = .blue
        blueValueLabel.textColor = .blue
        blueValueSlider.minimumValue = 0
        blueValueSlider.maximumValue = 1
        blueValueSlider.value = Float.random(in: blueValueSlider.minimumValue...blueValueSlider.maximumValue)
        blueValueSlider.minimumTrackTintColor = .blue
        blueValueSlider.maximumTrackTintColor = .black
        blueValueSlider.thumbTintColor = .blue
        
        updateViewColorAndLabels()
    }
    
    private func updateViewColorAndLabels() {
        viewWindow.backgroundColor = UIColor(red: CGFloat(redValueSlider.value),
                                             green: CGFloat(greenValueSlider.value),
                                             blue: CGFloat(blueValueSlider.value),
                                             alpha: 1)
        
        redValueLabel.text = String(format: "%.2f", redValueSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenValueSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueValueSlider.value)
    }
}

