// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeStacksOutputResponseBody: Equatable {
    public let stacks: [Stack]?
    public let nextToken: String?
}

extension DescribeStacksOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stacks = "Stacks"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let stacksContainer = try containerValues.decodeIfPresent([Stack?].self, forKey: .stacks)
        var stacksDecoded0:[Stack]? = nil
        if let stacksContainer = stacksContainer {
            stacksDecoded0 = [Stack]()
            for structure0 in stacksContainer {
                if let structure0 = structure0 {
                    stacksDecoded0?.append(structure0)
                }
            }
        }
        stacks = stacksDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}