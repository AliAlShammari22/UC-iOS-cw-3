//
//  ContentView.swift
//  CW3Try
//
//  Created by Ali AlShammari on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var dg = ""
    @State var good = ""
    var body: some View {
        ZStack{
            Image("back")
                .resizable()
                .scaledToFit()
                .scaledToFill()
                .ignoresSafeArea()
        VStack{
            Text("حاسبة الدرجات")
                .font(.largeTitle)
                .padding()
            Image("calc")
                .resizable()
                .frame(width: 200, height: 200)
                .scaledToFit()
                .padding(50)
            TextField("ادخل درجتك", text: $dg)
                .multilineTextAlignment(.center)
                .frame(width: 400, height: 50)
                .background(.white)
                .padding()
            Text("احسب درجتي")
                .font(.largeTitle)
                .frame(width: 220, height: 60)
                .background(.gray)
                .clipShape(Capsule())
                .onTapGesture {
                    if (Double(dg) ?? 0 ) >= 101{
                        good = "ادخل الدرجة بشكل صحيح!"
                        }
                    else if (Double(dg) ?? 0 ) >= 90 {
                        good = "ممتاز"
                        }
                    else if (Double(dg) ?? 0 ) >= 80{
                        good = "جيد جدا"
                        }
                    else if (Double(dg) ?? 0 ) >= 70{
                        good = "جيد"
                        }
                    else if (Double(dg) ?? 0 ) >= 60{
                        good = "مقبول"
                        }
                    else if (Double(dg) ?? 0 ) < 60{
                        good = "راسب!"
                        }
                    else{
                        good = "ادخل الدرجة بشكل صحيح!"
                        }
                    }
                .padding()
                .onLongPressGesture{
                    good = "-"
                }
            Text("لقد حصلت على درجة")
                .font(.largeTitle)
            Text(good)
                .font(.largeTitle)
            
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
