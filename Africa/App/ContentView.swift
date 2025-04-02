//
//  ContentView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    let animals: [Animal] = Bundle.main.decode("animals.json")
    @State private var isGridViewActive: Bool = false
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    //MARK: functions
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("Grid Number: \(gridColumn)")
        
        //toolbar image
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        
        }
    }
    
    var body: some View {
        NavigationView{
            Group{
                if !isGridViewActive {
                    List{
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        ForEach(animals){ animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            }//link
                        }//loop
                    }//list
                } else {
                    ScrollView(.vertical, showsIndicators: false){
                        LazyVGrid(columns: gridLayout, alignment: .center,spacing: 10){
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                }//link
                            }//loop
                        }//lazyvgrid
                        .padding(10)
                        .animation(.easeIn)
                    }//scroll
                }//condition
            }//group
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 16){
                        Image(systemName: "plus")
                        //listt
                        Button(action: {
                            print("ListView is activated")
                            isGridViewActive = false
                            haptics.impactOccurred()
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundStyle(isGridViewActive ? .primary: Color.accent)
                        }
                        //Grid
                        Button(action: {
                            print("Grid view is activated")
                            isGridViewActive = true
                            haptics.impactOccurred()
                            gridSwitch()
                        }) {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundStyle(isGridViewActive ? Color.accentColor : .primary)
                        }
                    }//Hstack
                }//buttons
            }//tool bar
        }//navigation
    }
}

#Preview {
    ContentView()
}
