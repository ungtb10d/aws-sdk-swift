// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateSecretOutputResponseBody: Equatable {
    public let aRN: String?
    public let name: String?
    public let versionId: String?
    public let replicationStatus: [ReplicationStatusType]?
}

extension CreateSecretOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case aRN = "ARN"
        case name = "Name"
        case replicationStatus = "ReplicationStatus"
        case versionId = "VersionId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aRNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aRN)
        aRN = aRNDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let versionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .versionId)
        versionId = versionIdDecoded
        let replicationStatusContainer = try containerValues.decodeIfPresent([ReplicationStatusType?].self, forKey: .replicationStatus)
        var replicationStatusDecoded0:[ReplicationStatusType]? = nil
        if let replicationStatusContainer = replicationStatusContainer {
            replicationStatusDecoded0 = [ReplicationStatusType]()
            for structure0 in replicationStatusContainer {
                if let structure0 = structure0 {
                    replicationStatusDecoded0?.append(structure0)
                }
            }
        }
        replicationStatus = replicationStatusDecoded0
    }
}