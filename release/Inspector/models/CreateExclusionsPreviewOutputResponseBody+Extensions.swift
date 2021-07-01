// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateExclusionsPreviewOutputResponseBody: Equatable {
    public let previewToken: String?
}

extension CreateExclusionsPreviewOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case previewToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let previewTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .previewToken)
        previewToken = previewTokenDecoded
    }
}