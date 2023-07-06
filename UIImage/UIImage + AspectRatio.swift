
import UIKit

extension UIImage {
    
     //used to calculate a new aspect ratio-preserving image size
     //(preserving aspect ratio) based on a given target size
    func getPreservingAspectRationScaleImageSize(from targerSize: CGSize) -> CGSize {
        let widthRatio = targerSize.width / size.width
        let heigtRatio = targerSize.height / size.height
        let scale = min(widthRatio, heigtRatio)
        return CGSize(width: size.width * scale, height: size.height * scale)
    }
    
    //used to calculate a new aspect ratio-scaled image size
    //based on a given target size (targerSize)
    func renderScalePreservingAspectRatio(from targerSize: CGSize) -> UIImage {
        let widthRation = targerSize.width / size.width
        let heightRation = targerSize.height / size.height
        let scale = min(widthRation, heightRation)
        let scaledSize = CGSize(width: size.width * scale, height: size.height * scale)
        let renderer = UIGraphicsImageRenderer(size: scaledSize)
        let rect = CGRect(origin: .zero, size: scaledSize)
        let image = renderer.image { _ in
            self.draw(in: rect)
        }
        return image
    }
}



