// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Storage: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case s3 = "S3"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let s3 = s3 {
            try container.encode(s3, forKey: Key("S3"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let s3Decoded = try containerValues.decodeIfPresent(S3Storage.self, forKey: .s3)
        s3 = s3Decoded
    }
}