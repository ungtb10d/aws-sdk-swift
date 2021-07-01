// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ChangeServerLifeCycleStateSourceServerLifecycle: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case state
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let state = state {
            try encodeContainer.encode(state.rawValue, forKey: .state)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let stateDecoded = try containerValues.decodeIfPresent(ChangeServerLifeCycleStateSourceServerLifecycleState.self, forKey: .state)
        state = stateDecoded
    }
}