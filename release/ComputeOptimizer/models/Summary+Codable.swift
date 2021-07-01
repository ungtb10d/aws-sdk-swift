// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Summary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name
        case reasonCodeSummaries
        case value
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name.rawValue, forKey: .name)
        }
        if let reasonCodeSummaries = reasonCodeSummaries {
            var reasonCodeSummariesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .reasonCodeSummaries)
            for reasoncodesummaries0 in reasonCodeSummaries {
                try reasonCodeSummariesContainer.encode(reasoncodesummaries0)
            }
        }
        if value != 0.0 {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(Finding.self, forKey: .name)
        name = nameDecoded
        let valueDecoded = try containerValues.decode(Double.self, forKey: .value)
        value = valueDecoded
        let reasonCodeSummariesContainer = try containerValues.decodeIfPresent([ReasonCodeSummary?].self, forKey: .reasonCodeSummaries)
        var reasonCodeSummariesDecoded0:[ReasonCodeSummary]? = nil
        if let reasonCodeSummariesContainer = reasonCodeSummariesContainer {
            reasonCodeSummariesDecoded0 = [ReasonCodeSummary]()
            for structure0 in reasonCodeSummariesContainer {
                if let structure0 = structure0 {
                    reasonCodeSummariesDecoded0?.append(structure0)
                }
            }
        }
        reasonCodeSummaries = reasonCodeSummariesDecoded0
    }
}