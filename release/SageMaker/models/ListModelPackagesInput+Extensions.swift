// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListModelPackagesInputHeadersMiddleware: Middleware {
    public let id: String = "ListModelPackagesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListModelPackagesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListModelPackagesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListModelPackagesInput>
    public typealias MOutput = OperationOutput<ListModelPackagesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListModelPackagesOutputError>
}

public struct ListModelPackagesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListModelPackagesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListModelPackagesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListModelPackagesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListModelPackagesInput>
    public typealias MOutput = OperationOutput<ListModelPackagesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListModelPackagesOutputError>
}

public struct ListModelPackagesInputBodyMiddleware: Middleware {
    public let id: String = "ListModelPackagesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListModelPackagesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListModelPackagesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListModelPackagesInput>
    public typealias MOutput = OperationOutput<ListModelPackagesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListModelPackagesOutputError>
}

extension ListModelPackagesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationTimeAfter = "CreationTimeAfter"
        case creationTimeBefore = "CreationTimeBefore"
        case maxResults = "MaxResults"
        case modelApprovalStatus = "ModelApprovalStatus"
        case modelPackageGroupName = "ModelPackageGroupName"
        case modelPackageType = "ModelPackageType"
        case nameContains = "NameContains"
        case nextToken = "NextToken"
        case sortBy = "SortBy"
        case sortOrder = "SortOrder"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let creationTimeAfter = creationTimeAfter {
            try encodeContainer.encode(creationTimeAfter.timeIntervalSince1970, forKey: .creationTimeAfter)
        }
        if let creationTimeBefore = creationTimeBefore {
            try encodeContainer.encode(creationTimeBefore.timeIntervalSince1970, forKey: .creationTimeBefore)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let modelApprovalStatus = modelApprovalStatus {
            try encodeContainer.encode(modelApprovalStatus.rawValue, forKey: .modelApprovalStatus)
        }
        if let modelPackageGroupName = modelPackageGroupName {
            try encodeContainer.encode(modelPackageGroupName, forKey: .modelPackageGroupName)
        }
        if let modelPackageType = modelPackageType {
            try encodeContainer.encode(modelPackageType.rawValue, forKey: .modelPackageType)
        }
        if let nameContains = nameContains {
            try encodeContainer.encode(nameContains, forKey: .nameContains)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let sortBy = sortBy {
            try encodeContainer.encode(sortBy.rawValue, forKey: .sortBy)
        }
        if let sortOrder = sortOrder {
            try encodeContainer.encode(sortOrder.rawValue, forKey: .sortOrder)
        }
    }
}