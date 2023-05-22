//
//  InfoView.swift
//  NazarCard
//
//  Created by NazarStf on 19.05.2023.
//

import SwiftUI

struct InfoView: View {
	
	let text: String
	let imageName: String
	let imageColor: Color
	
	var body: some View {
		RoundedRectangle(cornerRadius: 50)
			.fill(Color.white)
			.frame(height: 50)
			.overlay(HStack {
				Image(systemName: imageName)
					.foregroundColor(imageColor)
				Text(text)
					.font(.title2)
					.fontWeight(.light)
					.foregroundColor(.black) // Set the text color explicitly to black
			})
			.padding(.all)
	}
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
		InfoView(text: "test", imageName: "phone", imageColor: .yellow)
			.previewLayout(.sizeThatFits)
    }
}
