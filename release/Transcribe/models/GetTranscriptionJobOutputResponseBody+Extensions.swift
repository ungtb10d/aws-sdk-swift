// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetTranscriptionJobOutputResponseBody: Equatable {
    public let transcriptionJob: TranscriptionJob?
}

extension GetTranscriptionJobOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case transcriptionJob = "TranscriptionJob"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let transcriptionJobDecoded = try containerValues.decodeIfPresent(TranscriptionJob.self, forKey: .transcriptionJob)
        transcriptionJob = transcriptionJobDecoded
    }
}