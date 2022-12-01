//
//  GridItemView.swift
//  demo_app
//
//  Created by rohit kumar on 01/12/22.
//

import SwiftUI

struct GridItemView: View {
    let size: Double
    let item: Item

    var body: some View {
        ZStack(alignment: .topTrailing) {
            if #available(iOS 15.0, *) {
                AsyncImage(url: item.url) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: size, height: size)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        if let url = Bundle.main.url(forResource: "mushy1", withExtension: "jpg") {
            GridItemView(size: 50, item: Item(url: url))
        }
    }
}
