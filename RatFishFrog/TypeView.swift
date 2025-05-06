
import Foundation
import SwiftUI

//Rat, fish and frog view struct
struct optionView: View{
    var background: String
    var text: String
    var colorText: Color
    var colorRectangle: Color
    var image: String
    var selectedImage: UIImage

    
    init(_ background: String,_ text: String,_ colorText: Color,_ colorRectangle: Color,_ image: String, _ selectedImage: UIImage) {
        self.background = background
        self.text = text
        self.colorText = colorText
        self.colorRectangle = colorRectangle
        self.image = image
        self.selectedImage = selectedImage
    }
    
    //Squircle shape and photo
    var body: some View {
        ZStack{
            Image(background)
                .resizable()
                .scaledToFill()
            VStack{
                ZStack{ //label
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 300, height: 80)
                        .foregroundColor(colorRectangle)
                    
                    Text(text)
                        .foregroundStyle(colorText)
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                }
                
                ZStack{ //fish, rat or frog image
                    SquircleShape(curvature: 8)
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.white, Color("borderColor")]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 280, height: 280)
                        .opacity(0.5)
                        .shadow(color: .black, radius: 7, x: 13, y: -13)
                        .overlay(
                            SquircleShape(curvature: 8)
                                .stroke(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.white, Color("borderColor")]), startPoint: .bottom, endPoint: .top),
                                    lineWidth: 1.5)
                                .opacity(0.8)
                        )
                    Image(image)
                        .resizable()
                        .frame(width: 252,height: 248)
                        .cornerRadius(10)
                }
                Image(uiImage: selectedImage)
                    .resizable()
                    .aspectRatio(contentMode:.fill) //To crop without smash the photo
                    .frame(width: 152,height: 148)
                    .cornerRadius(10)
                    .padding(.top, 20)
            }
        }.ignoresSafeArea()
    }
}
