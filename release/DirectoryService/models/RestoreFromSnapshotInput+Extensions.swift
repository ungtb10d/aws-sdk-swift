// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RestoreFromSnapshotInputHeadersMiddleware: Middleware {
    public let id: String = "RestoreFromSnapshotInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreFromSnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<RestoreFromSnapshotOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RestoreFromSnapshotInput>
    public typealias MOutput = OperationOutput<RestoreFromSnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RestoreFromSnapshotOutputError>
}

public struct RestoreFromSnapshotInputQueryItemMiddleware: Middleware {
    public let id: String = "RestoreFromSnapshotInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreFromSnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<RestoreFromSnapshotOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RestoreFromSnapshotInput>
    public typealias MOutput = OperationOutput<RestoreFromSnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RestoreFromSnapshotOutputError>
}

public struct RestoreFromSnapshotInputBodyMiddleware: Middleware {
    public let id: String = "RestoreFromSnapshotInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreFromSnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<RestoreFromSnapshotOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RestoreFromSnapshotInput>
    public typealias MOutput = OperationOutput<RestoreFromSnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RestoreFromSnapshotOutputError>
}

extension RestoreFromSnapshotInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case snapshotId = "SnapshotId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let snapshotId = snapshotId {
            try encodeContainer.encode(snapshotId, forKey: .snapshotId)
        }
    }
}