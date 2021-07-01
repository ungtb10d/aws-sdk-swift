// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResultSetOptions: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case decimalReturnType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let decimalReturnType = decimalReturnType {
            try encodeContainer.encode(decimalReturnType.rawValue, forKey: .decimalReturnType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let decimalReturnTypeDecoded = try containerValues.decodeIfPresent(DecimalReturnType.self, forKey: .decimalReturnType)
        decimalReturnType = decimalReturnTypeDecoded
    }
}