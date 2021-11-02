//
//  CurrencySymbolView.swift
//  SpecialProject
//
//  Created by kefukar on 1.11.2021.
//

import SwiftUI

struct CurrencySymbolView: View {
    @State var value = 10.65
    
    var body: some View {
        VStack{
            Text("Currency Automatic Symbol")
                .bold()
                .font(.title)
                .foregroundColor(.purple)
            Divider()
            VStack{
                Text(value, format: .number)
                Text(value, format: .percent)
                Text(value, format: .currency(code: "USD"))
                Text(value, format: .currency(code: "EUR"))
                Text(value, format: .currency(code: "GBP"))
            }
            .frame(width:400, height: .infinity, alignment: .center)
            .font(.title)
            .foregroundColor(.purple)
            Divider()
            Spacer()
        }
    }
}

struct CurrencySymbolView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencySymbolView()
    }
}
