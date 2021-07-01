// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateRevisionInputHeadersMiddleware: Middleware {
    public let id: String = "CreateRevisionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateRevisionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateRevisionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateRevisionInput>
    public typealias MOutput = OperationOutput<CreateRevisionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateRevisionOutputError>
}

public struct CreateRevisionInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateRevisionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateRevisionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateRevisionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateRevisionInput>
    public typealias MOutput = OperationOutput<CreateRevisionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateRevisionOutputError>
}

public struct CreateRevisionInputBodyMiddleware: Middleware {
    public let id: String = "CreateRevisionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateRevisionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateRevisionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateRevisionInput>
    public typealias MOutput = OperationOutput<CreateRevisionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateRevisionOutputError>
}

extension CreateRevisionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case comment = "Comment"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let comment = comment {
            try encodeContainer.encode(comment, forKey: .comment)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, mapof__string0) in tags {
                try tagsContainer.encode(mapof__string0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}