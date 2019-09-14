import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    var googleMap : GMSMapView!
    
    let latitude: CLLocationDegrees = 36.5780574
    let longitude: CLLocationDegrees = 136.6486596
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ズームレベル.
        let zoom: Float = 15
        
        // カメラを生成.
        let camera: GMSCameraPosition = GMSCameraPosition.camera(
            withLatitude: latitude,
            longitude: longitude,
            zoom: zoom
        )
        
        // MapViewを生成.
        googleMap = GMSMapView(
            frame: CGRect(
                x: 0, y: 0,
                width: self.view.bounds.width, height: self.view.bounds.height
            )
        )
        
        // MapViewにカメラを追加.
        googleMap.camera = camera
        
        let marker: GMSMarker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(latitude, longitude)
        marker.map = googleMap
        
        self.view.addSubview(googleMap)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
