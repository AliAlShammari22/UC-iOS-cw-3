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
            ExtractedView()
                .padding()
            ExtractedView2()
                .padding()
            ExtractedView3()
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
    @State var count1 = 0
    var body: some View {
        HStack{
            Text("استغفر الله العظيم")
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

struct ExtractedView2: View {
    @State var count2 = 0
    var body: some View {
        HStack{
            Text("سبحان الله و بحمده")
                .font(.largeTitle)
                .padding()
            Text("\(count2)")
                .font(.largeTitle)
                .frame(width: 60, height: 60)
                .background(.green)
                .clipShape(Circle())
                .onTapGesture {
                    count2 += 1
                }
        }
    }
}

struct ExtractedView3: View {
    @State var count3 = 0
    var body: some View {
        HStack{
            Text("سبحان الله العظيم")
                .font(.largeTitle)
                .padding()
                .frame(width: 280)
            Text("\(count3)")
                .font(.largeTitle)
                .frame(width: 60, height: 60)
                .background(.green)
                .clipShape(Circle())
                .onTapGesture {
                    count3 += 1
                }
        }
    }
}
