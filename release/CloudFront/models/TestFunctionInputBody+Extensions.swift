// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct TestFunctionInputBody: Equatable {
    public let stage: FunctionStage?
    public let eventObject: Data?
}

extension TestFunctionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case eventObject = "EventObject"
        case stage = "Stage"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let stageDecoded = try containerValues.decodeIfPresent(FunctionStage.self, forKey: .stage)
        stage = stageDecoded
        if containerValues.contains(.eventObject) {
            do {
                let eventObjectDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .eventObject)
                eventObject = eventObjectDecoded
            } catch {
                eventObject = "".data(using: .utf8)
            }
        } else {
            eventObject = nil
        }
    }
}