// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SavingsPlanOfferingRateFilterElement: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name
        case values
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name.rawValue, forKey: .name)
        }
        if let values = values {
            var valuesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .values)
            for filtervalueslist0 in values {
                try valuesContainer.encode(filtervalueslist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(SavingsPlanRateFilterAttribute.self, forKey: .name)
        name = nameDecoded
        let valuesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .values)
        var valuesDecoded0:[String]? = nil
        if let valuesContainer = valuesContainer {
            valuesDecoded0 = [String]()
            for string0 in valuesContainer {
                if let string0 = string0 {
                    valuesDecoded0?.append(string0)
                }
            }
        }
        values = valuesDecoded0
    }
}