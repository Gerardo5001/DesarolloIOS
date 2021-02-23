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
        
        var arreglo = [3,6,9,2,4,1]
        
        var resultado = [Int]()
        for i in 0..<6{
            if(arreglo[i]<5){
                resultado.append(arreglo[i])
            }
        }
        
    }
    	
    func suma(numero1:Int,numero2:Int)->Int{
        return numero1+numero2
    }
    func potencia(numero:Double,potencia:Double)->Double{
        return pow(numero,potencia)
    }
    
    enum meses{
        case enero
        case febrero
        case marzo
        case abril
        case mayo
        case junio
        case julio
        case agosto
        case septiembre
        case octubre
        case noviembre
        case diciembre
        
    }
    func numeroMes(mes:String)->Int{
        var opcion = 0
        switch mes	 {
        case "enero":
            opcion = 1
        break
        case "febrero":
            opcion = 2
        break
        case "marzo":
            opcion = 3
        break
        case "abril":
            opcion = 4
        break
        case "mayo":
            opcion = 5
        break
        case "junio":
            opcion = 6
        break
        case "julio":
            opcion = 7
        break
        case "agosto":
            opcion = 8
        break
        case "septiembre":
            opcion = 9
        break
        case "octubre":
            opcion = 10
        break
        case "noviembre":
            opcion = 11
        break
        case "diciembre":
            opcion = 12
        break
        default:
        break
            
            return opcion
            <#code#>
        }
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
