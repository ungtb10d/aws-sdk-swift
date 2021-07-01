// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutRecordsInputHeadersMiddleware: Middleware {
    public let id: String = "PutRecordsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutRecordsInput>,
                  next: H) -> Swift.Result<OperationOutput<PutRecordsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutRecordsInput>
    public typealias MOutput = OperationOutput<PutRecordsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutRecordsOutputError>
}

public struct PutRecordsInputQueryItemMiddleware: Middleware {
    public let id: String = "PutRecordsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutRecordsInput>,
                  next: H) -> Swift.Result<OperationOutput<PutRecordsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutRecordsInput>
    public typealias MOutput = OperationOutput<PutRecordsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutRecordsOutputError>
}

public struct PutRecordsInputBodyMiddleware: Middleware {
    public let id: String = "PutRecordsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutRecordsInput>,
                  next: H) -> Swift.Result<OperationOutput<PutRecordsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutRecordsInput>
    public typealias MOutput = OperationOutput<PutRecordsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutRecordsOutputError>
}

extension PutRecordsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case records = "Records"
        case streamName = "StreamName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let records = records {
            var recordsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .records)
            for putrecordsrequestentrylist0 in records {
                try recordsContainer.encode(putrecordsrequestentrylist0)
            }
        }
        if let streamName = streamName {
            try encodeContainer.encode(streamName, forKey: .streamName)
        }
    }
}