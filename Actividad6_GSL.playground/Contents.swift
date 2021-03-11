//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
prefix operator ***
infix operator |>

prefix func ***(valor1:Int) -> Int{
let resultado = pow(Double(valor1),Double(valor1))
    return Int(resultado)
}

func |> (a:Int, f:(Int) -> Int) -> Int{
    return f(a)
}

func ordenar(numeros:[Int]) -> [Int]{
    var num:Int
    var numeros2 = numeros
    var i=1
    while i<=3
    {
        if(numeros2[i-1]>numeros2[i]){
            num = numeros2[i-1]
            numeros2[i-1] = numeros2[i]
            numeros2[i]=num
            i+=1
        }
        else{
            i+=1
        }
    }
    return numeros2
}

class modificar{
    var valores:[Int]
    init(v:[Int]){
        self.valores = v
    }
    subscript (idx: Int) -> Int
    {
        get
        {
            return valores[idx]*2
        }
        
        set(nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}

func ExisteValor(valor:String){
    let dicAbc = ["A":1,"B":2,"C":3]
    guard let existe = dicAbc[valor] else {
        print("No existe")
        return
    }
    print("Existe \(existe)")
}


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
        
        print(***5)
        
        let numerosArray = [2,5,3,4]
        let numeros = ordenar(numeros: numerosArray)
        print(numeros)
        
        let numerosModi = modificar(v: numerosArray)
        print(numerosModi)
        
        ExisteValor(valor: "A")
        ExisteValor(valor: "Z")
        
    }
}


// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
