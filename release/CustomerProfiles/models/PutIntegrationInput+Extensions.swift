// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutIntegrationInputHeadersMiddleware: Middleware {
    public let id: String = "PutIntegrationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutIntegrationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutIntegrationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutIntegrationInput>
    public typealias MOutput = OperationOutput<PutIntegrationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutIntegrationOutputError>
}

public struct PutIntegrationInputQueryItemMiddleware: Middleware {
    public let id: String = "PutIntegrationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutIntegrationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutIntegrationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutIntegrationInput>
    public typealias MOutput = OperationOutput<PutIntegrationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutIntegrationOutputError>
}

public struct PutIntegrationInputBodyMiddleware: Middleware {
    public let id: String = "PutIntegrationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutIntegrationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutIntegrationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutIntegrationInput>
    public typealias MOutput = OperationOutput<PutIntegrationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutIntegrationOutputError>
}

extension PutIntegrationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case flowDefinition = "FlowDefinition"
        case objectTypeName = "ObjectTypeName"
        case tags = "Tags"
        case uri = "Uri"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let flowDefinition = flowDefinition {
            try encodeContainer.encode(flowDefinition, forKey: .flowDefinition)
        }
        if let objectTypeName = objectTypeName {
            try encodeContainer.encode(objectTypeName, forKey: .objectTypeName)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let uri = uri {
            try encodeContainer.encode(uri, forKey: .uri)
        }
    }
}