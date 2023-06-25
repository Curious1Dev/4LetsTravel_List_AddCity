//
//  AddCityView.swift
//  LetsTravel
//
//  Created by Ani Adhikary on 11/06/23.
//

import SwiftUI

struct AddCityView: View {
    @Binding var isPresented: Bool
    @State private var cityName = ""
    @State private var country = ""

    var addCity: (City) -> Void
    var cancelAdd: () -> Void

    var body: some View {
        VStack {
            Text("Add City")
                .font(.title)

            TextField("City", text: $cityName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Country", text: $country)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            HStack {
                Button("Cancel") {
                    cancelAdd()
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)

                Button("Add") {
                    let city = City(cityName: cityName, country: country, description: "")
                    addCity(city)
                    isPresented = false
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .padding()
    }
}
