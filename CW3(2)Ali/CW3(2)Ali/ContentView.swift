//
//  ContentView.swift
//  CW3(2)Ali
//
//  Created by Ali AlShammari on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ExtractedView(three: "استغفر الله العظيم")
                .padding()
            ExtractedView(three: "سبحان الله وبحمده" )
                .padding()
            ExtractedView(three: "سبحان الله العظيم")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var three: String
    @State var count1 = 0
    var body: some View {
        HStack{
            Text(three)
                .font(.largeTitle)
                .padding()
                .frame(width: 280)
            Text("\(count1)")
                .font(.largeTitle)
                .frame(width: 60, height: 60)
                .background(.green)
                .clipShape(Circle())
                .onTapGesture {
                    count1 += 1
                }
        }
    }
}



