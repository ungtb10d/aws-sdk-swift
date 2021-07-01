// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SearchResourcesCriteriaBlock: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case and = "and"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let and = and {
            var andContainer = encodeContainer.nestedUnkeyedContainer(forKey: .and)
            for __listofsearchresourcescriteria0 in and {
                try andContainer.encode(__listofsearchresourcescriteria0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let andContainer = try containerValues.decodeIfPresent([SearchResourcesCriteria?].self, forKey: .and)
        var andDecoded0:[SearchResourcesCriteria]? = nil
        if let andContainer = andContainer {
            andDecoded0 = [SearchResourcesCriteria]()
            for structure0 in andContainer {
                if let structure0 = structure0 {
                    andDecoded0?.append(structure0)
                }
            }
        }
        and = andDecoded0
    }
}