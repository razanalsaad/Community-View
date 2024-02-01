//
//  TeamView2.swift
//  Community View
//
//  Created by razan on 31/01/2024.
//

import SwiftUI

struct User1: Identifiable {
    let id = UUID()
    let name: String
}

struct TasksView: View {
  
    @State private var userInputs: [String] = []
    @State private var users: [User] = [
        User(name: "Razan"),
        User(name: "Hessah"),
        User(name: "Manar"),
        User(name: "Aisha"),
        User(name: "Anoud"),
        User(name: "Sara"),
        User(name: "Fouz"),
        User(name: "Noura"),
        User(name: "Wala")
    ]
    
    var body: some View {
         
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 328, height: 90)
                    .background(Color(red: 0.97, green: 1, blue: 0.95))
                    .cornerRadius(11)
                    .shadow(color: Color(red: 0.9, green: 0.9, blue: 0.9), radius: 2, x: 0, y: 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .inset(by: 0.5)
                            .stroke(.white, lineWidth: 1))
                    .offset(x: 1, y: -270)
                
                Text("198-234-542")
                    .font(.custom("NotoSans-Regular", size: 36))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.black)
                    .offset(x: 1, y: -261)
                
                Text("Number of Users Joined: \(users.count)")
                    .font(.custom("NotoSans-Regular", size: 13))
                    .offset(x: 1, y: -200)
                
                Spacer()
                
                VStack {
                    ForEach(0..<users.count / 1) { rowIndex in
                        HStack {
                            ForEach(0..<3) { colIndex in
                                let userIndex = rowIndex * 3 + colIndex
                                if userIndex < users.count {
                                    UserCircleView(user: users[userIndex])
                                        .offset(x: 0, y: 26)
                                }
                            }
                        }
                    }
                }
            }
            
        }
    }
    
  
    


struct UserCircleView1: View {
    let user: User
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 80, height: 78)
                .foregroundColor(Color.white)
                .shadow(color: Color(red: 0.83, green: 0.79, blue: 0.79).opacity(0.25), radius: 2, x: 0, y: 4)
                .overlay(
                    Circle()
                        .stroke(Color(red: 0.55, green: 0.71, blue: 0.31), lineWidth: 1)
                )
                .padding(20)
            
            Text(String(user.name.prefix(1)))
                .font(Font.custom("NotoSans-Regular", size: 40).weight(.semibold))
                .foregroundColor(Color(UIColor(red: 0.55, green: 0.71, blue: 0.31, alpha: 1)))
            
            Text(user.name)
                .font(.custom("NotoSans-Regular", size: 15))
                .foregroundColor(Color(UIColor(red: 0.16, green: 0.27, blue: 0, alpha: 1)))
                .offset(x: 2, y: 51)
        }
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
     ContentView()
    }
}
