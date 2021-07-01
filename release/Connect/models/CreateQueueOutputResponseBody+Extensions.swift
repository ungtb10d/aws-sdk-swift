// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateQueueOutputResponseBody: Equatable {
    public let queueArn: String?
    public let queueId: String?
}

extension CreateQueueOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case queueArn = "QueueArn"
        case queueId = "QueueId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queueArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queueArn)
        queueArn = queueArnDecoded
        let queueIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queueId)
        queueId = queueIdDecoded
    }
}