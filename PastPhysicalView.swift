//
//  PastPhysicalView.swift
//  HealthPal
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct PastPhysicalView: View {
    
    @Binding var pastEntries : [[Int]]
    //let pastEntries : [[Int]] = [[]]
    var body: some View {
        VStack {
            List {
                //pastEntires.append(physicalData)
                ForEach(pastEntries.indices, id: \.self) { arrayIndex in
                    Section {
                        Text("Activity Time: \(pastEntries[arrayIndex][0])\nActivity Intensity: \(pastEntries[arrayIndex][1])\nExhaustion Level: \(pastEntries[arrayIndex][2])\nSoreness/Pain Level:  \(pastEntries[arrayIndex][3])\nMotivation Level: \(pastEntries[arrayIndex][4])")
                    }//section
                }//for each
            }//list
        }//v stack
    }//body
}//struct

#Preview {
    @Previewable @State var pastEntries: [[Int]] = []
    PastPhysicalView(pastEntries: $pastEntries)
}
