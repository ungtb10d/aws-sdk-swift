// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeElasticIpsInputBody: Equatable {
    public let instanceId: String?
    public let stackId: String?
    public let ips: [String]?
}

extension DescribeElasticIpsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case instanceId = "InstanceId"
        case ips = "Ips"
        case stackId = "StackId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let stackIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stackId)
        stackId = stackIdDecoded
        let ipsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .ips)
        var ipsDecoded0:[String]? = nil
        if let ipsContainer = ipsContainer {
            ipsDecoded0 = [String]()
            for string0 in ipsContainer {
                if let string0 = string0 {
                    ipsDecoded0?.append(string0)
                }
            }
        }
        ips = ipsDecoded0
    }
}