// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UdpContainerSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case m2tsSettings = "m2tsSettings"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let m2tsSettings = m2tsSettings {
            try encodeContainer.encode(m2tsSettings, forKey: .m2tsSettings)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let m2tsSettingsDecoded = try containerValues.decodeIfPresent(M2tsSettings.self, forKey: .m2tsSettings)
        m2tsSettings = m2tsSettingsDecoded
    }
}