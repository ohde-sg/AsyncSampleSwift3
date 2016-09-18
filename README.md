# AsyncSampleSwift3

## swift3になってCライクだったGCDがモダンにかっこよくなったのでメモ

```swift
@IBAction func touchMyButton(_ sender: UIButton) {
    self.myLabel.text = "loading...";
    DispatchQueue.global().async {
        //something heavy job
        self.heavyJob()
        let sum:UInt32 = arc4random_uniform(10)
        DispatchQueue.main.sync {
            self.myLabel.text = "result:\(sum)"
        }
    }
}
```
