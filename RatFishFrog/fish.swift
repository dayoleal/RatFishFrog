
import SwiftUI

//List of images
struct fish: View {
    var selectedImage: UIImage
    
    var fishList: [String] = [
    "Fish1",
    "Fish2",
    "Fish3",
    "Fish4",
    "Fish5",
    "Fish6",
    "Fish7"
    ]
    
    //Fish page view
    var body: some View {
        optionView("BGFish", "You are a Fish!", .neonBlue, .darkBlue , fishList.randomElement()!, selectedImage)
    }
}

//#Preview {
//    fish()
//}
