//
//  WebView.swift
//  TravelApp
//
//  Created by Trey Browder on 1/27/24.
//

import Foundation
import UIKit
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    
    let stringURL: String
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let webView = WKWebView()
        view.addSubview(webView)
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            webView.widthAnchor.constraint(equalTo: view.widthAnchor),
            webView.heightAnchor.constraint(equalTo: view.heightAnchor),
            webView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            webView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        if let url = URL(string: stringURL) {
            webView.load(URLRequest(url: url))
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        //do something
    }
}
