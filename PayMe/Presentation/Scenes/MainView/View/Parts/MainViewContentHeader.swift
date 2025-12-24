//
//  MainViewContentHeader.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct MainViewContentHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Долги")
                    .RS(.semibold, 14)
                    .foregroundStyle(.payYellow)
                Spacer()
                HStack {
                    Button {
                        //
                    } label: {
                        Text("ежемесячно")
                            .RS(.semibold, 14)
                            .foregroundStyle(.white)
                    }
                    
                    Button {
                        //
                    } label: {
                        Text("разово")
                            .RS(.extraLight, 14)
                            .foregroundStyle(.white)
                    }
                }
            }
            HStack(spacing: 4) {
                Text("25,500 /")
                    .RS(.semibold, 14)
                Text("Каждый месяц")
                    .RS(.extraLight, 14)
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
