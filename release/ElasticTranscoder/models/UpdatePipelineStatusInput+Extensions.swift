// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdatePipelineStatusInputHeadersMiddleware: Middleware {
    public let id: String = "UpdatePipelineStatusInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdatePipelineStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdatePipelineStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdatePipelineStatusInput>
    public typealias MOutput = OperationOutput<UpdatePipelineStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdatePipelineStatusOutputError>
}

public struct UpdatePipelineStatusInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdatePipelineStatusInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdatePipelineStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdatePipelineStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdatePipelineStatusInput>
    public typealias MOutput = OperationOutput<UpdatePipelineStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdatePipelineStatusOutputError>
}

public struct UpdatePipelineStatusInputBodyMiddleware: Middleware {
    public let id: String = "UpdatePipelineStatusInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdatePipelineStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdatePipelineStatusOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdatePipelineStatusInput>
    public typealias MOutput = OperationOutput<UpdatePipelineStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdatePipelineStatusOutputError>
}

extension UpdatePipelineStatusInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
    }
}