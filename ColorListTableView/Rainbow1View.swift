//
//  Rainbow1View.swift
//  ColorListTableView
//
//  Created by Sarah williamson on 7/20/22.
//

import SwiftUI



struct Rainbow1View: View {
    var body: some View {
        VStack{
            HStack{Image("1")
            Text("First Rainbow").font(.title).fontWeight(.heavy).foregroundColor(Color.white).multilineTextAlignment(.center)
            }
        }
    }
}

struct Rainbow1View_Previews: PreviewProvider {
    static var previews: some View {
        Rainbow1View()
    }
}
