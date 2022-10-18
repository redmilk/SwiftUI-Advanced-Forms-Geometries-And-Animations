//
//  TabBarViewTwo.swift
//  Test
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import SwiftUI
import Combine

// MARK: - Custom Alignment
extension VerticalAlignment {
    static let oneThird = VerticalAlignment(OneThird.self)
    private enum OneThird : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d.height / 3
        }
    }
    
    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
    private enum CrossAlignment : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.bottom]
        }
    }
}

    
// MARK: - ObservableObject
final class AlignmentService: ObservableObject {
    
    @Published var alignment = VerticalAlignment.top
    private var timerCancellable: AnyCancellable?
    
    func runTimer() {
        let cancellable = Timer.publish(every: 1.0, on: RunLoop.main, in: .common)
            .autoconnect()
            .sink { receivedTimeStamp in
                self.alignment = self.alignment == .top ? .bottom : .top
            }
        timerCancellable = cancellable
    }
}

//MARK: - View
struct TabBarViewTwo: View {
    @State private var text: String = ""
    
    @StateObject var alignmentService = AlignmentService()
    
    var body: some View {
        VStack {
            Text("Custom Alignment")
            HStack(alignment: .oneThird) {
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 50, height: 200)
                Rectangle()
                    .foregroundColor(Color.red)
                    .alignmentGuide(.oneThird,
                                    computeValue: { d in d[alignmentService.alignment] })
                    .frame(width: 50, height: 200)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: 50, height: 200)
                Rectangle()
                    .foregroundColor(Color.orange)
                    .alignmentGuide(.oneThird,
                                    computeValue: { d in d[VerticalAlignment.top] })
                    .frame(width: 50, height: 200)
            }
            .animation(.easeInOut, value: alignmentService.alignment)
            
            Divider()
            Text("Cross Alignment")

            HStack {
                HStack(alignment: .center, spacing: 20) {
                    Circle()
                        .foregroundColor(Color.purple)
                        .frame(width: 100, height: 50)
                    VStack(alignment: .center) {
                        Rectangle()
                            .foregroundColor(Color.green)
                            .frame(width: 50, height: 50)
                        Rectangle()
                            .foregroundColor(Color.red)
                            .frame(width: 50, height: 50)
                        Rectangle()
                            .foregroundColor(Color.blue)
                            .frame(width: 50, height: 50)
                        Rectangle()
                            .foregroundColor(Color.orange)
                            .frame(width: 50, height: 50)
                    }
                }
                
                HStack(alignment: .crossAlignment, spacing: 20) {
                    Circle()
                        .foregroundColor(Color.purple)
                        .alignmentGuide(.crossAlignment,
                                     computeValue: { d in d[VerticalAlignment.center] })
                        .frame(width: 50, height: 50)
                    VStack(alignment: .center) {
                        Rectangle()
                            .foregroundColor(Color.green)
                            .frame(width: 50, height: 50)
                        Rectangle()
                            .foregroundColor(Color.red)
                            .frame(width: 50, height: 50)
                        Rectangle()
                            .foregroundColor(Color.blue)
                            .alignmentGuide(.crossAlignment,
                                         computeValue: { d in d[VerticalAlignment.center] })
                            .frame(width: 50, height: 50)
                        Rectangle()
                            .foregroundColor(Color.orange)
                            .frame(width: 50, height: 50)
                    }
                }
            }
            
            Spacer()
            TextEditor(text: $text)
                .padding()
                .onChange(of: text) { newValue in
                    print("onChange triggered")
                    print(newValue)
                }
        }
        .task {
            alignmentService.runTimer()
        }
    }
}

struct TabBarViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewTwo()
    }
}
