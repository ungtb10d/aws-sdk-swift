// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsSecurityFindingIdentifier: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case productArn = "ProductArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let productArn = productArn {
            try encodeContainer.encode(productArn, forKey: .productArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let productArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .productArn)
        productArn = productArnDecoded
    }
}