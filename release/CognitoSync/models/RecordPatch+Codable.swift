// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RecordPatch: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deviceLastModifiedDate = "DeviceLastModifiedDate"
        case key = "Key"
        case op = "Op"
        case syncCount = "SyncCount"
        case value = "Value"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let deviceLastModifiedDate = deviceLastModifiedDate {
            try encodeContainer.encode(deviceLastModifiedDate.timeIntervalSince1970, forKey: .deviceLastModifiedDate)
        }
        if let key = key {
            try encodeContainer.encode(key, forKey: .key)
        }
        if let op = op {
            try encodeContainer.encode(op.rawValue, forKey: .op)
        }
        if let syncCount = syncCount {
            try encodeContainer.encode(syncCount, forKey: .syncCount)
        }
        if let value = value {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let opDecoded = try containerValues.decodeIfPresent(Operation.self, forKey: .op)
        op = opDecoded
        let keyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .key)
        key = keyDecoded
        let valueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .value)
        value = valueDecoded
        let syncCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .syncCount)
        syncCount = syncCountDecoded
        let deviceLastModifiedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .deviceLastModifiedDate)
        deviceLastModifiedDate = deviceLastModifiedDateDecoded
    }
}