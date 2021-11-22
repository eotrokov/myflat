//
//  MapView.swift
//  MyFlat
//
//  Created by e.otrokov on 21.11.2021.
//

import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 54.487_560, longitude: 36.200_799),
           span: MKCoordinateSpan(latitudeDelta: 0.009, longitudeDelta: 0.009)
       )
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region, interactionModes: .pan, showsUserLocation: true)
        }
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
