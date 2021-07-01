// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeModelOutputResponseBody: Equatable {
    public let modelDescription: ModelDescription?
}

extension DescribeModelOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case modelDescription = "ModelDescription"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let modelDescriptionDecoded = try containerValues.decodeIfPresent(ModelDescription.self, forKey: .modelDescription)
        modelDescription = modelDescriptionDecoded
    }
}