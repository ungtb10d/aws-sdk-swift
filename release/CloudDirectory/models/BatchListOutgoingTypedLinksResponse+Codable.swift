// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BatchListOutgoingTypedLinksResponse: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case typedLinkSpecifiers = "TypedLinkSpecifiers"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let typedLinkSpecifiers = typedLinkSpecifiers {
            var typedLinkSpecifiersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .typedLinkSpecifiers)
            for typedlinkspecifierlist0 in typedLinkSpecifiers {
                try typedLinkSpecifiersContainer.encode(typedlinkspecifierlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typedLinkSpecifiersContainer = try containerValues.decodeIfPresent([TypedLinkSpecifier?].self, forKey: .typedLinkSpecifiers)
        var typedLinkSpecifiersDecoded0:[TypedLinkSpecifier]? = nil
        if let typedLinkSpecifiersContainer = typedLinkSpecifiersContainer {
            typedLinkSpecifiersDecoded0 = [TypedLinkSpecifier]()
            for structure0 in typedLinkSpecifiersContainer {
                if let structure0 = structure0 {
                    typedLinkSpecifiersDecoded0?.append(structure0)
                }
            }
        }
        typedLinkSpecifiers = typedLinkSpecifiersDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}