//
//  GalleryView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/17/25.
//

import SwiftUI

struct GalleryView: View {
    //MARK: PROPERTIES
    @State private var selectedAnimal: String = "lion"
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    //Simple grid definition
    //let gridLayout : [GridItem] = [
    //    GridItem(.flexible()),
    //    GridItem(.flexible()),
    //    GridItem(.flexible())
        
    //]
    
    //Efficient grid definition
    //let gridLayout : [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    //Dynamic Grid Layout
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
       
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    //MARK: BODY
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack {
                //Image
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.white, lineWidth: 1))
                
                //MARK: SLIDER
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding()
                    .onChange(of: gridColumn) {
                        gridSwitch()
                    }
                
                //MARK: - GRID
                
                LazyVGrid(columns: gridLayout,alignment: .center,spacing: 14) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle()
                                .stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptic.impactOccurred()
                                
                            }
                    }//loop
                }//vgrid
                .animation(.easeIn)
                .onAppear{
                    gridSwitch()
                }
            }//vstack
            .padding(.horizontal, 10)
            .padding(.vertical, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}
#Preview {
    GalleryView()
}
