//
//  MapView.swift
//  Landmarks
//
//  Created by Harun on 21.02.2021.
//

import SwiftUI
import MapKit

private let latitude: Double = 34.011_286
private let longitude: Double = -116.166_868

private let latitudeDelta: Double = 0.2
private let longitudeDelta: Double = 0.2

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude),
        span: MKCoordinateSpan(
            latitudeDelta: latitudeDelta,
            longitudeDelta: longitudeDelta)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: latitudeDelta,
                longitudeDelta: longitudeDelta)
            )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(
                    latitude: latitude,
                    longitude: longitude)
        )
    }
}
