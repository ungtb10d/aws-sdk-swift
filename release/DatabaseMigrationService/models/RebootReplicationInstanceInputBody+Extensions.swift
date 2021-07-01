// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RebootReplicationInstanceInputBody: Equatable {
    public let replicationInstanceArn: String?
    public let forceFailover: Bool?
}

extension RebootReplicationInstanceInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case forceFailover = "ForceFailover"
        case replicationInstanceArn = "ReplicationInstanceArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let replicationInstanceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .replicationInstanceArn)
        replicationInstanceArn = replicationInstanceArnDecoded
        let forceFailoverDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .forceFailover)
        forceFailover = forceFailoverDecoded
    }
}