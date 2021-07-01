// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeliverConfigSnapshotInputHeadersMiddleware: Middleware {
    public let id: String = "DeliverConfigSnapshotInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeliverConfigSnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<DeliverConfigSnapshotOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeliverConfigSnapshotInput>
    public typealias MOutput = OperationOutput<DeliverConfigSnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeliverConfigSnapshotOutputError>
}

public struct DeliverConfigSnapshotInputQueryItemMiddleware: Middleware {
    public let id: String = "DeliverConfigSnapshotInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeliverConfigSnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<DeliverConfigSnapshotOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeliverConfigSnapshotInput>
    public typealias MOutput = OperationOutput<DeliverConfigSnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeliverConfigSnapshotOutputError>
}

public struct DeliverConfigSnapshotInputBodyMiddleware: Middleware {
    public let id: String = "DeliverConfigSnapshotInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeliverConfigSnapshotInput>,
                  next: H) -> Swift.Result<OperationOutput<DeliverConfigSnapshotOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeliverConfigSnapshotInput>
    public typealias MOutput = OperationOutput<DeliverConfigSnapshotOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeliverConfigSnapshotOutputError>
}

extension DeliverConfigSnapshotInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deliveryChannelName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let deliveryChannelName = deliveryChannelName {
            try encodeContainer.encode(deliveryChannelName, forKey: .deliveryChannelName)
        }
    }
}