// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateInstanceCustomHealthStatusInputBody: Equatable {
    public let serviceId: String?
    public let instanceId: String?
    public let status: CustomHealthStatus?
}

extension UpdateInstanceCustomHealthStatusInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case instanceId = "InstanceId"
        case serviceId = "ServiceId"
        case status = "Status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serviceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceId)
        serviceId = serviceIdDecoded
        let instanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let statusDecoded = try containerValues.decodeIfPresent(CustomHealthStatus.self, forKey: .status)
        status = statusDecoded
    }
}