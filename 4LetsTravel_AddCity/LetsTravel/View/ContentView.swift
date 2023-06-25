//
//  ContentView.swift
//  LetsTravel
//
//  Created by Ani Adhikary on 03/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingAddScreen = false
    @State private var cityList = CityDataModel.data
    
    var body: some View {
        NavigationView{
            List(cityList, id: \.self) { city in
                NavigationLink(destination: CityDetailView(city: city)) {
                    HStack {
                        Text(city.cityName)
                            .font(Font.custom("AvenirNext-Regular", size: 22))
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text(city.country)
                            .font(Font.custom("AvenirNext-Regular", size: 15))
                            .foregroundColor(.blue)
                            .multilineTextAlignment(.leading)
                    }
                }
            }
            .navigationTitle(AppConstants.letsTravelTitle)
            .navigationBarItems(trailing: Button(action: {
                isShowingAddScreen = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $isShowingAddScreen) {
                AddCityView(isPresented: $isShowingAddScreen, addCity: addCity, cancelAdd: cancelAdd)
            }
        }
    }
    
    func addCity(city: City) {
        guard !city.cityName.isEmpty else {
            cancelAdd()
            return
        }

        cityList.append(city)
    }
    
    func cancelAdd() {
        isShowingAddScreen = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
