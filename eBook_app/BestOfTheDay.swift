//
//  BestOfTheDay.swift
//  eBook_app
//
//  Created by Ramill Ibragimov on 10.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct BestOfTheDay: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer(minLength: 40)
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.6), radius: 8, x: 0, y: 4)
                    
                    VStack {
                        Spacer()
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("New York Time Best Fot 11th March 2020")
                                            .opacity(0.6)
                                            .font(.system(size: 12))
                                    }
                                    Spacer()
                                    HStack {
                                        Text("How To Win Friends & Influence")
                                    }
                                    HStack {
                                        Text("Gary Venchuk")
                                            .opacity(0.6)
                                    }.padding(.bottom)
                                }
                                Spacer(minLength: 180)
                            }
                            HStack {
                                VStack {
                                    Text("When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.")
                                        .opacity(0.6)
                                        .font(.system(size: 12))
                                }
                                VStack {
                                    HStack {
                                        Text("Read")
                                            .padding(.horizontal, 40)
                                    }
                                }
                            }
                        }
                    }.padding()
                }
            }
            Image("book-3")
                .frame(width: 200, height: 200)
                .offset(x: 120, y: -60)
            
        }.frame(width: UIScreen.main.bounds.width - 20, height: 300)
    }
}

struct BestOfTheDay_Previews: PreviewProvider {
    static var previews: some View {
        BestOfTheDay()
    }
}
