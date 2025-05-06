
import SwiftUI

struct rat: View {
    var selectedImage: UIImage
    
    // list of images
    var ratList: [String] = [
    "Rat1",
    "Rat2",
    "Rat3",
    "Rat4",
    "Rat5",
    "Rat6",
    "Rat7"
    ]
    
    //Rat page view
    var body: some View {
        optionView("BGRat", "You are a Rat!", .neonYellow, .darkBrown, ratList.randomElement()!, selectedImage)
    }
}

//#Preview {
//    rat()
//}
