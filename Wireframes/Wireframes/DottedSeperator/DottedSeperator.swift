//
//  DottedSeperator.swift
//  Wireframes
//
//  Created by Gavin on 11/30/20.
//

import SwiftUI

struct DottedSeperator: View {
    
    @State var width: Int
    @State var color: Color = .black
    
    var body: some View {
        Line()
           .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
            .frame(width: CGFloat(width), height: 1)
            .foregroundColor(color)
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct DottedSeperator_Previews: PreviewProvider {
    static var previews: some View {
        DottedSeperator(width: 100)
    }
}
