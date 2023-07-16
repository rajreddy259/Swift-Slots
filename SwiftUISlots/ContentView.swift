//
//  ContentView.swift
//  SwiftUISlots
//
//  Created by Raj Reddy on 8/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var icon1 = "apple"
    @State private var icon2 = "apple"
    @State private var icon3 = "apple"
    @State private var credits = 1000
    
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
               
                
                Spacer()
                Text("SwiftUI Slots!")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                
                HStack{
                
                    
                    Spacer()
                    HStack{
                        Text("Credits:")
                            .font(.headline)
                            .foregroundColor(Color.black)
                        Text(String(credits))
                            .font(.headline)
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                    }
                Spacer()
                HStack{
                    
                    Spacer()
                    Image(icon1)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image(icon2)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image(icon3)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    
                       
                }
                
                Spacer()
                
                Button(action: {
                        
                        let random: [String] = ["apple", "cherry", "star"]
    
                    let icon1Random = Int.random(in: 0...2)
                    let icon2Random = Int.random(in: 0...2)
                    let icon3Random = Int.random(in: 0...2)
                    
                    icon1 = String(random[icon1Random])
                    icon2 = String(random[icon2Random])
                    icon3 = String(random[icon3Random])
                        
                    if (icon1 == icon2) && (icon2 == icon3) && (icon1 == icon3) {
                        credits += 100
                    }
                    else if (icon1 == icon2) || (icon2 == icon3) || (icon1 == icon3) {
                        credits += 50
                    }
                    else {
                        credits -= 50
                    }
                    
                    
                }, label:  {    Text("Spin")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .padding(.all, 10.0)
                        .background(Color.white)
                        .border(Color.red, width: 5)
                    
                } )
                Spacer()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


