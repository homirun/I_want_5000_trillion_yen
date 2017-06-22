//
//  ViewController.swift
//  I_want_5000_trillion_yen
//
//  Created by homirun on 2017/06/19.
//  Copyright © 2017年 homirun. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {
    //@IBOutlet var imageView:UIImageView!
    @IBOutlet weak var seg1: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    var image=UIImage()
    @IBOutlet weak var Size: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        image=UIImage(named:"CvIVkRLVUAAXdGt")!
        imageView.image=image
        
    }
    @IBAction func seg1Changed(_ sender: Any) {
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
            image=UIImage(named:"CvIVkRLVUAAXdGt")!
            imageView.image=image
            
        case 1:
            image=UIImage(named:"pdca01_13")!
            imageView.image=image
        default:
            break
        }
    }
    @IBAction func touchDown(_ sender: Any) {
        label1.text="aaaaa"
        UIView.animate(withDuration: 0.25, animations: {self.imageView.transform=self.imageView.transform.rotated(by: CGFloat.pi);
            self.imageView.transform=self.imageView.transform.rotated(by: CGFloat.pi);})
            }


    @IBAction func sizeValueChanged(_ sender: Any) {
        //self.imageView.(transition)
        UIView.animate(withDuration: 0.2, animations: {
            self.imageView.frame=CGRect(x:67, y:208, width:Int(240*self.Size.value), height:Int(128*self.Size.value));})
        label1.text=self.Size.value.description
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

