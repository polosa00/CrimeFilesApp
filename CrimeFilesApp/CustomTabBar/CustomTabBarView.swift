//
//  CustomTabBarView.swift
//  CrimeFilesApp
//
//  Created by Kate Kashko on 10.11.2023.
//

import SwiftUI

struct CustomTabBarView: View {
    
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @Namespace private var namespace
    @State var localSelection: TabBarItem
    
    var body: some View {
        tabBarVersionTwo
            .onChange(of: selection, perform: { value in
                withAnimation(.easeInOut) {
                    localSelection = value
                }
            })
            
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [.favorites, .home, .settings]
    
    static var previews: some View {
        VStack {
            Spacer()
            CustomTabBarView (tabs: tabs, selection: .constant(tabs.first!), localSelection: tabs.first!)
        }
    }
}


extension CustomTabBarView {
    private func tabView(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.iconName)
                .font(.subheadline)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(localSelection == tab ? tab.color: Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(localSelection == tab ? tab.color.opacity(0.2) : Color.clear)
        .cornerRadius(10)
    }
    
    private var tabBarVersionOne: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab)
                    }
            }
        }
        .padding(6)
        .background(
            Color.white.ignoresSafeArea(edges: .bottom)
        )
    }
    
    private func switchToTab(_ tab: TabBarItem) {
        selection = tab
        
    }
}


extension CustomTabBarView {
    private func tabViewTwo(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.iconName)
                .font(.subheadline)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(localSelection == tab ? tab.color: Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(
            ZStack {
                if localSelection == tab {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(tab.color.opacity(0.2))
                        .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                }
            }
            
        )
    }
    
    private var tabBarVersionTwo: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabViewTwo(tab: tab)
                    .onTapGesture {
                        switchToTab(tab)
                    }
            }
        }
        .padding(6)
        .background(
            Color.white.ignoresSafeArea(edges: .bottom)
        )
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
        .padding(.horizontal)
    }
    
}



