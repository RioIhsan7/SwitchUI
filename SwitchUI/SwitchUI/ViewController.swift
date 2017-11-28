//
//  ViewController.swift
//  SwitchUI
//
//  Created by Rio_Ihsan on 9/30/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSwitch: UISwitch!
    @IBOutlet weak var lblOnOff: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view
        
        // Memanggil Method change Switch
        //Labelswitch,addTarget(self, action: Selector("#changesiwft"), for:  UIControlEvents.valueChanged)
    }

    func changeSwift(switchState : UISwitch) {
        if lblSwitch.isOn {
            lblOnOff.text = "Switch is On"
        }else{
            lblOnOff.text = "Switch is Off"
        }
    }
    @IBAction func btnSwitch(_ sender: Any) {
        //Mengecek Apakah Switch On
        if lblSwitch.isOn{
            lblOnOff.text = "Switch is Off"
            //Switch nya di set false atau nilainya 0
            lblSwitch.setOn(false, animated: true)
        }else{
            //Mengecek Switch off
            lblOnOff.text = "Switch is On"
            //Switchnya di Set true nilainya 1
            lblSwitch.setOn(true, animated: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

