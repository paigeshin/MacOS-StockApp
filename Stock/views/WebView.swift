//
//  WebView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    
    let url: URL
    
    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateNSView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: self.url)
        webView.load(request)
    }
    
}

