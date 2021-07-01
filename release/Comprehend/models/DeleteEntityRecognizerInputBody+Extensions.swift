// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteEntityRecognizerInputBody: Equatable {
    public let entityRecognizerArn: String?
}

extension DeleteEntityRecognizerInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case entityRecognizerArn = "EntityRecognizerArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let entityRecognizerArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .entityRecognizerArn)
        entityRecognizerArn = entityRecognizerArnDecoded
    }
}