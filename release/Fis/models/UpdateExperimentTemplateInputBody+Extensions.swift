// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateExperimentTemplateInputBody: Equatable {
    public let description: String?
    public let stopConditions: [UpdateExperimentTemplateStopConditionInput]?
    public let targets: [String:UpdateExperimentTemplateTargetInput]?
    public let actions: [String:UpdateExperimentTemplateActionInputItem]?
    public let roleArn: String?
}

extension UpdateExperimentTemplateInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case actions
        case description
        case roleArn
        case stopConditions
        case targets
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let stopConditionsContainer = try containerValues.decodeIfPresent([UpdateExperimentTemplateStopConditionInput?].self, forKey: .stopConditions)
        var stopConditionsDecoded0:[UpdateExperimentTemplateStopConditionInput]? = nil
        if let stopConditionsContainer = stopConditionsContainer {
            stopConditionsDecoded0 = [UpdateExperimentTemplateStopConditionInput]()
            for structure0 in stopConditionsContainer {
                if let structure0 = structure0 {
                    stopConditionsDecoded0?.append(structure0)
                }
            }
        }
        stopConditions = stopConditionsDecoded0
        let targetsContainer = try containerValues.decodeIfPresent([String: UpdateExperimentTemplateTargetInput?].self, forKey: .targets)
        var targetsDecoded0: [String:UpdateExperimentTemplateTargetInput]? = nil
        if let targetsContainer = targetsContainer {
            targetsDecoded0 = [String:UpdateExperimentTemplateTargetInput]()
            for (key0, updateexperimenttemplatetargetinput0) in targetsContainer {
                if let updateexperimenttemplatetargetinput0 = updateexperimenttemplatetargetinput0 {
                    targetsDecoded0?[key0] = updateexperimenttemplatetargetinput0
                }
            }
        }
        targets = targetsDecoded0
        let actionsContainer = try containerValues.decodeIfPresent([String: UpdateExperimentTemplateActionInputItem?].self, forKey: .actions)
        var actionsDecoded0: [String:UpdateExperimentTemplateActionInputItem]? = nil
        if let actionsContainer = actionsContainer {
            actionsDecoded0 = [String:UpdateExperimentTemplateActionInputItem]()
            for (key0, updateexperimenttemplateactioninputitem0) in actionsContainer {
                if let updateexperimenttemplateactioninputitem0 = updateexperimenttemplateactioninputitem0 {
                    actionsDecoded0?[key0] = updateexperimenttemplateactioninputitem0
                }
            }
        }
        actions = actionsDecoded0
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
    }
}