// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetContainerPolicyInputHeadersMiddleware: Middleware {
    public let id: String = "GetContainerPolicyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetContainerPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<GetContainerPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetContainerPolicyInput>
    public typealias MOutput = OperationOutput<GetContainerPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetContainerPolicyOutputError>
}

public struct GetContainerPolicyInputQueryItemMiddleware: Middleware {
    public let id: String = "GetContainerPolicyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetContainerPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<GetContainerPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetContainerPolicyInput>
    public typealias MOutput = OperationOutput<GetContainerPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetContainerPolicyOutputError>
}

public struct GetContainerPolicyInputBodyMiddleware: Middleware {
    public let id: String = "GetContainerPolicyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetContainerPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<GetContainerPolicyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetContainerPolicyInput>
    public typealias MOutput = OperationOutput<GetContainerPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetContainerPolicyOutputError>
}

extension GetContainerPolicyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case containerName = "ContainerName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let containerName = containerName {
            try encodeContainer.encode(containerName, forKey: .containerName)
        }
    }
}