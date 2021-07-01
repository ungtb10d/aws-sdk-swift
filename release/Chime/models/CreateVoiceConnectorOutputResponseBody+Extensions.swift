// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateVoiceConnectorOutputResponseBody: Equatable {
    public let voiceConnector: VoiceConnector?
}

extension CreateVoiceConnectorOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case voiceConnector = "VoiceConnector"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let voiceConnectorDecoded = try containerValues.decodeIfPresent(VoiceConnector.self, forKey: .voiceConnector)
        voiceConnector = voiceConnectorDecoded
    }
}