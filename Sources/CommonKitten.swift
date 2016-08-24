import Foundation

public enum InstantiationError : Error {
    case notEnoughData
}

extension Integer {
    /// The amount of bytes in one of `Self`
    public static var size: Int {
        return sizeof(Self.self)
    }
    
    /// The bytes in `Self`
    public var bytes : [UInt8] {
        var integer = self
        return withUnsafePointer(&integer) {
            Array(UnsafeBufferPointer(start: UnsafePointer<UInt8>($0), count: Self.size))
        }
    }
    
    /// Creates a `Self` from bytes
    ///
    /// - throws: InstantiationError.notEnoughData
    public static func instantiate(bytes data: [UInt8]) throws -> Self {
        guard data.count >= self.size else {
            throw InstantiationError.notEnoughData
        }
        
        return UnsafePointer<Self>(data).pointee
    }
}
