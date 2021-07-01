// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteStoredQueryInputBody: Equatable {
    public let queryName: String?
}

extension DeleteStoredQueryInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case queryName = "QueryName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queryNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queryName)
        queryName = queryNameDecoded
    }
}