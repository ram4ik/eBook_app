//
//  Book.swift
//  eBook_app
//
//  Created by Ramill Ibragimov on 10.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI



struct Book: View {
    var bookTitle: String
    var bookAuthor: String
    var bookImage: String
    
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
                        HStack {
                            Spacer()
                            VStack {
                                Spacer()
                                Image(systemName: "heart")
                                    .font(.system(size: 26))
                                    .padding()
                                ZStack {
                                    Capsule()
                                        .foregroundColor(.white)
                                        .frame(width:45, height: 70)
                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 0, y: 0)
                                        
                                    VStack {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.orange)
                                        Text("4.9")
                                    }.padding()
                                }
                            }.padding()
                        }
                        VStack(alignment: .leading) {
                            Text(bookTitle)
                                .bold()
                            Text(bookAuthor)
                                .opacity(0.6)
                        }.padding()
                        
                        HStack {
                            Text("Details")
                            Spacer()
                            Text("Read")
                        }.padding()
                    }
                }
            }
            Image(bookImage)
                .frame(width: 200, height: 200)
                .offset(x: -25, y: -60)
            
        }
        .frame(width: 250, height: 300)
        
    }
}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        Book(bookTitle: "Crushing & Influence", bookAuthor: "Gary Venchuk", bookImage: "book-1")
    }
}
