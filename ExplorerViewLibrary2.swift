//
//  ExplorerViewLibrary2.swift
//  ExploriningViews
//
//  Created by administrator on 09/09/2024.
//

import SwiftUI

struct ExplorerViewLibrary2: View {
   let text: [String] = ["Exploring Views", "hello world"]
   @State var index = 0
   @State private var bgColor = Color.blue.opacity(0.5)
   @State private var date = Date()

    
    var body: some View {
        ZStack {
            //bgColor.ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack(spacing: 30) {
                    Form {
                        Section(header: Text("Notifications")) {
                            Text(text[index])
                                .font(.largeTitle)
                                .padding()
                            
                            Button("A button") {
                                withAnimation {
                                    index = (index + 1) % text.count
                                }
                            }
                        }
                        
                        Section(header: Text("Notifications")) {
                            ColorPicker(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*/.constant(.red)/*@END_MENU_TOKEN@*/)

                            DatePicker(selection: $date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                            }
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    ExplorerViewLibrary2()
}
