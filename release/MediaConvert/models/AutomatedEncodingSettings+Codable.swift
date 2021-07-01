// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AutomatedEncodingSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case abrSettings = "abrSettings"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let abrSettings = abrSettings {
            try encodeContainer.encode(abrSettings, forKey: .abrSettings)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let abrSettingsDecoded = try containerValues.decodeIfPresent(AutomatedAbrSettings.self, forKey: .abrSettings)
        abrSettings = abrSettingsDecoded
    }
}