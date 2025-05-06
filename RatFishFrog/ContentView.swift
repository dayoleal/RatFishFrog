
import SwiftUI
import PhotosUI

struct ContentView: View {
    var coreMLViewModel = CoreMLViewModel()
    @State var classificationLabel: String = ""
    @State var pickerImage: PhotosPickerItem?
    @State var selectedImage: UIImage?
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                // background image
                Image("home")
                    .resizable()
                    .scaledToFill()
                
                // picker button
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 230, height: 30)
                        .foregroundColor(.darkGreen)
                    PhotosPicker("Escolha sua melhor foto!", selection: $pickerImage, matching: .images)
                        .foregroundColor(.neonGreen)
                        .bold()
                }.padding(.bottom, 415)
                
                // view is selected according to output
                if selectedImage != nil {
                    // frog view
                    if classificationLabel == "Frog"{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(width: 230, height: 30)
                                .foregroundColor(.darkGreen)
                            NavigationLink("Results", destination: frog(selectedImage: selectedImage!))
                                .foregroundColor(.neonGreen)
                                .bold()
                            
                        }.padding(.top, 700)
                    }
                    
                    // fish view
                    else if classificationLabel == "Fish"{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(width: 230, height: 30)
                                .foregroundColor(.darkGreen)
                            NavigationLink("Results", destination: fish(selectedImage: selectedImage!))
                                .foregroundColor(.neonGreen)
                                .bold()
                        }.padding(.top, 700)
                    }
                    
                    // rat view
                    else{
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(width: 230, height: 30)
                                .foregroundColor(.darkGreen)
                            NavigationLink("Results", destination: rat(selectedImage: selectedImage!))
                                .foregroundColor(.neonGreen)
                                .bold()
                        }.padding(.top, 700)
                    }
                }
            }.ignoresSafeArea()
        }
        
        //Open option to pick photo
        .onChange(of: pickerImage) {
            Task {
                guard let imageData = try await pickerImage?.loadTransferable(type: Data.self) else { return }
                guard let inputImage = UIImage(data: imageData) else { return }
                selectedImage = inputImage
                classificationLabel = coreMLViewModel.checkImage(selectedImage!)
            }
        }
    }
}

#Preview {
    ContentView()
}

