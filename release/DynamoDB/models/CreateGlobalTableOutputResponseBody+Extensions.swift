// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateGlobalTableOutputResponseBody: Equatable {
    public let globalTableDescription: GlobalTableDescription?
}

extension CreateGlobalTableOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case globalTableDescription = "GlobalTableDescription"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let globalTableDescriptionDecoded = try containerValues.decodeIfPresent(GlobalTableDescription.self, forKey: .globalTableDescription)
        globalTableDescription = globalTableDescriptionDecoded
    }
}