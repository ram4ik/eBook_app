//
//  BookView.swift
//  eBook_app
//
//  Created by Ramill Ibragimov on 10.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct BookView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("main_page_bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    Spacer()
                }.edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        HStack {
                            Group {
                                Text("What are you reading ") +
                                Text("today?")
                                    .bold()
                            }.font(.system(size: 40))
                            .opacity(0.8)
                            .padding(.horizontal)
                            Spacer()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 35) {
                                Book()
                                    .padding(.leading)
                                Book()
                                Book()
                                Book()
                            }.padding(.vertical, 55)
                            
                        }
                        
                        HStack {
                            Group {
                                Text("Best of the ") +
                                Text("day")
                                    .bold()
                            }.font(.system(size: 40))
                            .opacity(0.8)
                            .padding(.horizontal)
                            Spacer()
                        }
                        
                        
                        BestOfTheDay()
                        
                        HStack {
                            Group {
                                Text("Continue ") +
                                Text("reading...")
                                    .bold()
                            }.font(.system(size: 40))
                            .opacity(0.8)
                            .padding(.horizontal)
                            Spacer()
                        }.padding(.vertical, 40)
                        
                        ContinueReading()
                    }
                }
            }
        }
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
