// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LoRaWANDevice: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case abpV1_0_x = "AbpV1_0_x"
        case abpV1_1 = "AbpV1_1"
        case devEui = "DevEui"
        case deviceProfileId = "DeviceProfileId"
        case otaaV1_0_x = "OtaaV1_0_x"
        case otaaV1_1 = "OtaaV1_1"
        case serviceProfileId = "ServiceProfileId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let abpV1_0_x = abpV1_0_x {
            try encodeContainer.encode(abpV1_0_x, forKey: .abpV1_0_x)
        }
        if let abpV1_1 = abpV1_1 {
            try encodeContainer.encode(abpV1_1, forKey: .abpV1_1)
        }
        if let devEui = devEui {
            try encodeContainer.encode(devEui, forKey: .devEui)
        }
        if let deviceProfileId = deviceProfileId {
            try encodeContainer.encode(deviceProfileId, forKey: .deviceProfileId)
        }
        if let otaaV1_0_x = otaaV1_0_x {
            try encodeContainer.encode(otaaV1_0_x, forKey: .otaaV1_0_x)
        }
        if let otaaV1_1 = otaaV1_1 {
            try encodeContainer.encode(otaaV1_1, forKey: .otaaV1_1)
        }
        if let serviceProfileId = serviceProfileId {
            try encodeContainer.encode(serviceProfileId, forKey: .serviceProfileId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let devEuiDecoded = try containerValues.decodeIfPresent(String.self, forKey: .devEui)
        devEui = devEuiDecoded
        let deviceProfileIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceProfileId)
        deviceProfileId = deviceProfileIdDecoded
        let serviceProfileIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceProfileId)
        serviceProfileId = serviceProfileIdDecoded
        let otaaV1_1Decoded = try containerValues.decodeIfPresent(OtaaV1_1.self, forKey: .otaaV1_1)
        otaaV1_1 = otaaV1_1Decoded
        let otaaV1_0_xDecoded = try containerValues.decodeIfPresent(OtaaV1_0_x.self, forKey: .otaaV1_0_x)
        otaaV1_0_x = otaaV1_0_xDecoded
        let abpV1_1Decoded = try containerValues.decodeIfPresent(AbpV1_1.self, forKey: .abpV1_1)
        abpV1_1 = abpV1_1Decoded
        let abpV1_0_xDecoded = try containerValues.decodeIfPresent(AbpV1_0_x.self, forKey: .abpV1_0_x)
        abpV1_0_x = abpV1_0_xDecoded
    }
}