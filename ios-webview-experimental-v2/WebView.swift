//
//  WebView.swift
//  ios-webview-experimental
//
//  Created by GUKBEOM LEE on 3/12/25.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL(string: "https://vidbox.cc/home")
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://vidbox.cc/home")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
