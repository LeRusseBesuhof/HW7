import UIKit

class ViewController: UIViewController {

    private lazy var tableData : [Profile] = Profile.mockData()
    
    private lazy var tableView : UITableView = {
        .config(view: $0) { tV in
            tV.register(ProfileCellTableViewCell.self, forCellReuseIdentifier: "table")
            tV.dataSource = self
            tV.separatorStyle = .none
        }
    }(UITableView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: .zero)
        ])
    }
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "table", for: indexPath) as? ProfileCellTableViewCell else { return UITableViewCell() }
        
        cell.setUpCell(model: tableData[indexPath.row])
        
        return cell
    }
}
