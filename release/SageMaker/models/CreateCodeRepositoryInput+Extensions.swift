// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateCodeRepositoryInputHeadersMiddleware: Middleware {
    public let id: String = "CreateCodeRepositoryInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCodeRepositoryInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCodeRepositoryOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateCodeRepositoryInput>
    public typealias MOutput = OperationOutput<CreateCodeRepositoryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCodeRepositoryOutputError>
}

public struct CreateCodeRepositoryInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateCodeRepositoryInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCodeRepositoryInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCodeRepositoryOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateCodeRepositoryInput>
    public typealias MOutput = OperationOutput<CreateCodeRepositoryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCodeRepositoryOutputError>
}

public struct CreateCodeRepositoryInputBodyMiddleware: Middleware {
    public let id: String = "CreateCodeRepositoryInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCodeRepositoryInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCodeRepositoryOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateCodeRepositoryInput>
    public typealias MOutput = OperationOutput<CreateCodeRepositoryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCodeRepositoryOutputError>
}

extension CreateCodeRepositoryInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case codeRepositoryName = "CodeRepositoryName"
        case gitConfig = "GitConfig"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let codeRepositoryName = codeRepositoryName {
            try encodeContainer.encode(codeRepositoryName, forKey: .codeRepositoryName)
        }
        if let gitConfig = gitConfig {
            try encodeContainer.encode(gitConfig, forKey: .gitConfig)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
    }
}