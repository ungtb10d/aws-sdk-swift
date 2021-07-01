// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DynamoDBv2Action: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case putItem
        case roleArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let putItem = putItem {
            try encodeContainer.encode(putItem, forKey: .putItem)
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let putItemDecoded = try containerValues.decodeIfPresent(PutItemInput.self, forKey: .putItem)
        putItem = putItemDecoded
    }
}