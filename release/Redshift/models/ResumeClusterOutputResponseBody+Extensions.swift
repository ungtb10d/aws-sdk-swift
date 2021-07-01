// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ResumeClusterOutputResponseBody: Equatable {
    public let cluster: Cluster?
}

extension ResumeClusterOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cluster = "Cluster"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ResumeClusterResult"))
        let clusterDecoded = try containerValues.decodeIfPresent(Cluster.self, forKey: .cluster)
        cluster = clusterDecoded
    }
}