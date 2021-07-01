// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SetLoggingOptionsInputBody: Equatable {
    public let loggingOptionsPayload: LoggingOptionsPayload?
}

extension SetLoggingOptionsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case loggingOptionsPayload
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let loggingOptionsPayloadDecoded = try containerValues.decodeIfPresent(LoggingOptionsPayload.self, forKey: .loggingOptionsPayload)
        loggingOptionsPayload = loggingOptionsPayloadDecoded
    }
}