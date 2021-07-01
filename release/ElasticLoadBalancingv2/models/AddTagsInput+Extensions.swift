// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AddTagsInputHeadersMiddleware: Middleware {
    public let id: String = "AddTagsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddTagsInput>,
                  next: H) -> Swift.Result<OperationOutput<AddTagsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddTagsInput>
    public typealias MOutput = OperationOutput<AddTagsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddTagsOutputError>
}

public struct AddTagsInputQueryItemMiddleware: Middleware {
    public let id: String = "AddTagsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddTagsInput>,
                  next: H) -> Swift.Result<OperationOutput<AddTagsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddTagsInput>
    public typealias MOutput = OperationOutput<AddTagsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddTagsOutputError>
}

public struct AddTagsInputBodyMiddleware: Middleware {
    public let id: String = "AddTagsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddTagsInput>,
                  next: H) -> Swift.Result<OperationOutput<AddTagsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddTagsInput>
    public typealias MOutput = OperationOutput<AddTagsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddTagsOutputError>
}

extension AddTagsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let resourceArns = resourceArns {
            var resourceArnsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("ResourceArns"))
            for (index0, resourcearn0) in resourceArns.enumerated() {
                try resourceArnsContainer.encode(resourcearn0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        if let tags = tags {
            var tagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Tags"))
            for (index0, tag0) in tags.enumerated() {
                try tagsContainer.encode(tag0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("AddTags", forKey:Key("Action"))
        try container.encode("2015-12-01", forKey:Key("Version"))
    }
}