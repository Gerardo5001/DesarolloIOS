	//
//  ColeccionVC.swift
//  Actividad11_GSL_ColeccionNumeros
//
//  Created by user182860 on 4/21/21.
//  Copyright © 2021 user182860. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Celda"

class ColeccionVC: UICollectionViewController {

    var imgNum:[String] = []
    let numeros:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for valor in 0...19{
            imgNum.append("\(valor+1)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return  imgNum.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:Celda = collectionView.dequeueReusableCell(withReuseIdentifier:reuseIdentifier, for:indexPath) as! Celda
    
        // Configure the cell
        cell.imagenNum.image = UImage(named: umgNum[indexPath.row])
        
        return cell
    }

    

}
