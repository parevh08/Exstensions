import UIKit

extension UIImage {
    
    //used to compress an image in JPEG format with a specified level of compression quality.
    func compressJpeg(_ quality: CompressionQuality.CompressValue) -> Data? {
        return self.jpegData(compressionQuality: quality.rawValue)
    }
}

//EXAMPLE CompressionQuality
class CompressionQuality {
    
    enum CompressValue: CGFloat {
        case low = 0.0
        case medium = 0.5
        case high = 1.0
    }
}

