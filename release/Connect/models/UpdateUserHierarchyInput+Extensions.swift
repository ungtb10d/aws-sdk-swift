// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateUserHierarchyInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateUserHierarchyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserHierarchyInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateUserHierarchyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateUserHierarchyInput>
    public typealias MOutput = OperationOutput<UpdateUserHierarchyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateUserHierarchyOutputError>
}

public struct UpdateUserHierarchyInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateUserHierarchyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserHierarchyInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateUserHierarchyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateUserHierarchyInput>
    public typealias MOutput = OperationOutput<UpdateUserHierarchyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateUserHierarchyOutputError>
}

public struct UpdateUserHierarchyInputBodyMiddleware: Middleware {
    public let id: String = "UpdateUserHierarchyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserHierarchyInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateUserHierarchyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateUserHierarchyInput>
    public typealias MOutput = OperationOutput<UpdateUserHierarchyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateUserHierarchyOutputError>
}

extension UpdateUserHierarchyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case hierarchyGroupId = "HierarchyGroupId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let hierarchyGroupId = hierarchyGroupId {
            try encodeContainer.encode(hierarchyGroupId, forKey: .hierarchyGroupId)
        }
    }
}