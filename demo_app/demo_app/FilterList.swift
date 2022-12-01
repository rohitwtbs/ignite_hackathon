//
//  LandmarkList.swift
//  demo_app
//
//  Created by rohit kumar on 02/12/22.
//

import Foundation
import SwiftUI

@available(iOS 15.0, *)
struct FilterList: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            List {
                FilterRow()
                FilterRow()
                FilterRow()
            }
            .navigationTitle("Filters")
        }
    }
//    let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelB()))
//
//    func cancelB(){
//        dismiss(animated: true, completion: nil)
//    }
}

struct FilterList_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            FilterList()
        } else {
            // Fallback on earlier versions
        }
    }
}

//func cancelB(){
//    dismiss(animated: true, completion: nil)
//}
