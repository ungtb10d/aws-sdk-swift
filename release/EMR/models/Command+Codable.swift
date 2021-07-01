// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Command: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case args = "Args"
        case name = "Name"
        case scriptPath = "ScriptPath"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let args = args {
            var argsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .args)
            for stringlist0 in args {
                try argsContainer.encode(stringlist0)
            }
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let scriptPath = scriptPath {
            try encodeContainer.encode(scriptPath, forKey: .scriptPath)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let scriptPathDecoded = try containerValues.decodeIfPresent(String.self, forKey: .scriptPath)
        scriptPath = scriptPathDecoded
        let argsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .args)
        var argsDecoded0:[String]? = nil
        if let argsContainer = argsContainer {
            argsDecoded0 = [String]()
            for string0 in argsContainer {
                if let string0 = string0 {
                    argsDecoded0?.append(string0)
                }
            }
        }
        args = argsDecoded0
    }
}