//
//  SettingsView.swift
//  Avocados
//
//  Created by DVKSH on 29.03.21.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            Form {
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Kristina Mitina")
                        }
                        HStack {
                            Text("Designer")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack {
                            Text("Website")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("linkedin.com/in/kmitina/")
                        }
                        HStack {
                            Text("Version")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("🤩 Happy Coding!")
                        }
                    }
                   
                    
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
