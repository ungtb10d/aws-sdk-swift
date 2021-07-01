// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeStandardsControlsOutputResponseBody: Equatable {
    public let controls: [StandardsControl]?
    public let nextToken: String?
}

extension DescribeStandardsControlsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case controls = "Controls"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let controlsContainer = try containerValues.decodeIfPresent([StandardsControl?].self, forKey: .controls)
        var controlsDecoded0:[StandardsControl]? = nil
        if let controlsContainer = controlsContainer {
            controlsDecoded0 = [StandardsControl]()
            for structure0 in controlsContainer {
                if let structure0 = structure0 {
                    controlsDecoded0?.append(structure0)
                }
            }
        }
        controls = controlsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}