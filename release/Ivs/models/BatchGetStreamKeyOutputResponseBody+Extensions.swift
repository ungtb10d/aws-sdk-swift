// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchGetStreamKeyOutputResponseBody: Equatable {
    public let streamKeys: [StreamKey]?
    public let errors: [BatchError]?
}

extension BatchGetStreamKeyOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case errors
        case streamKeys
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamKeysContainer = try containerValues.decodeIfPresent([StreamKey?].self, forKey: .streamKeys)
        var streamKeysDecoded0:[StreamKey]? = nil
        if let streamKeysContainer = streamKeysContainer {
            streamKeysDecoded0 = [StreamKey]()
            for structure0 in streamKeysContainer {
                if let structure0 = structure0 {
                    streamKeysDecoded0?.append(structure0)
                }
            }
        }
        streamKeys = streamKeysDecoded0
        let errorsContainer = try containerValues.decodeIfPresent([BatchError?].self, forKey: .errors)
        var errorsDecoded0:[BatchError]? = nil
        if let errorsContainer = errorsContainer {
            errorsDecoded0 = [BatchError]()
            for structure0 in errorsContainer {
                if let structure0 = structure0 {
                    errorsDecoded0?.append(structure0)
                }
            }
        }
        errors = errorsDecoded0
    }
}