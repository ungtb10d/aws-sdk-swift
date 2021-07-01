// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDRTAccessOutputResponseBody: Equatable {
    public let roleArn: String?
    public let logBucketList: [String]?
}

extension DescribeDRTAccessOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case logBucketList = "LogBucketList"
        case roleArn = "RoleArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let logBucketListContainer = try containerValues.decodeIfPresent([String?].self, forKey: .logBucketList)
        var logBucketListDecoded0:[String]? = nil
        if let logBucketListContainer = logBucketListContainer {
            logBucketListDecoded0 = [String]()
            for string0 in logBucketListContainer {
                if let string0 = string0 {
                    logBucketListDecoded0?.append(string0)
                }
            }
        }
        logBucketList = logBucketListDecoded0
    }
}