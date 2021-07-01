// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteElasticsearchDomainOutputResponseBody: Equatable {
    public let domainStatus: ElasticsearchDomainStatus?
}

extension DeleteElasticsearchDomainOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case domainStatus = "DomainStatus"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainStatusDecoded = try containerValues.decodeIfPresent(ElasticsearchDomainStatus.self, forKey: .domainStatus)
        domainStatus = domainStatusDecoded
    }
}