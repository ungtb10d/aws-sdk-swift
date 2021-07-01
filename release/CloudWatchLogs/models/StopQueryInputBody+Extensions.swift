// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StopQueryInputBody: Equatable {
    public let queryId: String?
}

extension StopQueryInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case queryId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queryIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queryId)
        queryId = queryIdDecoded
    }
}