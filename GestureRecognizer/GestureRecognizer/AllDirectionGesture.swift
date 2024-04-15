//
//  AllDirectionGesture.swift
//  GestureRecognizer
//
//  Created by macbook pro on 16/03/23.
//

import UIKit

class AllDirectionGesture: UIViewController {

    @IBOutlet weak var myImgs: UIImageView!
    
    var imgs = ["Image1","Image2","Image3","Image4"]
    var pos = 0
    
    @IBOutlet weak var leftbtn: UIButton!
    @IBOutlet weak var rightBtn: UIButton!
    @IBOutlet weak var upBtn: UIButton!
    @IBOutlet weak var downBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @objc func SwipeLeftEvent(gesture: UISwipeGestureRecognizer) -> Void
    {
        
        pos+=1
        if pos == imgs.count
        {
            pos = 0
        }
        
        myImgs.image = UIImage(named: imgs[pos])
    }
    
    
    
    @IBAction func SwipeLeftEvent(_ sender: Any)
    {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action:  #selector(ViewController.SwipeLeftEvent(gesture:)))
        swipeGesture.direction = UISwipeGestureRecognizer.Direction.left
        
        self.view.addGestureRecognizer(swipeGesture)
        self.view.isUserInteractionEnabled = true
    }
    
    
    @IBAction func SwipeRightEvent(_ sender: Any)
    {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action:  #selector(ViewController.SwipeLeftEvent(gesture:)))
        swipeGesture.direction = UISwipeGestureRecognizer.Direction.right
        
        self.view.addGestureRecognizer(swipeGesture)
        self.view.isUserInteractionEnabled = true
    }
    
    @IBAction func SwipeUpEvent(_ sender: Any)
    {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action:  #selector(ViewController.SwipeLeftEvent(gesture:)))
        swipeGesture.direction = UISwipeGestureRecognizer.Direction.up
        
        self.view.addGestureRecognizer(swipeGesture)
        self.view.isUserInteractionEnabled = true
    }
    
    @IBAction func SwipeDownEvent(_ sender: Any)
    {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action:  #selector(ViewController.SwipeLeftEvent(gesture:)))
        swipeGesture.direction = UISwipeGestureRecognizer.Direction.down
        
        self.view.addGestureRecognizer(swipeGesture)
        self.view.isUserInteractionEnabled = true
    }
    
}
