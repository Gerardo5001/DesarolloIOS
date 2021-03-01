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
    }
}

class persona{
    
    func Saludar(nombre:String) -> (String){
        return ("mucho gusto \(nombre)")
    }
    func Caminar(pasos:Int) -> (String){
        return ("Ha caminado \(pasos) pasos")
    }
}

struct pantalla{
    var ancho:Int
    var alto:Int
    
    init(ancho:Int, alto:Int) {
        self.ancho = ancho
        self.alto = alto
    }
}
extension Int{
    var horas:Int {
        return self*60*60
    }
}
extension String{
    var dia:String{
        if (self=="Domingo") {
            return "1"
        }
        else if(self=="Lunes"){
            return "2"
        }
        else if(self=="Martes"){
            return "3"
        }
        else if(self=="Miercoles"){
            return "4"
        }
        else if(self=="Jueves"){
            return "5"
        }
        else if(self=="Viernes"){
            return "6"
        }
        else{
            return "7"
        }
    }
}

var existe:Int?

var dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
if let temp = dias["DF"]{
    existe = temp
}else{
    existe = nil
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
