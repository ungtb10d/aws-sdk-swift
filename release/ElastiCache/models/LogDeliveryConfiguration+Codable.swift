// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LogDeliveryConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case destinationDetails = "DestinationDetails"
        case destinationType = "DestinationType"
        case logFormat = "LogFormat"
        case logType = "LogType"
        case message = "Message"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let destinationDetails = destinationDetails {
            try container.encode(destinationDetails, forKey: Key("DestinationDetails"))
        }
        if let destinationType = destinationType {
            try container.encode(destinationType, forKey: Key("DestinationType"))
        }
        if let logFormat = logFormat {
            try container.encode(logFormat, forKey: Key("LogFormat"))
        }
        if let logType = logType {
            try container.encode(logType, forKey: Key("LogType"))
        }
        if let message = message {
            try container.encode(message, forKey: Key("Message"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("Status"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let logTypeDecoded = try containerValues.decodeIfPresent(LogType.self, forKey: .logType)
        logType = logTypeDecoded
        let destinationTypeDecoded = try containerValues.decodeIfPresent(DestinationType.self, forKey: .destinationType)
        destinationType = destinationTypeDecoded
        let destinationDetailsDecoded = try containerValues.decodeIfPresent(DestinationDetails.self, forKey: .destinationDetails)
        destinationDetails = destinationDetailsDecoded
        let logFormatDecoded = try containerValues.decodeIfPresent(LogFormat.self, forKey: .logFormat)
        logFormat = logFormatDecoded
        let statusDecoded = try containerValues.decodeIfPresent(LogDeliveryConfigurationStatus.self, forKey: .status)
        status = statusDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}