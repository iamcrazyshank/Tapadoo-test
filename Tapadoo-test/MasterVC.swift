//
//  MasterVC.swift
//  Tapadoo-test
//
//  Created by Shashank Chandran on 01/04/2021.
//

import UIKit

class MasterVC: UIViewController {
    var BaseURL = "http://tpbookserver.herokuapp.com/books"
    Books = [BookDetails]()
    override func viewDidLoad() {
        super.viewDidLoad()
        getStationList()
        // Do any additional setup after loading the view.
    }
    
    func getStationList() {
        NetworkCallClass.dataRequest(with: BaseURL, objectType: Books.self , params: [:]) { (result: Result) in
                switch result {
                case .success(let object):
                    print(object)
                    DispatchQueue.main.async {
                        
                    }
                case .failure(let error):
                    print("object")
                
                    
                }
            }

}
}
