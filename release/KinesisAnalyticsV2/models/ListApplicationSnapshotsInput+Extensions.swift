// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListApplicationSnapshotsInputHeadersMiddleware: Middleware {
    public let id: String = "ListApplicationSnapshotsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListApplicationSnapshotsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListApplicationSnapshotsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListApplicationSnapshotsInput>
    public typealias MOutput = OperationOutput<ListApplicationSnapshotsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListApplicationSnapshotsOutputError>
}

public struct ListApplicationSnapshotsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListApplicationSnapshotsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListApplicationSnapshotsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListApplicationSnapshotsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListApplicationSnapshotsInput>
    public typealias MOutput = OperationOutput<ListApplicationSnapshotsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListApplicationSnapshotsOutputError>
}

public struct ListApplicationSnapshotsInputBodyMiddleware: Middleware {
    public let id: String = "ListApplicationSnapshotsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListApplicationSnapshotsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListApplicationSnapshotsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListApplicationSnapshotsInput>
    public typealias MOutput = OperationOutput<ListApplicationSnapshotsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListApplicationSnapshotsOutputError>
}

extension ListApplicationSnapshotsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case applicationName = "ApplicationName"
        case limit = "Limit"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let applicationName = applicationName {
            try encodeContainer.encode(applicationName, forKey: .applicationName)
        }
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}