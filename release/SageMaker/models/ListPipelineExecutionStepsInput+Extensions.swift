// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListPipelineExecutionStepsInputHeadersMiddleware: Middleware {
    public let id: String = "ListPipelineExecutionStepsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPipelineExecutionStepsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPipelineExecutionStepsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPipelineExecutionStepsInput>
    public typealias MOutput = OperationOutput<ListPipelineExecutionStepsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPipelineExecutionStepsOutputError>
}

public struct ListPipelineExecutionStepsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListPipelineExecutionStepsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPipelineExecutionStepsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPipelineExecutionStepsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPipelineExecutionStepsInput>
    public typealias MOutput = OperationOutput<ListPipelineExecutionStepsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPipelineExecutionStepsOutputError>
}

public struct ListPipelineExecutionStepsInputBodyMiddleware: Middleware {
    public let id: String = "ListPipelineExecutionStepsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPipelineExecutionStepsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPipelineExecutionStepsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListPipelineExecutionStepsInput>
    public typealias MOutput = OperationOutput<ListPipelineExecutionStepsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPipelineExecutionStepsOutputError>
}

extension ListPipelineExecutionStepsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case pipelineExecutionArn = "PipelineExecutionArn"
        case sortOrder = "SortOrder"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let pipelineExecutionArn = pipelineExecutionArn {
            try encodeContainer.encode(pipelineExecutionArn, forKey: .pipelineExecutionArn)
        }
        if let sortOrder = sortOrder {
            try encodeContainer.encode(sortOrder.rawValue, forKey: .sortOrder)
        }
    }
}