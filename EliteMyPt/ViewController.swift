//
//  ViewController.swift
//  EliteMyPt
//
//  Created by MacMini6 on 10/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BodyView: UIView!
    @IBOutlet weak var ConfirmButton: UIButton!{
        didSet{
            ConfirmButton.layer.cornerRadius = 20
        }
    }
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TVcell", bundle: nil), forCellReuseIdentifier: "cell")

    }
    
    
    @IBAction func ConfirmBtnTappped(_ sender: UIButton) {
        let sheetVC = SheetVC()
        if let sheet = sheetVC.sheetPresentationController {
            sheet.detents = [.medium(), .large()] // Set sizes
            sheet.prefersGrabberVisible = true    // Show grabber handle
        }
        present(sheetVC, animated: true, completion: nil)
        
    }
}



extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TVcell
        
        return cell


    }

}
