// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CodeContentUpdate: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case s3ContentLocationUpdate = "S3ContentLocationUpdate"
        case textContentUpdate = "TextContentUpdate"
        case zipFileContentUpdate = "ZipFileContentUpdate"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let s3ContentLocationUpdate = s3ContentLocationUpdate {
            try encodeContainer.encode(s3ContentLocationUpdate, forKey: .s3ContentLocationUpdate)
        }
        if let textContentUpdate = textContentUpdate {
            try encodeContainer.encode(textContentUpdate, forKey: .textContentUpdate)
        }
        if let zipFileContentUpdate = zipFileContentUpdate {
            try encodeContainer.encode(zipFileContentUpdate.base64EncodedString(), forKey: .zipFileContentUpdate)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let textContentUpdateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .textContentUpdate)
        textContentUpdate = textContentUpdateDecoded
        let zipFileContentUpdateDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .zipFileContentUpdate)
        zipFileContentUpdate = zipFileContentUpdateDecoded
        let s3ContentLocationUpdateDecoded = try containerValues.decodeIfPresent(S3ContentLocationUpdate.self, forKey: .s3ContentLocationUpdate)
        s3ContentLocationUpdate = s3ContentLocationUpdateDecoded
    }
}