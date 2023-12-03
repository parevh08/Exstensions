import Foundation

extension Dictionary {

    ///Need to add Extension: String + URL!
    func stringFromHttpParameters() -> String {
        let parameterArray = self.map { arr -> String in
            let key = arr.key
            let value = arr.value
            let percentEscapedKey = (key as? String)?.stringByAddingPercentEncodingForURLQueryValue() ?? ""
            let percentEscapedValue = (String(describing: value)).stringByAddingPercentEncodingForURLQueryValue()!
            return "\(percentEscapedKey)=\(percentEscapedValue)"
        }

        return parameterArray.joined(separator: "&")
    }
}
