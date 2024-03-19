@_private(sourceFile: "FamilyView.swift") import Home_Harmony
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension FamilyView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/danielmadjar/Desktop/Projects/Home_Harmony/Home_Harmony/FamilyView.swift", line: 14)
        NavigationStack {
            ScrollView {
                Text(__designTimeString("#21198.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Your Families"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                
                
            }
            .navigationTitle("Hi \(viewModel.user?.name ?? __designTimeString("#21198.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[1].value.arg[0].value.[0]", fallback: "Not Found"))!")
        }
        .safeAreaInset(edge: .bottom) {
            Button {
                
            } label: {
                Text(__designTimeString("#21198.[1].[1].property.[0].[0].modifier[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Add Family"))
            }
        }
    
#sourceLocation()
    }
}

import struct Home_Harmony.FamilyView
#Preview {
    FamilyView()
}



