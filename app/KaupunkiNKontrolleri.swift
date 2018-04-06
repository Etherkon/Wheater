import UIKit

class KaupunkiNKontrolleri: UITableViewController {
    
    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupLabels() {
        navigationItem.title = city.name
        pressureLabel.text = String(format: "%.2f hpa", city.pressure)
        humidityLabel.text = String(format: "%.2f %%", city.humidity)
        temperatureLabel.text = String(format: "%.2f °K", city.temperature)  
    }
    
}
