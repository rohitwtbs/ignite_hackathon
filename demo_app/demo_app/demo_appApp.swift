//
//  demo_appApp.swift
//  demo_app
//
//  Created by rohit kumar on 01/12/22.
//

import SwiftUI
import TensorFlowLiteTaskVision

@main
struct demo_appApp: App {
    @StateObject var dataModel = DataModel()
    private var fetcher = Classification().identify()
    var body: some Scene {
        WindowGroup {
            if #available(iOS 16.0, *) {
                NavigationStack {
                    GridView()
                }
                .environmentObject(dataModel)
                .navigationViewStyle(.stack)
            } else {
                // Fallback on earlier versions
            }
        }
    }
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//
//        }
//    }

//    func classification() {
//        guard let modelPath = Bundle.main.path(forResource: "birds_V1",
//                                                    ofType: "tflite") else { return }
//
//        let options = ImageClassifierOptions(modelPath: modelPath)
//
//        // Configure any additional options:
//        // options.classificationOptions.maxResults = 3
//
//        let classifier = try? ImageClassifier.classifier(options: options)
//
//        // Convert the input image to MLImage.
//        // There are other sources for MLImage. For more details, please see:
//        // https://developers.google.com/ml-kit/reference/ios/mlimage/api/reference/Classes/GMLImage
//        guard let image = UIImage (named: "sparrow.jpg"), let mlImage = MLImage(image: image) else { return }
//
//        // Run inference
//        let classificationResults = try? classifier?.classify(mlImage: mlImage)    }
}


class Classification {
    func identify() {
        guard let modelPath = Bundle.main.path(forResource: "birds_V1",
                                                    ofType: "tflite") else { return }

        let options = ImageClassifierOptions(modelPath: modelPath)

        // Configure any additional options:
        // options.classificationOptions.maxResults = 3

        let classifier = try? ImageClassifier.classifier(options: options)

        // Convert the input image to MLImage.
        // There are other sources for MLImage. For more details, please see:
        // https://developers.google.com/ml-kit/reference/ios/mlimage/api/reference/Classes/GMLImage
        guard let image = UIImage (named: "sparrow.jpg"), let mlImage = MLImage(image: image) else { return }

        // Run inference
        let classificationResults = try? classifier?.classify(mlImage: mlImage)
        print("classificationResults")
    }
        
    
}


