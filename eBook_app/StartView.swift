//
//  StartView.swift
//  eBook_app
//
//  Created by Ramill Ibragimov on 10.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Bitmap")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack(spacing: 0) {
                        Text("flamin")
                        Text("go.")
                            .bold()
                    }
                    .font(.system(size: 68))
                    .opacity(0.8)
                    .padding()
                    
                    NavigationLink(destination: BookView().navigationBarBackButtonHidden(true)) {
                        Text("start reading")
                            .foregroundColor(Color.black)
                            .font(.system(size: 24))
                            .bold()
                            .opacity(0.8)
                            .padding()
                            .padding(.horizontal, 40)
                            .background(Color.white)
                            .cornerRadius(22)
                            .shadow(color: Color.black.opacity(0.6), radius: 4, x: 0, y: 2)
                    }
                }
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
