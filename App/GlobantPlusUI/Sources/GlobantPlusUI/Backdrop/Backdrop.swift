//
//  SwiftUIView.swift
//  
//
//  Created by Adolfo Vera Blasco on 4/1/23.
//

import SwiftUI

public struct Backdrop: View {
    private var url: URL?
    
    public var body: some View {
        AsyncImage(url: url) { status in
            switch status {
                case .empty:
                    Rectangle()
                        .aspectRatio(1.777, contentMode: .fill)
                        .background(Color.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay(alignment: .center) {
                            ProgressView()
                        }
                case .success(let image):
                    image
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(1.777, contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                case .failure:
                    Image("PosterPlaceholder", bundle: Bundle.module)
                        .resizable()
                        .aspectRatio(1.777, contentMode: .fit)
            }
        }
    }
    
    public init(path: String?) {
        if let path {
            self.url = URL(string: path)
        }
    }
}

struct Backdrop_Previews: PreviewProvider {
    static var previews: some View {
        Backdrop(path: "fake")
    }
}
