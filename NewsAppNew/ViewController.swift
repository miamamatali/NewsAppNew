//
//  ViewController.swift
//  NewsAppNew
//
//  Created by Indira on 28/3/23.
//

import UIKit
import SnapKit
import Kingfisher

class ViewController: UIViewController {
    
    private let images: [UIImage] = [
        UIImage(named: "1pic")!,
        UIImage(named: "1pic")!,
        UIImage(named: "1pic")!,
        UIImage(named: "1pic")!,
        UIImage(named: "1pic")!
    ]
    let text: [String] = [
        "Informational text is a subset of the larger category of nonfiction (Duke & Bennett-Armistead, 2003). Its primary purpose is to inform the reader about the natural or social world. Different from fiction, and other forms of nonfiction, informational text does not utilize characters. Further, it has specialized language characteristics such as general nouns and timeless verbs that are not common in other genres. Some examples of this structure would be: “Dogs bark;” “Some sea snakes are quite deadly;” or “Apples can be red, yellow, or even green!”",
        "Informational text is a subset of the larger category of nonfiction (Duke & Bennett-Armistead, 2003). Its primary purpose is to inform the reader about the natural or social world. Different from fiction, and other forms of nonfiction, informational text does not utilize characters. Further, it has specialized language characteristics such as general nouns and timeless verbs that are not common in other genres. Some examples of this structure would be: “Dogs bark;” “Some sea snakes are quite deadly;” or “Apples can be red, yellow, or even green!”",
        "Informational text is a subset of the larger category of nonfiction (Duke & Bennett-Armistead, 2003). Its primary purpose is to inform the reader about the natural or social world. Different from fiction, and other forms of nonfiction, informational text does not utilize characters. Further, it has specialized language characteristics such as general nouns and timeless verbs that are not common in other genres. Some examples of this structure would be: “Dogs bark;” “Some sea snakes are quite deadly;” or “Apples can be red, yellow, or even green!”",
        "Informational text is a subset of the larger category of nonfiction (Duke & Bennett-Armistead, 2003). Its primary purpose is to inform the reader about the natural or social world. Different from fiction, and other forms of nonfiction, informational text does not utilize characters. Further, it has specialized language characteristics such as general nouns and timeless verbs that are not common in other genres. Some examples of this structure would be: “Dogs bark;” “Some sea snakes are quite deadly;” or “Apples can be red, yellow, or even green!”",
        "Informational text is a subset of the larger category of nonfiction (Duke & Bennett-Armistead, 2003). Its primary purpose is to inform the reader about the natural or social world. Different from fiction, and other forms of nonfiction, informational text does not utilize characters. Further, it has specialized language characteristics such as general nouns and timeless verbs that are not common in other genres. Some examples of this structure would be: “Dogs bark;” “Some sea snakes are quite deadly;” or “Apples can be red, yellow, or even green!”"
    ]
    
    private lazy var tableView: UITableView = {
        let view = UITableView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupConstraints()
    }

    func setupTableView() {
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func setupConstraints() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {
                    fatalError("error")
                }
                let image = images[indexPath.row]
                let str = "Informational text is a subset of the larger category of nonfiction (Duke & Bennett-Armistead, 2003). Its primary purpose is to inform the reader about the natural or social world. Different from fiction, and other forms of nonfiction, informational text does not utilize characters. Further, it has specialized language characteristics such as general nouns and timeless verbs that are not common in other genres. Some examples of this structure would be: “Dogs bark;” “Some sea snakes are quite deadly;” or “Apples can be red, yellow, or even green!”"
                cell.configure(with: image, and: str)
                        
        //cell.textLabel?.text = "Mia"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = SecondViewController()
    
        vc.configure(with: images[indexPath.row], and: "string")
        vc.configure(with: images[indexPath.row], and: text[indexPath.row])
        
        self.navigationController?.pushViewController(vc, animated: true)
            }
    
    
}
