// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VirtualGatewayTlsValidationContextSdsTrust: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case secretName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let secretName = secretName {
            try encodeContainer.encode(secretName, forKey: .secretName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let secretNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretName)
        secretName = secretNameDecoded
    }
}