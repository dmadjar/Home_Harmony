@_private(sourceFile: "TaskView.swift") import Home_Harmony
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TaskView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/danielmadjar/Desktop/Projects/Home_Harmony/Home_Harmony/TaskView.swift", line: 13)
        VStack(alignment: .leading, spacing: __designTimeInteger("#9375.[1].[1].property.[0].[0].arg[1].value", fallback: 30)) {
//            Text("Hi \(viewModel.user?.name ?? "Not Found")!")
//                .font(.largeTitle)
//                .fontWeight(.heavy)
//            
            Text(__designTimeString("#9375.[1].[1].property.[0].[0].arg[2].value.[0].arg[0].value", fallback: "Hi Daniel!"))
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text(__designTimeString("#9375.[1].[1].property.[0].[0].arg[2].value.[1].arg[0].value", fallback: "Your Families"))
        }
        .safeAreaInset(edge: .bottom) {
            Button {
                
            } label: {
                Text(__designTimeString("#9375.[1].[1].property.[0].[0].modifier[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Add Family"))
            }
        }
    
#sourceLocation()
    }
}

import struct Home_Harmony.TaskView
#Preview {
    TaskView()
}



