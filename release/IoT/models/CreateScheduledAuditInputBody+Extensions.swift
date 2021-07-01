// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateScheduledAuditInputBody: Equatable {
    public let frequency: AuditFrequency?
    public let dayOfMonth: String?
    public let dayOfWeek: DayOfWeek?
    public let targetCheckNames: [String]?
    public let tags: [Tag]?
}

extension CreateScheduledAuditInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dayOfMonth
        case dayOfWeek
        case frequency
        case tags
        case targetCheckNames
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let frequencyDecoded = try containerValues.decodeIfPresent(AuditFrequency.self, forKey: .frequency)
        frequency = frequencyDecoded
        let dayOfMonthDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dayOfMonth)
        dayOfMonth = dayOfMonthDecoded
        let dayOfWeekDecoded = try containerValues.decodeIfPresent(DayOfWeek.self, forKey: .dayOfWeek)
        dayOfWeek = dayOfWeekDecoded
        let targetCheckNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .targetCheckNames)
        var targetCheckNamesDecoded0:[String]? = nil
        if let targetCheckNamesContainer = targetCheckNamesContainer {
            targetCheckNamesDecoded0 = [String]()
            for string0 in targetCheckNamesContainer {
                if let string0 = string0 {
                    targetCheckNamesDecoded0?.append(string0)
                }
            }
        }
        targetCheckNames = targetCheckNamesDecoded0
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}