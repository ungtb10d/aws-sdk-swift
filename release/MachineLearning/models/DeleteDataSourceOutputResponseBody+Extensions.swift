// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteDataSourceOutputResponseBody: Equatable {
    public let dataSourceId: String?
}

extension DeleteDataSourceOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dataSourceId = "DataSourceId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dataSourceId)
        dataSourceId = dataSourceIdDecoded
    }
}