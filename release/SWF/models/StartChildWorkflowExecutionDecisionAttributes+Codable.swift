// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StartChildWorkflowExecutionDecisionAttributes: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case childPolicy
        case control
        case executionStartToCloseTimeout
        case input
        case lambdaRole
        case tagList
        case taskList
        case taskPriority
        case taskStartToCloseTimeout
        case workflowId
        case workflowType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let childPolicy = childPolicy {
            try encodeContainer.encode(childPolicy.rawValue, forKey: .childPolicy)
        }
        if let control = control {
            try encodeContainer.encode(control, forKey: .control)
        }
        if let executionStartToCloseTimeout = executionStartToCloseTimeout {
            try encodeContainer.encode(executionStartToCloseTimeout, forKey: .executionStartToCloseTimeout)
        }
        if let input = input {
            try encodeContainer.encode(input, forKey: .input)
        }
        if let lambdaRole = lambdaRole {
            try encodeContainer.encode(lambdaRole, forKey: .lambdaRole)
        }
        if let tagList = tagList {
            var tagListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tagList)
            for taglist0 in tagList {
                try tagListContainer.encode(taglist0)
            }
        }
        if let taskList = taskList {
            try encodeContainer.encode(taskList, forKey: .taskList)
        }
        if let taskPriority = taskPriority {
            try encodeContainer.encode(taskPriority, forKey: .taskPriority)
        }
        if let taskStartToCloseTimeout = taskStartToCloseTimeout {
            try encodeContainer.encode(taskStartToCloseTimeout, forKey: .taskStartToCloseTimeout)
        }
        if let workflowId = workflowId {
            try encodeContainer.encode(workflowId, forKey: .workflowId)
        }
        if let workflowType = workflowType {
            try encodeContainer.encode(workflowType, forKey: .workflowType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let workflowTypeDecoded = try containerValues.decodeIfPresent(WorkflowType.self, forKey: .workflowType)
        workflowType = workflowTypeDecoded
        let workflowIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .workflowId)
        workflowId = workflowIdDecoded
        let controlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .control)
        control = controlDecoded
        let inputDecoded = try containerValues.decodeIfPresent(String.self, forKey: .input)
        input = inputDecoded
        let executionStartToCloseTimeoutDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executionStartToCloseTimeout)
        executionStartToCloseTimeout = executionStartToCloseTimeoutDecoded
        let taskListDecoded = try containerValues.decodeIfPresent(TaskList.self, forKey: .taskList)
        taskList = taskListDecoded
        let taskPriorityDecoded = try containerValues.decodeIfPresent(String.self, forKey: .taskPriority)
        taskPriority = taskPriorityDecoded
        let taskStartToCloseTimeoutDecoded = try containerValues.decodeIfPresent(String.self, forKey: .taskStartToCloseTimeout)
        taskStartToCloseTimeout = taskStartToCloseTimeoutDecoded
        let childPolicyDecoded = try containerValues.decodeIfPresent(ChildPolicy.self, forKey: .childPolicy)
        childPolicy = childPolicyDecoded
        let tagListContainer = try containerValues.decodeIfPresent([String?].self, forKey: .tagList)
        var tagListDecoded0:[String]? = nil
        if let tagListContainer = tagListContainer {
            tagListDecoded0 = [String]()
            for string0 in tagListContainer {
                if let string0 = string0 {
                    tagListDecoded0?.append(string0)
                }
            }
        }
        tagList = tagListDecoded0
        let lambdaRoleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lambdaRole)
        lambdaRole = lambdaRoleDecoded
    }
}