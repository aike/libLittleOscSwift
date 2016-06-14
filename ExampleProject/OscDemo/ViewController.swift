// ViewController.swift by aike
// licenced under MIT License. 


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var host: UITextField!
    @IBOutlet weak var port: UITextField!

    let osc:Osc = Osc()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func ButtonTouchDown(sender: AnyObject) {
        host.endEditing(true)
        port.endEditing(true)
        
        osc.SetHost(host.text!, callback: {
            self.SendMessage()
        })
    }
    
    func SendMessage() {
        osc.SetPort(Int(port.text!)!)

        osc.PushAddress("/hello")
        osc.Send()
        
        osc.PushAddress("/hello")
        osc.PushArg(100)
        osc.Send()
        
        osc.PushAddress("/hello")
        osc.PushArg(100)
        osc.PushArg(1.5)
        osc.Send()
        
        osc.PushAddress("/hello")
        osc.PushArg("world")
        osc.PushArg(100)
        osc.PushArg(1.5)
        osc.Send()
    }

}

