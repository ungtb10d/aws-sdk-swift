// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutRecordsInputBody: Equatable {
    public let records: [PutRecordsRequestEntry]?
    public let streamName: String?
}

extension PutRecordsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case records = "Records"
        case streamName = "StreamName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let recordsContainer = try containerValues.decodeIfPresent([PutRecordsRequestEntry?].self, forKey: .records)
        var recordsDecoded0:[PutRecordsRequestEntry]? = nil
        if let recordsContainer = recordsContainer {
            recordsDecoded0 = [PutRecordsRequestEntry]()
            for structure0 in recordsContainer {
                if let structure0 = structure0 {
                    recordsDecoded0?.append(structure0)
                }
            }
        }
        records = recordsDecoded0
        let streamNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamName)
        streamName = streamNameDecoded
    }
}