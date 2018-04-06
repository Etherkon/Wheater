import Foundation

class Kaantaja {
    
    func translateCitiesFromJSON(data: AnyObject?) -> [City]? {
        if let unwrappedData = data as? NSData {
            let json = JSONValue(unwrappedData)
            if let jsonCities = json["list"].array {
                var cities = [City]()
                for jsonCity in jsonCities {
                    let city = City()
                    city.temperature = jsonCity["main"]["temp"].double!
                    city.pressure = jsonCity["main"]["pressure"].double!
                    city.humidity = jsonCity["main"]["humidity"].double!
                    city.name = jsonCity["name"].string!       
                    cities.append(city)
                }
                return cities
            }
        }
        return nil
    }
    
}
