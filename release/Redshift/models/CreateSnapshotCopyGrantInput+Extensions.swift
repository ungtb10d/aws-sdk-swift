// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateSnapshotCopyGrantInputHeadersMiddleware: Middleware {
    public let id: String = "CreateSnapshotCopyGrantInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateSnapshotCopyGrantInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateSnapshotCopyGrantOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateSnapshotCopyGrantInput>
    public typealias MOutput = OperationOutput<CreateSnapshotCopyGrantOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateSnapshotCopyGrantOutputError>
}

public struct CreateSnapshotCopyGrantInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateSnapshotCopyGrantInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateSnapshotCopyGrantInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateSnapshotCopyGrantOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateSnapshotCopyGrantInput>
    public typealias MOutput = OperationOutput<CreateSnapshotCopyGrantOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateSnapshotCopyGrantOutputError>
}

public struct CreateSnapshotCopyGrantInputBodyMiddleware: Middleware {
    public let id: String = "CreateSnapshotCopyGrantInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateSnapshotCopyGrantInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateSnapshotCopyGrantOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateSnapshotCopyGrantInput>
    public typealias MOutput = OperationOutput<CreateSnapshotCopyGrantOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateSnapshotCopyGrantOutputError>
}

extension CreateSnapshotCopyGrantInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let kmsKeyId = kmsKeyId {
            try container.encode(kmsKeyId, forKey: Key("KmsKeyId"))
        }
        if let snapshotCopyGrantName = snapshotCopyGrantName {
            try container.encode(snapshotCopyGrantName, forKey: Key("SnapshotCopyGrantName"))
        }
        if let tags = tags {
            var tagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Tags"))
            for (index0, tag0) in tags.enumerated() {
                try tagsContainer.encode(tag0, forKey: Key("Tag.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("CreateSnapshotCopyGrant", forKey:Key("Action"))
        try container.encode("2012-12-01", forKey:Key("Version"))
    }
}