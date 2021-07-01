// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CountOpenWorkflowExecutionsInputHeadersMiddleware: Middleware {
    public let id: String = "CountOpenWorkflowExecutionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CountOpenWorkflowExecutionsInput>,
                  next: H) -> Swift.Result<OperationOutput<CountOpenWorkflowExecutionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CountOpenWorkflowExecutionsInput>
    public typealias MOutput = OperationOutput<CountOpenWorkflowExecutionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CountOpenWorkflowExecutionsOutputError>
}

public struct CountOpenWorkflowExecutionsInputQueryItemMiddleware: Middleware {
    public let id: String = "CountOpenWorkflowExecutionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CountOpenWorkflowExecutionsInput>,
                  next: H) -> Swift.Result<OperationOutput<CountOpenWorkflowExecutionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CountOpenWorkflowExecutionsInput>
    public typealias MOutput = OperationOutput<CountOpenWorkflowExecutionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CountOpenWorkflowExecutionsOutputError>
}

public struct CountOpenWorkflowExecutionsInputBodyMiddleware: Middleware {
    public let id: String = "CountOpenWorkflowExecutionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CountOpenWorkflowExecutionsInput>,
                  next: H) -> Swift.Result<OperationOutput<CountOpenWorkflowExecutionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CountOpenWorkflowExecutionsInput>
    public typealias MOutput = OperationOutput<CountOpenWorkflowExecutionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CountOpenWorkflowExecutionsOutputError>
}

extension CountOpenWorkflowExecutionsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domain
        case executionFilter
        case startTimeFilter
        case tagFilter
        case typeFilter
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let domain = domain {
            try encodeContainer.encode(domain, forKey: .domain)
        }
        if let executionFilter = executionFilter {
            try encodeContainer.encode(executionFilter, forKey: .executionFilter)
        }
        if let startTimeFilter = startTimeFilter {
            try encodeContainer.encode(startTimeFilter, forKey: .startTimeFilter)
        }
        if let tagFilter = tagFilter {
            try encodeContainer.encode(tagFilter, forKey: .tagFilter)
        }
        if let typeFilter = typeFilter {
            try encodeContainer.encode(typeFilter, forKey: .typeFilter)
        }
    }
}