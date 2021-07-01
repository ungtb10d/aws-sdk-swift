// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BatchPermissionsFailureEntry: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case error = "Error"
        case requestEntry = "RequestEntry"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let error = error {
            try encodeContainer.encode(error, forKey: .error)
        }
        if let requestEntry = requestEntry {
            try encodeContainer.encode(requestEntry, forKey: .requestEntry)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let requestEntryDecoded = try containerValues.decodeIfPresent(BatchPermissionsRequestEntry.self, forKey: .requestEntry)
        requestEntry = requestEntryDecoded
        let errorDecoded = try containerValues.decodeIfPresent(ErrorDetail.self, forKey: .error)
        error = errorDecoded
    }
}