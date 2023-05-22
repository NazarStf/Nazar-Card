//
//  ContentView.swift
//  NazarCard
//
//  Created by NazarStf on 19.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
			Color(red: 0.16, green: 0.50, blue: 0.73)
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			VStack {
				Image("avatar")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 200, height: 200)
					.clipShape(Circle())
					.overlay(
						Circle().stroke(Color.yellow, lineWidth: 3)
					)
				Text("Nazar Stf")
					.font(.largeTitle)
					.bold()
					.foregroundColor(.white)
				Text("iOS Developer")
					.font(.title)
					.fontWeight(.light)
					.foregroundColor(.white)
				InfoView(text: "+380 12 345 67 89", imageName: "phone.fill", imageColor: .yellow)
				InfoView(text: "hworker98@gmail.com", imageName: "envelope.fill", imageColor: .yellow)
				InfoView(text: "github.com/MushroomMSTR", imageName: "rectangle.stack.badge.person.crop.fill", imageColor: .yellow)
			}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
