//
//  ContentView.swift
//  CatanGame
//
//  Created by Amar Gawade on 8/9/20.
//  Copyright © 2020 Amar Gawade. All rights reserved.
//

import SwiftUI

let defaultColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
    let storedUsername = "Amar"
    let storedPassword = ""
    @State var username: String
    @State var password: String
    @State var authentication = false
    @State var authenticationFail = true
    var body: some View {
        VStack {
            Text("Catan Game")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Image("catanHome")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150, alignment: .center)
                .padding()
            TextField("User Name", text: $username)
                .padding()
                .background(defaultColor)
                .cornerRadius(5)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(defaultColor)
                .cornerRadius(5)
                .padding(.bottom, 20)
            if authenticationFail {
                Text("Invalid credentials")
                    .offset(y: -10)
                    .foregroundColor(.red)
            } else {
                Text("Logged In")
                .offset(y: -10)
                .foregroundColor(.green)
            }
            Button(action: {
                if self.username == self.storedUsername && self.password == self.storedPassword {
                    self.authentication = true
                    self.authenticationFail = false
                } else {
                    self.authenticationFail = true
                }
                
            }) {
                Text("LOGIN")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.green)
                    .cornerRadius(15.0)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(username: "Amar" , password: "Amar")
    }
}
