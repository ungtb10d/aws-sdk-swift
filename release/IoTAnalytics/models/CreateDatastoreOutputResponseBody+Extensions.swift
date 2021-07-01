// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDatastoreOutputResponseBody: Equatable {
    public let datastoreName: String?
    public let datastoreArn: String?
    public let retentionPeriod: RetentionPeriod?
}

extension CreateDatastoreOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case datastoreArn
        case datastoreName
        case retentionPeriod
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let datastoreNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datastoreName)
        datastoreName = datastoreNameDecoded
        let datastoreArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datastoreArn)
        datastoreArn = datastoreArnDecoded
        let retentionPeriodDecoded = try containerValues.decodeIfPresent(RetentionPeriod.self, forKey: .retentionPeriod)
        retentionPeriod = retentionPeriodDecoded
    }
}