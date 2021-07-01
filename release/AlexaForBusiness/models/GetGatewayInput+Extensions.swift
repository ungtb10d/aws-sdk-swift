// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetGatewayInputHeadersMiddleware: Middleware {
    public let id: String = "GetGatewayInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetGatewayInput>,
                  next: H) -> Swift.Result<OperationOutput<GetGatewayOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetGatewayInput>
    public typealias MOutput = OperationOutput<GetGatewayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetGatewayOutputError>
}

public struct GetGatewayInputQueryItemMiddleware: Middleware {
    public let id: String = "GetGatewayInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetGatewayInput>,
                  next: H) -> Swift.Result<OperationOutput<GetGatewayOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetGatewayInput>
    public typealias MOutput = OperationOutput<GetGatewayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetGatewayOutputError>
}

public struct GetGatewayInputBodyMiddleware: Middleware {
    public let id: String = "GetGatewayInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetGatewayInput>,
                  next: H) -> Swift.Result<OperationOutput<GetGatewayOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetGatewayInput>
    public typealias MOutput = OperationOutput<GetGatewayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetGatewayOutputError>
}

extension GetGatewayInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case gatewayArn = "GatewayArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let gatewayArn = gatewayArn {
            try encodeContainer.encode(gatewayArn, forKey: .gatewayArn)
        }
    }
}