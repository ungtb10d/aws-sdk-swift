// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateSegmentInputBody: Equatable {
    public let writeSegmentRequest: WriteSegmentRequest?
}

extension UpdateSegmentInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case writeSegmentRequest = "WriteSegmentRequest"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let writeSegmentRequestDecoded = try containerValues.decodeIfPresent(WriteSegmentRequest.self, forKey: .writeSegmentRequest)
        writeSegmentRequest = writeSegmentRequestDecoded
    }
}