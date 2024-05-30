//
//  CityViewController.swift
//  CityApp
//
//  Created by 심소영 on 5/29/24.
//

import UIKit

class CityViewController: UIViewController {

    
    @IBOutlet var cityTableView: UITableView!
    @IBOutlet var segment: UISegmentedControl!
    
    let list = CityInfo.city
    var filtered: [City] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "인기 도시"
        configureTableView()
        segment.setTitle("모두", forSegmentAt: 0)
        segment.setTitle("국내", forSegmentAt: 1)
        segment.setTitle("해외", forSegmentAt: 2)
        self.segment.addTarget(self, action: #selector(didChangeValue(segment:)), for: .valueChanged)
        self.segment.selectedSegmentIndex = 0
        self.didChangeValue(segment: self.segment)

    }
    

}
extension CityViewController: UITableViewDelegate, UITableViewDataSource {
    
    func configureTableView(){
        cityTableView.rowHeight = 200
        cityTableView.dataSource = self
        cityTableView.delegate = self
        let xib = UINib(nibName: CityTableViewCell.identifier, bundle: nil)
        cityTableView.register(xib, forCellReuseIdentifier: CityTableViewCell.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = list[indexPath.row]
        let cell = cityTableView.dequeueReusableCell(withIdentifier: CityTableViewCell.identifier, for: indexPath) as! CityTableViewCell
        
        
        cell.awakeFromNib()
        cell.setData(data: data)
        return cell
    }
    
    @objc
    func didChangeValue(segment: UISegmentedControl){
        print(#function)
    }
    
}
