
import SwiftUI

struct frog: View {
    var selectedImage: UIImage
    
    // list of images
    var frogList: [String] = [
    "Frog1",
    "Frog2",
    "Frog3",
    "Frog4",
    "Frog5",
    "Frog6",
    "Frog7"
    ]
    
    //Frog page view
    var body: some View {
        optionView("BGFrog", "You are a Frog!", .neonGreen, .darkGreen, frogList.randomElement()!, selectedImage)
    }
}

//#Preview {
//    frog(selectedImage: .constant())
//}
