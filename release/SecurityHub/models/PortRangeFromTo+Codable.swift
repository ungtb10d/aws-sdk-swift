// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PortRangeFromTo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case from = "From"
        case to = "To"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if from != 0 {
            try encodeContainer.encode(from, forKey: .from)
        }
        if to != 0 {
            try encodeContainer.encode(to, forKey: .to)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fromDecoded = try containerValues.decode(Int.self, forKey: .from)
        from = fromDecoded
        let toDecoded = try containerValues.decode(Int.self, forKey: .to)
        to = toDecoded
    }
}