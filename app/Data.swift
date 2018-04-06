import Foundation
import Realm

class Data {
    
    func storeCities(cities: [City]) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            let realm = RLMRealm.defaultRealm()
            let allCities = City.allObjects()
            realm.beginWriteTransaction()
            if allCities.count > 0 {
                realm.deleteObjects(allCities)
            }
            for city in cities {
                City.createInDefaultRealmWithObject(["name": city.name, "temperature": city.temperature, "pressure": city.pressure, "humidity": city.humidity])
            }
            realm.commitWriteTransaction()
        }
    }
}
