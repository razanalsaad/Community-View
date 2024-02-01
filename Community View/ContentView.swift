//
//  ContentView.swift
//  Community View
//
//  Created by razan on 29/01/2024.
//

import SwiftUI

struct CommunityView1: View {
    var body: some View {
        Text("")
    }
}

struct Plant1View: View {
    var body: some View {
        Text("")
    }
}

struct TasksView1: View {
    var body: some View {
        Text("")
    }
}

struct TeamView: View {
    var body: some View {
        Text("")
    }
}

struct ContentView: View {
    // enum for Tabs, add other tabs if needed
    enum Tab {
        case community, plant, tasks, profile
    }

    @State private var selectedTab: Tab = .community

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                TabView(selection: $selectedTab) {
                    NavigationView {
                        CommunityView()
                            .navigationBarTitle("Community", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Community")
                    }
                    .tag(Tab.community)

                    NavigationView {
                       Plant1View()
                            .navigationBarTitle("Plant", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "tree")
                        Text("Plant")
                    }
                    .tag(Tab.plant)

                    NavigationView {
                        TasksView()
                            .navigationBarTitle("Tasks", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "flag")
                        Text("Tasks")
                    }
                    .tag(Tab.tasks)

                    NavigationView {
                        TeamView1()
                            .navigationBarTitle("", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "person")
                        Text("Team")
                    }
                    .tag(Tab.profile)
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxHeight: .infinity)
              
               Rectangle()
                  .frame(height: 1.0)
                                   .foregroundColor(.gray)
                                   .offset(y: 330)
              
                  
               
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
