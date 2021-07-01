// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResizeInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allowCancelResize = "AllowCancelResize"
        case resizeType = "ResizeType"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if allowCancelResize != false {
            try container.encode(allowCancelResize, forKey: Key("AllowCancelResize"))
        }
        if let resizeType = resizeType {
            try container.encode(resizeType, forKey: Key("ResizeType"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resizeTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resizeType)
        resizeType = resizeTypeDecoded
        let allowCancelResizeDecoded = try containerValues.decode(Bool.self, forKey: .allowCancelResize)
        allowCancelResize = allowCancelResizeDecoded
    }
}