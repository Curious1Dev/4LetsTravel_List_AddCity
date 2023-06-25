//
//  CityDetailView.swift
//  LetsTravel
//
//  Created by Ani Adhikary on 04/06/23.
//

import SwiftUI

struct CityDetailView: View {
    var city: City
    var body: some View {
        VStack {
            Text(city.cityName)
                .font(Font.custom("AvenirNext-Regular", size: 35))
            HStack {
                Text("Country - ")
                Text(city.country)
            }
            .padding()
            .font(Font.custom("AvenirNext-Regular", size: 20))
            .foregroundColor(.blue)
            Spacer()
        }
    }
}

struct CityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CityDetailView(city: CityDataModel.data[0])
    }
}
