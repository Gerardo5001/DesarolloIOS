//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        var numero1:Int=1
        var numero2 = 2
        
        var decimal1:Float=10.0
        var decimal2 = 12.0
        
        var texto1:String="ABC"
        var texto2 = "DFG"
        
        var bool1:Bool=false
        var bool2 = true
        
        var numeros:Array<Int> = Array<Int>()
        numeros.append(1)
        numeros.append(2)
        numeros.append(3)
        numeros.append(4)
        numeros.append(5)
        numeros.append(6)
        numeros.append(7)
        numeros.append(8)
        numeros.append(9)
        numeros.append(10)
        
        var diccionario:Dictionary<String, Int> = Dictionary<String, Int>()
        diccionario = ["Lunes" : 1]
        diccionario = ["Martes":2]
        diccionario = ["Miercoles":3]
        diccionario = ["Jueves":4]
        diccionario = ["Viernes" :5]
        diccionario = ["Sabado":6]
        diccionario = ["Domingo":7]
        
        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
