//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Actividad 7 XD"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    
    var costo_referencia = [8.3,10.5,9.9]
    var indice:Int = 0
    
    for i in costo_referencia
    {
    costo_referencia[indice] = i+(i*0.16)
    indice += 1
    }
    
    costo_referencia
        
    impuesto(arreglo: costo_referencia)
        
    sumaTres(numero1: 1, numero2: 2, numero3: 3)
        
    intercambiar(a: 1, b: 2)
        
    let precios = [2.4, 5.3, 8.2, 4.5]
        
    let impuesto = precios.map{a in return a+(a*0.16)}
        
    let precion_menor = impuesto.filter{a in a>6}
    
    
    }
    
    func impuesto(arreglo:[Double]) -> [Double]{
        var resultado:[Double] = []
        for i in arreglo{
            resultado.append(i+(i*0.16))
        }
        return resultado
    }
    
    func sumaTres(numero1:Int, numero2:Int, numero3:Int){
        var resultado = numero1+numero2
        resultado = resultado+numero3
    }
    
    func intercambiar<T>(a:T,b:T) -> (T,T){
        let ax = b
        let bx = a
        return (ax,bx)
    }
    func transformar(arreglo:[Int]){
        	
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

