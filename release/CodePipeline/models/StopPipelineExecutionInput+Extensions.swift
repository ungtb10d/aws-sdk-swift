// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopPipelineExecutionInputHeadersMiddleware: Middleware {
    public let id: String = "StopPipelineExecutionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopPipelineExecutionInput>,
                  next: H) -> Swift.Result<OperationOutput<StopPipelineExecutionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopPipelineExecutionInput>
    public typealias MOutput = OperationOutput<StopPipelineExecutionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopPipelineExecutionOutputError>
}

public struct StopPipelineExecutionInputQueryItemMiddleware: Middleware {
    public let id: String = "StopPipelineExecutionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopPipelineExecutionInput>,
                  next: H) -> Swift.Result<OperationOutput<StopPipelineExecutionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopPipelineExecutionInput>
    public typealias MOutput = OperationOutput<StopPipelineExecutionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopPipelineExecutionOutputError>
}

public struct StopPipelineExecutionInputBodyMiddleware: Middleware {
    public let id: String = "StopPipelineExecutionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopPipelineExecutionInput>,
                  next: H) -> Swift.Result<OperationOutput<StopPipelineExecutionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StopPipelineExecutionInput>
    public typealias MOutput = OperationOutput<StopPipelineExecutionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopPipelineExecutionOutputError>
}

extension StopPipelineExecutionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case abandon
        case pipelineExecutionId
        case pipelineName
        case reason
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if abandon != false {
            try encodeContainer.encode(abandon, forKey: .abandon)
        }
        if let pipelineExecutionId = pipelineExecutionId {
            try encodeContainer.encode(pipelineExecutionId, forKey: .pipelineExecutionId)
        }
        if let pipelineName = pipelineName {
            try encodeContainer.encode(pipelineName, forKey: .pipelineName)
        }
        if let reason = reason {
            try encodeContainer.encode(reason, forKey: .reason)
        }
    }
}