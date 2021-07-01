// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResolvedTargets: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case parameterValues = "ParameterValues"
        case truncated = "Truncated"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let parameterValues = parameterValues {
            var parameterValuesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .parameterValues)
            for targetparameterlist0 in parameterValues {
                try parameterValuesContainer.encode(targetparameterlist0)
            }
        }
        if truncated != false {
            try encodeContainer.encode(truncated, forKey: .truncated)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let parameterValuesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .parameterValues)
        var parameterValuesDecoded0:[String]? = nil
        if let parameterValuesContainer = parameterValuesContainer {
            parameterValuesDecoded0 = [String]()
            for string0 in parameterValuesContainer {
                if let string0 = string0 {
                    parameterValuesDecoded0?.append(string0)
                }
            }
        }
        parameterValues = parameterValuesDecoded0
        let truncatedDecoded = try containerValues.decode(Bool.self, forKey: .truncated)
        truncated = truncatedDecoded
    }
}