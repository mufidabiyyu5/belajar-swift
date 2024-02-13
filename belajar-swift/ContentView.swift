//
//  ContentView.swift
//  belajar-swift
//
//  Created by Prisma-Mufid on 07/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:24) {
            Logo()
            FormBox()
        }
        .padding(.all, 24)
    }
}

#Preview {
    ContentView()
}

struct Logo: View {
    var body: some View {
        VStack {
            Image(systemName: "swift").resizable()
                .imageScale(.large).frame(width: 48, height: 48).padding(24).background(Color("primary")).foregroundColor(Color.white).cornerRadius(8)
            
            Text("Hello SwiftUI")
                .foregroundColor(Color.black).bold()
        }
    }
}

struct FormBox: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Username").bold().foregroundColor(.black)
            TextField("Cth: user123", text: $username).textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 16)
                .foregroundColor(.black)
                .textInputAutocapitalization(.never)
            
            Text("Password").bold().foregroundColor(.black)
            SecureField("8 karakter password...", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 16)
                .foregroundColor(.black)
                .textInputAutocapitalization(.never)
            
            Button(action: {print("username:", username)}){
                HStack() {
                    Spacer()
                    Text("Sign In").bold()
                    Spacer()
                }
            }
            .padding()
            .background(Color("primary"))
            .cornerRadius(8)
            .foregroundColor(.white)
            
        }
        .padding()
        .foregroundColor(.white)
        .border(Color.gray.opacity(0.5))
        .cornerRadius(8)
    }
}
