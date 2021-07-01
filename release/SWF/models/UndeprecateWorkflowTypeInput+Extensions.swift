// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UndeprecateWorkflowTypeInputHeadersMiddleware: Middleware {
    public let id: String = "UndeprecateWorkflowTypeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UndeprecateWorkflowTypeInput>,
                  next: H) -> Swift.Result<OperationOutput<UndeprecateWorkflowTypeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UndeprecateWorkflowTypeInput>
    public typealias MOutput = OperationOutput<UndeprecateWorkflowTypeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UndeprecateWorkflowTypeOutputError>
}

public struct UndeprecateWorkflowTypeInputQueryItemMiddleware: Middleware {
    public let id: String = "UndeprecateWorkflowTypeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UndeprecateWorkflowTypeInput>,
                  next: H) -> Swift.Result<OperationOutput<UndeprecateWorkflowTypeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UndeprecateWorkflowTypeInput>
    public typealias MOutput = OperationOutput<UndeprecateWorkflowTypeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UndeprecateWorkflowTypeOutputError>
}

public struct UndeprecateWorkflowTypeInputBodyMiddleware: Middleware {
    public let id: String = "UndeprecateWorkflowTypeInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UndeprecateWorkflowTypeInput>,
                  next: H) -> Swift.Result<OperationOutput<UndeprecateWorkflowTypeOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UndeprecateWorkflowTypeInput>
    public typealias MOutput = OperationOutput<UndeprecateWorkflowTypeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UndeprecateWorkflowTypeOutputError>
}

extension UndeprecateWorkflowTypeInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domain
        case workflowType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let domain = domain {
            try encodeContainer.encode(domain, forKey: .domain)
        }
        if let workflowType = workflowType {
            try encodeContainer.encode(workflowType, forKey: .workflowType)
        }
    }
}