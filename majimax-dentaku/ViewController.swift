//
//  ViewController.swift
//  majimax-dentaku
//
//  Created by 田嶋　智洋 on 2015/03/30.
//  Copyright (c) 2015年 田嶋　智洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var number:Double = 0
    var number2:Double = 0
    var number3:Double = 0
    var number4:Double = 0
    var push:Int = 0
    var maipush:Int = 0
    var num = 3
    var ope:Int = 0
    var pai=Float()
    @IBOutlet var label:UILabel!
    
        
        @IBOutlet weak var imageView: UIImageView!
        @IBAction func launchCamera(sender: AnyObject) {
            
            let camera = UIImagePickerControllerSourceType.Camera
            
            if UIImagePickerController.isSourceTypeAvailable(camera) {
                
                let picker = UIImagePickerController()
                picker.sourceType = camera
                picker.delegate = self
                self.presentViewController(picker, animated: true, completion: nil)
            }
        }
        
        func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
            
            let image = info[UIImagePickerControllerOriginalImage] as UIImage
            imageView.image = image
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
            self.dismissViewControllerAnimated(true, completion: nil)
        }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func bt1(){
        number=number*10+1
        label.text = String(format: "%.2f",number)
        
    }
    @IBAction func bt2(){
        number=number*10+2
        label.text = String(format: "%.2f",number)
        
    }
      @IBAction func bt3(){
        number=number*10+3
        label.text = String(format: "%.2f",number)
        
    }
    @IBAction func bt4(){
        number=number*10+4
        label.text = String(format: "%.2f",number)
        
    }
    @IBAction func bt5(){
        number=number*10+5
        label.text = String(format: "%.2f",number)
        
    }
    @IBAction func bt6(){
        number=number*10+6
        label.text = String(format: "%.2f",number)
        
    }
    @IBAction func bt7(){
        number=number*10+7
        label.text = String(format: "%.2f",number)
        
    }
    @IBAction func bt8(){
        number=number*10+8
        label.text = String(format: "%.2f",number)
        
    }
    @IBAction func bt9(){
        number=number*10+9
        label.text = String(format: "%.2f",number)
        
    }
    @IBAction func bt0(){
        number=number*10+0
        label.text = String(format: "%.2f",number)
        
    }
    @IBAction func puls()
    {
        if(ope == 1){
            number=number2+number
            label.text=String(format: "%.2f",number)
        }else if(ope == 2){
            number=number2-number
            label.text=String(format: "%.2f",number)
        }else if(ope == 3){
            if(push>=1){
                number=number4+number3*number
                label.text=String(format: "%.2f",number)
            }else if(maipush>=1){
                number=number4-number3*number
                label.text=String(format: "%.2f",number)
            }else{
                number=number2*number
                label.text=String(format: "%.2f",number)
            }
        }else if(ope == 4){
            number=number2/number
            label.text=String(format: "%.2f",number)
            if number != 0{
                number2=number2/number
                label.text = String(format: "%.2f",number2)
            }else{
                label.text=String(format:"エラー")
                label.textColor = UIColor.redColor()
            }
        }
        number2=number
        number=0
        ope=1
        push++

    }
    @IBAction func mainasu()
    {
        if(ope == 1){
            number=number2+number
            label.text=String(format: "%.2f",number)
        }else if(ope == 2){
            number=number2-number
            label.text=String(format: "%.2f",number)
        }else if(ope == 3){
            if(push>=1){
                number=number4+number3*number
                label.text=String(format: "%.2f",number)
            }else if(maipush>=1){
                number=number4-number3*number
                label.text=String(format: "%.2f",number)
            }else{
                number=number2*number
                label.text=String(format: "%.2f",number)
            }
        }else if(ope == 4){
            number=number2/number
            label.text=String(format: "%.2f",number)
            if number != 0{
                number2=number2/number
                label.text = String(format: "%.2f",number2)
            }else{
                label.text=String(format:"エラー")
                label.textColor = UIColor.redColor()
            }
        }
        number2=number
        number=0
        ope=2
        maipush++
    }
    @IBAction func kakeru()
    {
        if(ope == 1){
            number3=number
            number4=number2
            label.text=String(format: "%.2f",number3)
        }else if(ope == 2){
            number3=number
            number4=number2
            label.text=String(format: "%.2f",number3)
        }else if(ope == 3){
            if(push>=1){
                number=number4+number3*number
                label.text=String(format: "%.2f",number)
            }else if(maipush>=1){
                number=number4-number3*number
                label.text=String(format: "%.2f",number)
            }else{
                number=number2*number
                label.text=String(format: "%.2f",number)
            }
        }else if(ope == 4){
            number=number2/number
            label.text=String(format: "%.2f",number)
            if number != 0{
                number=number2/number
                label.text = String(format: "%.2f",number)
            }else{
                label.text=String(format:"エラー")
                label.textColor = UIColor.redColor()
            }
        }
        number2=number
        number=0
        ope=3

    }
    @IBAction func waru()
    {
        if(ope == 1){
            number=number2+number
            label.text=String(format: "%.2f",number)
        }else if(ope == 2){
            number=number2-number
            label.text=String(format: "%.2f",number)
        }else if(ope == 3){
            if(push>=1){
                number=number4+number3*number
                label.text=String(format: "%.2f",number)
            }else if(maipush>=1){
                number=number4-number3*number
                label.text=String(format: "%.2f",number)
            }else{
                number=number2*number
                label.text=String(format: "%.2f",number)
            }
        }else if(ope == 4){
            number=number2/number
            label.text=String(format: "%.2f",number)
            if number != 0{
                number2=number2/number
                label.text = String(format: "%.2f",number2)
            }else{
                label.text=String(format:"エラー")
                label.textColor = UIColor.redColor()
            }
        }
        number2=number
        number=0
        ope=4
        
    }
    @IBAction func clear()
    {
        label.text = String(0)
        label.textColor = UIColor.blackColor()
        ope=5
        number=0
        number2=0
        number3=0
        number4=0
        push=0
        maipush=0
    }
    @IBAction func en()
    {
        label.text = String("円の半径を入力")
        ope=6
        number2=number
        number = 0
        
    }

    @IBAction func kyuumen()
    {
        label.text = String("球の半径を入力")
        ope=7
        number2=number
        number = 0
        
    }
    @IBAction func kyuutai()
    {
        label.text = String("球の半径を入力")
        ope=8
        number2=number
        number = 0
        
    }
    @IBAction func ensui()
    {
        label.text = String("底面積を入力してNEXTボタン")
        ope=9
        number2=number
        number = 0
        
    }
    @IBAction func denryuu()
    {
        label.text = String(0)
        ope=10
        number2=number
        number = 0
        
    }

    @IBAction func zisokumitudo()
    {
        label.text = String(0)
        ope=11
        number2=number
        number = 0
        
    }
    @IBAction func zzisokuandzikai()
    {
        label.text = String(0)
        ope=12
        number2=number
        number = 0
        
    }
    @IBAction func next()
    {
        label.text = String("側面積を入力")
        number3=number
        number = 0
        
    }
    @IBAction func equal()
    {
        if(ope==1){
            number2 = number2 + number
            label.text = String(format: "%.2f",number2)
        }
        else if(ope==2){
            number2=number2-number
            label.text = String(format: "%.2f",number2)
        }
        else if(ope==3){
            if(push>=1){
                number=number4+number3*number
                label.text=String(format: "%.2f",number)
            }else if(maipush>=1){
                number=number4-number3*number
                label.text=String(format: "%.2f",number)
            }else{
            number=number2*number
            label.text=String(format: "%.2f",number)
            }
        }
        else if(ope==4){
            if number != 0{
                number2=number2/number
                label.text = String(format: "%.2f",number2)
            }else{
                label.text=String(format:"エラー")
                label.textColor = UIColor.redColor()
            }
                    }
        else if(ope==6){
            //円の面積
            label.text = String(format: "%.2f",3.14*number*number)
        }
        else if(ope==7){
            //球の表面積
            label.text = String(format: "%.2f",4*3.14*number*number)
        }
        else if(ope==8){
            //球の体積
            label.text = String(format: "%.2f",4*3.14*number*number*number/3)
        }
        else if(ope==9){
            //円錐の表面積
            label.text = String(format: "%.2f",number2*number3/3)
        }
        else if(ope==10){
            label.text = String(format: "%.2f",number/number2)
        }
        else if(ope==11){
            label.text = String(format: "%.2f",number/number2)
        }
        else if(ope==12){
            label.text = String(format: "%.2f",number/number2)
        }
        else if(ope==13){
            label.text = String(format: "%.2f",number/number2)
        }
}
    //
}