// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ImprovementSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case improvementPlanUrl = "ImprovementPlanUrl"
        case pillarId = "PillarId"
        case questionId = "QuestionId"
        case questionTitle = "QuestionTitle"
        case risk = "Risk"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let improvementPlanUrl = improvementPlanUrl {
            try encodeContainer.encode(improvementPlanUrl, forKey: .improvementPlanUrl)
        }
        if let pillarId = pillarId {
            try encodeContainer.encode(pillarId, forKey: .pillarId)
        }
        if let questionId = questionId {
            try encodeContainer.encode(questionId, forKey: .questionId)
        }
        if let questionTitle = questionTitle {
            try encodeContainer.encode(questionTitle, forKey: .questionTitle)
        }
        if let risk = risk {
            try encodeContainer.encode(risk.rawValue, forKey: .risk)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let questionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .questionId)
        questionId = questionIdDecoded
        let pillarIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pillarId)
        pillarId = pillarIdDecoded
        let questionTitleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .questionTitle)
        questionTitle = questionTitleDecoded
        let riskDecoded = try containerValues.decodeIfPresent(Risk.self, forKey: .risk)
        risk = riskDecoded
        let improvementPlanUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .improvementPlanUrl)
        improvementPlanUrl = improvementPlanUrlDecoded
    }
}