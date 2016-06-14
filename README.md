libLittleOSCswift
====
simple OSC sending library written in pure Swift 

##FEATURES
- pure Swift library
- send OSC packet over UDP
- support int32, float32 and string parameters
- sender supports IPv4 and IPv6 protocol

##INTERFACE
```
 SetHost(host: String, callback: () -> Void)
 SetPort(port: Int)
 PushAddress(adrs: String)
 PushArg(arg: Int)
 PushArg(arg: Float)
 PushArg(arg: String)
 Send()
 Send(host: String, port: Int)
```

##EXAMPLE
```
 override func viewDidLoad() {
     super.viewDidLoad()

     let osc:Osc = Osc()
     osc.SetHost(host.text!, callback: { self.SendMessage() })
 }

 func SendMessage() {
     osc.SetPort(Int(port.text!)!)
     osc.PushAddress("/hello")
     osc.PushArg("world")
     osc.PushArg(100)
     osc.PushArg(1.5)
     osc.Send()
 }

```

##WEBSITE
http://github.com/aike/libLittleOSCswift

##CREDIT
libLittleOSCswift program is licenced under MIT License.  
Contact: twitter @aike1000
