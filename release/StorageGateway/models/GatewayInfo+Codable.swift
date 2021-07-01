// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GatewayInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case ec2InstanceId = "Ec2InstanceId"
        case ec2InstanceRegion = "Ec2InstanceRegion"
        case gatewayARN = "GatewayARN"
        case gatewayId = "GatewayId"
        case gatewayName = "GatewayName"
        case gatewayOperationalState = "GatewayOperationalState"
        case gatewayType = "GatewayType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let ec2InstanceId = ec2InstanceId {
            try encodeContainer.encode(ec2InstanceId, forKey: .ec2InstanceId)
        }
        if let ec2InstanceRegion = ec2InstanceRegion {
            try encodeContainer.encode(ec2InstanceRegion, forKey: .ec2InstanceRegion)
        }
        if let gatewayARN = gatewayARN {
            try encodeContainer.encode(gatewayARN, forKey: .gatewayARN)
        }
        if let gatewayId = gatewayId {
            try encodeContainer.encode(gatewayId, forKey: .gatewayId)
        }
        if let gatewayName = gatewayName {
            try encodeContainer.encode(gatewayName, forKey: .gatewayName)
        }
        if let gatewayOperationalState = gatewayOperationalState {
            try encodeContainer.encode(gatewayOperationalState, forKey: .gatewayOperationalState)
        }
        if let gatewayType = gatewayType {
            try encodeContainer.encode(gatewayType, forKey: .gatewayType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let gatewayIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayId)
        gatewayId = gatewayIdDecoded
        let gatewayARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayARN)
        gatewayARN = gatewayARNDecoded
        let gatewayTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayType)
        gatewayType = gatewayTypeDecoded
        let gatewayOperationalStateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayOperationalState)
        gatewayOperationalState = gatewayOperationalStateDecoded
        let gatewayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gatewayName)
        gatewayName = gatewayNameDecoded
        let ec2InstanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ec2InstanceId)
        ec2InstanceId = ec2InstanceIdDecoded
        let ec2InstanceRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ec2InstanceRegion)
        ec2InstanceRegion = ec2InstanceRegionDecoded
    }
}