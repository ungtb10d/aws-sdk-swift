// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetFunctionOutputResponseBody: Equatable {
    public let functionCode: Data?
}

extension GetFunctionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case functionCode = "FunctionCode"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.functionCode) {
            do {
                let functionCodeDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .functionCode)
                functionCode = functionCodeDecoded
            } catch {
                functionCode = "".data(using: .utf8)
            }
        } else {
            functionCode = nil
        }
    }
}