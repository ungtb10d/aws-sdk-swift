// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateChannelClassInputBody: Equatable {
    public let channelClass: ChannelClass?
    public let destinations: [OutputDestination]?
}

extension UpdateChannelClassInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case channelClass = "channelClass"
        case destinations = "destinations"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let channelClassDecoded = try containerValues.decodeIfPresent(ChannelClass.self, forKey: .channelClass)
        channelClass = channelClassDecoded
        let destinationsContainer = try containerValues.decodeIfPresent([OutputDestination?].self, forKey: .destinations)
        var destinationsDecoded0:[OutputDestination]? = nil
        if let destinationsContainer = destinationsContainer {
            destinationsDecoded0 = [OutputDestination]()
            for structure0 in destinationsContainer {
                if let structure0 = structure0 {
                    destinationsDecoded0?.append(structure0)
                }
            }
        }
        destinations = destinationsDecoded0
    }
}