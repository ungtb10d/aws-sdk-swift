// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteRepositoryInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteRepositoryInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteRepositoryInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteRepositoryOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteRepositoryInput>
    public typealias MOutput = OperationOutput<DeleteRepositoryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteRepositoryOutputError>
}

public struct DeleteRepositoryInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteRepositoryInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteRepositoryInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteRepositoryOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteRepositoryInput>
    public typealias MOutput = OperationOutput<DeleteRepositoryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteRepositoryOutputError>
}

public struct DeleteRepositoryInputBodyMiddleware: Middleware {
    public let id: String = "DeleteRepositoryInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteRepositoryInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteRepositoryOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteRepositoryInput>
    public typealias MOutput = OperationOutput<DeleteRepositoryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteRepositoryOutputError>
}

extension DeleteRepositoryInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case repositoryName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let repositoryName = repositoryName {
            try encodeContainer.encode(repositoryName, forKey: .repositoryName)
        }
    }
}