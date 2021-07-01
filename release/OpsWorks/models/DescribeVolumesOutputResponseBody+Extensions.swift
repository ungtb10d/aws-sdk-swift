// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeVolumesOutputResponseBody: Equatable {
    public let volumes: [Volume]?
}

extension DescribeVolumesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case volumes = "Volumes"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let volumesContainer = try containerValues.decodeIfPresent([Volume?].self, forKey: .volumes)
        var volumesDecoded0:[Volume]? = nil
        if let volumesContainer = volumesContainer {
            volumesDecoded0 = [Volume]()
            for structure0 in volumesContainer {
                if let structure0 = structure0 {
                    volumesDecoded0?.append(structure0)
                }
            }
        }
        volumes = volumesDecoded0
    }
}