// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateEndpointsBatchInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateEndpointsBatchInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateEndpointsBatchInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateEndpointsBatchOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateEndpointsBatchInput>
    public typealias MOutput = OperationOutput<UpdateEndpointsBatchOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateEndpointsBatchOutputError>
}

public struct UpdateEndpointsBatchInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateEndpointsBatchInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateEndpointsBatchInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateEndpointsBatchOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateEndpointsBatchInput>
    public typealias MOutput = OperationOutput<UpdateEndpointsBatchOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateEndpointsBatchOutputError>
}

public struct UpdateEndpointsBatchInputBodyMiddleware: Middleware {
    public let id: String = "UpdateEndpointsBatchInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateEndpointsBatchInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateEndpointsBatchOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let endpointBatchRequest = input.operationInput.endpointBatchRequest {
            do {
                let encoder = context.getEncoder()
                let data = try encoder.encode(endpointBatchRequest)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            } catch let err {
                return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateEndpointsBatchInput>
    public typealias MOutput = OperationOutput<UpdateEndpointsBatchOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateEndpointsBatchOutputError>
}

extension UpdateEndpointsBatchInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endpointBatchRequest = "EndpointBatchRequest"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endpointBatchRequest = endpointBatchRequest {
            try encodeContainer.encode(endpointBatchRequest, forKey: .endpointBatchRequest)
        }
    }
}