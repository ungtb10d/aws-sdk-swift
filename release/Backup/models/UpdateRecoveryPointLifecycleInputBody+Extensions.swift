// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateRecoveryPointLifecycleInputBody: Equatable {
    public let lifecycle: Lifecycle?
}

extension UpdateRecoveryPointLifecycleInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case lifecycle = "Lifecycle"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lifecycleDecoded = try containerValues.decodeIfPresent(Lifecycle.self, forKey: .lifecycle)
        lifecycle = lifecycleDecoded
    }
}