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
    private func tabViewTwo(tab: TabBarItem) -> some View {
        VStack(spacing: 4) {
            Image(systemName: tab.iconName)
                .font(.title2)
            Text(tab.title)
                .font(.system(size: 11, weight: .medium, design: .rounded))
        }
        .foregroundColor(localSelection == tab ? Color.yellow : Color.white)
        .frame(maxWidth: .infinity)
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
        .padding(8)
        .background{
            Color("Cell").opacity(0.5)
                .ignoresSafeArea(edges: .bottom)
            
        }
        .background(.ultraThinMaterial)
    }
    
    private func switchToTab(_ tab: TabBarItem) {
        selection = tab
        
    }
}



