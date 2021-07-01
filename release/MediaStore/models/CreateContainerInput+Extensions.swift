// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateContainerInputHeadersMiddleware: Middleware {
    public let id: String = "CreateContainerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateContainerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateContainerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateContainerInput>
    public typealias MOutput = OperationOutput<CreateContainerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateContainerOutputError>
}

public struct CreateContainerInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateContainerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateContainerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateContainerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateContainerInput>
    public typealias MOutput = OperationOutput<CreateContainerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateContainerOutputError>
}

public struct CreateContainerInputBodyMiddleware: Middleware {
    public let id: String = "CreateContainerInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateContainerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateContainerOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateContainerInput>
    public typealias MOutput = OperationOutput<CreateContainerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateContainerOutputError>
}

extension CreateContainerInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case containerName = "ContainerName"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let containerName = containerName {
            try encodeContainer.encode(containerName, forKey: .containerName)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
    }
}