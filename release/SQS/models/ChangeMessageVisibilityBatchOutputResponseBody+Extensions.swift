// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ChangeMessageVisibilityBatchOutputResponseBody: Equatable {
    public let successful: [ChangeMessageVisibilityBatchResultEntry]?
    public let failed: [BatchResultErrorEntry]?
}

extension ChangeMessageVisibilityBatchOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case failed = "BatchResultErrorEntry"
        case successful = "ChangeMessageVisibilityBatchResultEntry"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ChangeMessageVisibilityBatchResult"))
        if containerValues.contains(.successful) {
            let successfulWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .successful)
            if successfulWrappedContainer != nil {
                let successfulContainer = try containerValues.decodeIfPresent([ChangeMessageVisibilityBatchResultEntry].self, forKey: .successful)
                var successfulBuffer:[ChangeMessageVisibilityBatchResultEntry]? = nil
                if let successfulContainer = successfulContainer {
                    successfulBuffer = [ChangeMessageVisibilityBatchResultEntry]()
                    for structureContainer0 in successfulContainer {
                        successfulBuffer?.append(structureContainer0)
                    }
                }
                successful = successfulBuffer
            } else {
                successful = []
            }
        } else {
            successful = nil
        }
        if containerValues.contains(.failed) {
            let failedWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .failed)
            if failedWrappedContainer != nil {
                let failedContainer = try containerValues.decodeIfPresent([BatchResultErrorEntry].self, forKey: .failed)
                var failedBuffer:[BatchResultErrorEntry]? = nil
                if let failedContainer = failedContainer {
                    failedBuffer = [BatchResultErrorEntry]()
                    for structureContainer0 in failedContainer {
                        failedBuffer?.append(structureContainer0)
                    }
                }
                failed = failedBuffer
            } else {
                failed = []
            }
        } else {
            failed = nil
        }
    }
}