# 🐭🐟🐸 Rat, Fish or Frog? – iOS App with AI for Image Classification

## About the Project

This is an iOS app developed by me, Dayo Leal, in collaboration with Isabela Hissa Pinto, Camila Parolin, Matheus Motta, Lucca Pivoto, and Kleber Gadelha, with the goal of applying **artificial intelligence to classify images as "rat", "fish", or "frog"**.  
Even if the uploaded image does not belong to any of these categories, the model will always try to fit it into one of the three. The result? A fun, unexpected, and technically intriguing experiment.

The idea arose as an exercise in integrating **CoreML** and **SwiftUI**, but it also explores the behavior of machine learning models when dealing with inputs outside their original scope.

## Features

- Upload any image from the user's gallery.
- Automatic classification as *rat*, *fish*, or *frog* using an AI model trained on real data.
- Visual interface inspired by the 2000s/2010s aesthetic for a nostalgic and laid-back feel.
- Immediate visual feedback with icon, label, and fun reactions.

## Technologies Used

- **SwiftUI**: For developing the user interface in a modern, declarative, and responsive way.
- **CoreML**: Apple’s framework for integrating machine learning models directly into iOS apps.
- **Create ML**: Used to train the classification model from datasets.
- **Kaggle**: Source of the image datasets used to train the model to classify rats, fish, and frogs.
- **Xcode**: Integrated development environment (IDE) for iOS.

## How the AI Works

The machine learning model was trained using labeled images of the three classes: *rat*, *fish*, and *frog*. The images were split into training and test sets, normalized, and processed to improve classifier performance.

The model was exported in `.mlmodel` format and integrated into the project via CoreML, allowing offline inference directly on the iOS device. This ensures speed and user privacy.

## Why This Project?

Besides the technical learning, the intention was to create something:
- Fun to use (and share),
- Simple to experiment with,
- Capable of showing how **AI models interpret the world with limited data**.

The result is an app that blends **technology, humor, and nostalgia**, functioning as a mini-demonstration of the potential (and limits) of AI in everyday applications.

## How to Run the Project

1. Clone the repository:
   ```bash
   git clone 
        https://github.com/hissapinto/RatFishFrog.git
   ```
2. Open the project in Xcode.
3. Make sure you have a real iOS device or simulator running.
4. Build & Run.

## Interface

![rat_fish_frog 001](https://github.com/user-attachments/assets/74cbba56-ad17-4fd4-9bf2-0a5b8f3febe5)

## Credits

Developed by:
- Isabela Hissa Pinto - https://github.com/hissapinto
- Dayo Leal - https://github.com/dayoleal
- Camila Parolin - https://github.com/cparolin
- Matheus Motta - https://github.com/matheusmotta16
- Lucca Pivoto - https://github.com/LuccaPV
- Kleber Gadelha - https://github.com/Kleber-gadelha

  
![IMG_5314](https://github.com/user-attachments/assets/5003e2c0-cae3-4135-8e77-6a5d5b6099fc)
