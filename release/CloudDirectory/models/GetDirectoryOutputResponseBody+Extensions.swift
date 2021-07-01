// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetDirectoryOutputResponseBody: Equatable {
    public let directory: Directory?
}

extension GetDirectoryOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case directory = "Directory"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let directoryDecoded = try containerValues.decodeIfPresent(Directory.self, forKey: .directory)
        directory = directoryDecoded
    }
}