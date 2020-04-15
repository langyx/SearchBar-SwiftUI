//
//  ContentView.swift
//  MySearchBar
//
//  Created by Yannis Lang on 15/04/2020.
//  Copyright © 2020 Yannis Lang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let landmarks : [Landmark] = [
        Landmark(title: "Turtle Rock", category: .River, image: "turtlerock"),
        Landmark(title: "Silver Salmon Creek", category: .Lake, image: "silversalmoncreek"),
        Landmark(title: "Chilkoot Trail", category: .Mountain, image: "chilkoottrail"),
        Landmark(title: "St. Mary Lake", category: .Lake, image: "stmarylake"),
        Landmark(title: "Twin Lake", category: .Lake, image: "twinlake"),
        Landmark(title: "Lake McDonald", category: .Lake, image: "lakemcdonald"),
        Landmark(title: "Charley Rivers", category: .River, image: "charleyrivers"),
        Landmark(title: "Icy Bay", category: .Mountain, image: "icybay"),
        Landmark(title: "Rainbow Lake", category: .Lake, image: "rainbowlake"),
        Landmark(title: "Hidden Lake", category: .Lake, image: "hiddenlake"),
        Landmark(title: "Chincoteague", category: .River, image: "chincoteague"),
        Landmark(title: "Lake Umbagog", category: .Lake, image: "umbagog")
    ]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack {
                SearchBar(text: $searchText, placeholder: "landmark or category")
                List {
                    ForEach(self.landmarks.filter{self.searchText.isEmpty ? true : ($0.title.lowercased().contains(self.searchText) || $0.category.rawValue.lowercased().contains(self.searchText))}, id: \.self) { landmark in
                        HStack{
                            Image(landmark.image)
                                .resizable()
                                .mask(Circle())
                                .frame(width : 50, height: 50)
                            Spacer()
                            Text(landmark.title)
                        }
                    }
                    .navigationBarTitle("My Landmark")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
