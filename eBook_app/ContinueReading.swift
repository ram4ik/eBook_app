//
//  ContinueReading.swift
//  eBook_app
//
//  Created by Ramill Ibragimov on 10.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContinueReading: View {
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.white)
                        .cornerRadius(40)
                        .shadow(color: Color.black.opacity(0.6), radius: 8, x: 0, y: 4)
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Crushing & Influence")
                                    .bold()
                                Text("Gary Venchuk")
                                    .opacity(0.6)
                            }.padding()
                            Spacer()
                            Image("book-1")
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                    }
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("Chapter 7 of 10")
                                .opacity(0.4)
                                .font(.system(size: 12))
                                .padding()
                                .padding(.trailing, 90)
                                
                        }
                    }
                }
            }
        }.frame(width: 380, height: 130)
    }
}

struct ContinueReading_Previews: PreviewProvider {
    static var previews: some View {
        ContinueReading()
    }
}
