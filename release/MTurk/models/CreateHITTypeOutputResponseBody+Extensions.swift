// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateHITTypeOutputResponseBody: Equatable {
    public let hITTypeId: String?
}

extension CreateHITTypeOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case hITTypeId = "HITTypeId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let hITTypeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hITTypeId)
        hITTypeId = hITTypeIdDecoded
    }
}