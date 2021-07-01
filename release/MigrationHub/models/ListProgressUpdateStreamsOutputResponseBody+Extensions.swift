// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListProgressUpdateStreamsOutputResponseBody: Equatable {
    public let progressUpdateStreamSummaryList: [ProgressUpdateStreamSummary]?
    public let nextToken: String?
}

extension ListProgressUpdateStreamsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case progressUpdateStreamSummaryList = "ProgressUpdateStreamSummaryList"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let progressUpdateStreamSummaryListContainer = try containerValues.decodeIfPresent([ProgressUpdateStreamSummary?].self, forKey: .progressUpdateStreamSummaryList)
        var progressUpdateStreamSummaryListDecoded0:[ProgressUpdateStreamSummary]? = nil
        if let progressUpdateStreamSummaryListContainer = progressUpdateStreamSummaryListContainer {
            progressUpdateStreamSummaryListDecoded0 = [ProgressUpdateStreamSummary]()
            for structure0 in progressUpdateStreamSummaryListContainer {
                if let structure0 = structure0 {
                    progressUpdateStreamSummaryListDecoded0?.append(structure0)
                }
            }
        }
        progressUpdateStreamSummaryList = progressUpdateStreamSummaryListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}