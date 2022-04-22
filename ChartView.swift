import SwiftUI

struct ChartView: View {
    let scale: Scale
    let chart: Chart
    let height: CGFloat
    
    @State
    private var scaleHeight: CGFloat = 0
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 24) {
            VStack {
                ScaleView(scale: scale)
                Rectangle()
                    .frame(width: 0, height: 100)
            }
            ForEach(chart.bars) { bar in
                BarView(bar: bar, maxHeight: height)
            }
            .padding(.bottom, 10)
        }
    }
}

struct ScaleView: View {
    let scale: Scale
    var body: some View {
        VStack(alignment: .trailing, spacing: 2) {
            ForEach(scale.steps.reversed(), id: \.self) { step in
                ForEach(Array(1...scale.innerStepCount), id: \.self) { _ in
                    Line(width: 8)
                }
                makeStep(step)
            }
        }
    }
    
    @ViewBuilder
    private func makeStep(_ text: String) -> some View {
        HStack {
            Text(text)
                .foregroundColor(.gray)
            Line(width: 16)
        }
    }
}

struct Line: View {
    let width: CGFloat
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: 1)
            .foregroundColor(.gray)
    }
}

struct Scale {
    let innerStepCount: Int
    let steps: [String]
}

struct BarView: View {
    let bar: Chart.Bar
    let maxHeight: CGFloat
    
    var body: some View {
        VStack(alignment: .leading) {
            bar.subtitle
            rectangle
                .padding(.top, 10)
            DescriptionView(name: bar.name, time: bar.time, unitys: bar.unitys)
            
        }
    }
    
    struct DescriptionView: View {
        let name: Text
        let time: Text
        let unitys: Text
        
        var body: some View {
            VStack(alignment: .leading) {
                name
                    .padding([.top],40)
                time
                    .padding([.top],28)
                unitys
            }
            .frame(height: 100)
        }
    }
    
    private var rectangle: some View {
        RoundedRectangle(cornerRadius: 6, style: .circular)
            .foregroundColor(bar.color)
            .frame(width: 90, height: bar.percentage * maxHeight)
    }
}

struct Chart {
    struct Bar: Identifiable {
        let id: UUID = .init()
        let percentage: CGFloat
        let color: Color
        let name: Text
        let subtitle: Text
        let time: Text
        let unitys: Text
    }

    let bars: [Bar]
}
