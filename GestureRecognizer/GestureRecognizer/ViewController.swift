//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by macbook pro on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImgview: UIImageView!
    
    var imgArr = ["Image1","Image2","Image3","Image4"]
    var position = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action:  #selector(ViewController.SwipeLeftEvent(gesture:)))
        swipeGesture.direction = UISwipeGestureRecognizer.Direction.left
        
        let swipeGesture1 = UISwipeGestureRecognizer(target: self, action:  #selector(ViewController.SwipeLeftEvent(gesture:)))
        swipeGesture1.direction = UISwipeGestureRecognizer.Direction.right
        
        self.view.addGestureRecognizer(swipeGesture)
        self.view.isUserInteractionEnabled = true
        self.view.isMultipleTouchEnabled = true
    }

    @objc func SwipeLeftEvent(gesture: UISwipeGestureRecognizer) -> Void
    {
        print("Swipe done")
        
        position+=1
        if position == imgArr.count
        {
            position = 0
        }
        print(imgArr[position])
        
        myImgview.image = UIImage(named: imgArr[position])
    }

}

