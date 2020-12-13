//
//  PageSelector.swift
//  Wireframes
//
//  Created by Gavin on 12/13/20.
//

import SwiftUI

struct PageSelector: View {
    @State var page: Int
    var body: some View {
        
        HStack {
            
            switch page {
            case 1:
                PageSelectorDash()
                PageSelectorDot()
                PageSelectorDot()
            case 2:
                PageSelectorDot()
                PageSelectorDash()
                PageSelectorDot()
            case 3:
                PageSelectorDot()
                PageSelectorDot()
                PageSelectorDash()
            default:
                PageSelectorDash()
                PageSelectorDot()
                PageSelectorDot()
            }
            
            
        }
        
    }
}

struct PageSelector_Previews: PreviewProvider {
    static var previews: some View {
        PageSelector(page: 1)
    }
}
