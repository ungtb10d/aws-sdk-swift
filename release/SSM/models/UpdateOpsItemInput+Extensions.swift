// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateOpsItemInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateOpsItemInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateOpsItemInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateOpsItemOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateOpsItemInput>
    public typealias MOutput = OperationOutput<UpdateOpsItemOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateOpsItemOutputError>
}

public struct UpdateOpsItemInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateOpsItemInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateOpsItemInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateOpsItemOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateOpsItemInput>
    public typealias MOutput = OperationOutput<UpdateOpsItemOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateOpsItemOutputError>
}

public struct UpdateOpsItemInputBodyMiddleware: Middleware {
    public let id: String = "UpdateOpsItemInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateOpsItemInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateOpsItemOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateOpsItemInput>
    public typealias MOutput = OperationOutput<UpdateOpsItemOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateOpsItemOutputError>
}

extension UpdateOpsItemInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case actualEndTime = "ActualEndTime"
        case actualStartTime = "ActualStartTime"
        case category = "Category"
        case description = "Description"
        case notifications = "Notifications"
        case operationalData = "OperationalData"
        case operationalDataToDelete = "OperationalDataToDelete"
        case opsItemId = "OpsItemId"
        case plannedEndTime = "PlannedEndTime"
        case plannedStartTime = "PlannedStartTime"
        case priority = "Priority"
        case relatedOpsItems = "RelatedOpsItems"
        case severity = "Severity"
        case status = "Status"
        case title = "Title"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let actualEndTime = actualEndTime {
            try encodeContainer.encode(actualEndTime.timeIntervalSince1970, forKey: .actualEndTime)
        }
        if let actualStartTime = actualStartTime {
            try encodeContainer.encode(actualStartTime.timeIntervalSince1970, forKey: .actualStartTime)
        }
        if let category = category {
            try encodeContainer.encode(category, forKey: .category)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let notifications = notifications {
            var notificationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .notifications)
            for opsitemnotifications0 in notifications {
                try notificationsContainer.encode(opsitemnotifications0)
            }
        }
        if let operationalData = operationalData {
            var operationalDataContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .operationalData)
            for (dictKey0, opsitemoperationaldata0) in operationalData {
                try operationalDataContainer.encode(opsitemoperationaldata0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let operationalDataToDelete = operationalDataToDelete {
            var operationalDataToDeleteContainer = encodeContainer.nestedUnkeyedContainer(forKey: .operationalDataToDelete)
            for opsitemopsdatakeyslist0 in operationalDataToDelete {
                try operationalDataToDeleteContainer.encode(opsitemopsdatakeyslist0)
            }
        }
        if let opsItemId = opsItemId {
            try encodeContainer.encode(opsItemId, forKey: .opsItemId)
        }
        if let plannedEndTime = plannedEndTime {
            try encodeContainer.encode(plannedEndTime.timeIntervalSince1970, forKey: .plannedEndTime)
        }
        if let plannedStartTime = plannedStartTime {
            try encodeContainer.encode(plannedStartTime.timeIntervalSince1970, forKey: .plannedStartTime)
        }
        if let priority = priority {
            try encodeContainer.encode(priority, forKey: .priority)
        }
        if let relatedOpsItems = relatedOpsItems {
            var relatedOpsItemsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .relatedOpsItems)
            for relatedopsitems0 in relatedOpsItems {
                try relatedOpsItemsContainer.encode(relatedopsitems0)
            }
        }
        if let severity = severity {
            try encodeContainer.encode(severity, forKey: .severity)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let title = title {
            try encodeContainer.encode(title, forKey: .title)
        }
    }
}