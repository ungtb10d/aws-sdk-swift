// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeChangeSetOutputResponseBody: Equatable {
    public let changeSetName: String?
    public let changeSetId: String?
    public let stackId: String?
    public let stackName: String?
    public let description: String?
    public let parameters: [Parameter]?
    public let creationTime: Date?
    public let executionStatus: ExecutionStatus?
    public let status: ChangeSetStatus?
    public let statusReason: String?
    public let notificationARNs: [String]?
    public let rollbackConfiguration: RollbackConfiguration?
    public let capabilities: [Capability]?
    public let tags: [Tag]?
    public let changes: [Change]?
    public let nextToken: String?
    public let includeNestedStacks: Bool?
    public let parentChangeSetId: String?
    public let rootChangeSetId: String?
}

extension DescribeChangeSetOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case capabilities = "Capabilities"
        case changeSetId = "ChangeSetId"
        case changeSetName = "ChangeSetName"
        case changes = "Changes"
        case creationTime = "CreationTime"
        case description = "Description"
        case executionStatus = "ExecutionStatus"
        case includeNestedStacks = "IncludeNestedStacks"
        case nextToken = "NextToken"
        case notificationARNs = "NotificationARNs"
        case parameters = "Parameters"
        case parentChangeSetId = "ParentChangeSetId"
        case rollbackConfiguration = "RollbackConfiguration"
        case rootChangeSetId = "RootChangeSetId"
        case stackId = "StackId"
        case stackName = "StackName"
        case status = "Status"
        case statusReason = "StatusReason"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeChangeSetResult"))
        let changeSetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .changeSetName)
        changeSetName = changeSetNameDecoded
        let changeSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .changeSetId)
        changeSetId = changeSetIdDecoded
        let stackIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stackId)
        stackId = stackIdDecoded
        let stackNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stackName)
        stackName = stackNameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        if containerValues.contains(.parameters) {
            struct KeyVal0{struct member{}}
            let parametersWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .parameters)
            if let parametersWrappedContainer = parametersWrappedContainer {
                let parametersContainer = try parametersWrappedContainer.decodeIfPresent([Parameter].self, forKey: .member)
                var parametersBuffer:[Parameter]? = nil
                if let parametersContainer = parametersContainer {
                    parametersBuffer = [Parameter]()
                    for structureContainer0 in parametersContainer {
                        parametersBuffer?.append(structureContainer0)
                    }
                }
                parameters = parametersBuffer
            } else {
                parameters = []
            }
        } else {
            parameters = nil
        }
        let creationTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .creationTime)
        var creationTimeBuffer:Date? = nil
        if let creationTimeDecoded = creationTimeDecoded {
            creationTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(creationTimeDecoded, format: .dateTime)
        }
        creationTime = creationTimeBuffer
        let executionStatusDecoded = try containerValues.decodeIfPresent(ExecutionStatus.self, forKey: .executionStatus)
        executionStatus = executionStatusDecoded
        let statusDecoded = try containerValues.decodeIfPresent(ChangeSetStatus.self, forKey: .status)
        status = statusDecoded
        let statusReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statusReason)
        statusReason = statusReasonDecoded
        if containerValues.contains(.notificationARNs) {
            struct KeyVal0{struct member{}}
            let notificationARNsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .notificationARNs)
            if let notificationARNsWrappedContainer = notificationARNsWrappedContainer {
                let notificationARNsContainer = try notificationARNsWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var notificationARNsBuffer:[String]? = nil
                if let notificationARNsContainer = notificationARNsContainer {
                    notificationARNsBuffer = [String]()
                    for stringContainer0 in notificationARNsContainer {
                        notificationARNsBuffer?.append(stringContainer0)
                    }
                }
                notificationARNs = notificationARNsBuffer
            } else {
                notificationARNs = []
            }
        } else {
            notificationARNs = nil
        }
        let rollbackConfigurationDecoded = try containerValues.decodeIfPresent(RollbackConfiguration.self, forKey: .rollbackConfiguration)
        rollbackConfiguration = rollbackConfigurationDecoded
        if containerValues.contains(.capabilities) {
            struct KeyVal0{struct member{}}
            let capabilitiesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .capabilities)
            if let capabilitiesWrappedContainer = capabilitiesWrappedContainer {
                let capabilitiesContainer = try capabilitiesWrappedContainer.decodeIfPresent([Capability].self, forKey: .member)
                var capabilitiesBuffer:[Capability]? = nil
                if let capabilitiesContainer = capabilitiesContainer {
                    capabilitiesBuffer = [Capability]()
                    for stringContainer0 in capabilitiesContainer {
                        capabilitiesBuffer?.append(stringContainer0)
                    }
                }
                capabilities = capabilitiesBuffer
            } else {
                capabilities = []
            }
        } else {
            capabilities = nil
        }
        if containerValues.contains(.tags) {
            struct KeyVal0{struct member{}}
            let tagsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .tags)
            if let tagsWrappedContainer = tagsWrappedContainer {
                let tagsContainer = try tagsWrappedContainer.decodeIfPresent([Tag].self, forKey: .member)
                var tagsBuffer:[Tag]? = nil
                if let tagsContainer = tagsContainer {
                    tagsBuffer = [Tag]()
                    for structureContainer0 in tagsContainer {
                        tagsBuffer?.append(structureContainer0)
                    }
                }
                tags = tagsBuffer
            } else {
                tags = []
            }
        } else {
            tags = nil
        }
        if containerValues.contains(.changes) {
            struct KeyVal0{struct member{}}
            let changesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .changes)
            if let changesWrappedContainer = changesWrappedContainer {
                let changesContainer = try changesWrappedContainer.decodeIfPresent([Change].self, forKey: .member)
                var changesBuffer:[Change]? = nil
                if let changesContainer = changesContainer {
                    changesBuffer = [Change]()
                    for structureContainer0 in changesContainer {
                        changesBuffer?.append(structureContainer0)
                    }
                }
                changes = changesBuffer
            } else {
                changes = []
            }
        } else {
            changes = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let includeNestedStacksDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .includeNestedStacks)
        includeNestedStacks = includeNestedStacksDecoded
        let parentChangeSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parentChangeSetId)
        parentChangeSetId = parentChangeSetIdDecoded
        let rootChangeSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .rootChangeSetId)
        rootChangeSetId = rootChangeSetIdDecoded
    }
}