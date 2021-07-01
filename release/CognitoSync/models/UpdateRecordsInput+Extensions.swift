// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateRecordsInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateRecordsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRecordsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRecordsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let clientContext = input.operationInput.clientContext {
            input.builder.withHeader(name: "x-amz-Client-Context", value: String(clientContext))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRecordsInput>
    public typealias MOutput = OperationOutput<UpdateRecordsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRecordsOutputError>
}

public struct UpdateRecordsInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateRecordsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRecordsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRecordsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRecordsInput>
    public typealias MOutput = OperationOutput<UpdateRecordsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRecordsOutputError>
}

public struct UpdateRecordsInputBodyMiddleware: Middleware {
    public let id: String = "UpdateRecordsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRecordsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRecordsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateRecordsInput>
    public typealias MOutput = OperationOutput<UpdateRecordsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRecordsOutputError>
}

extension UpdateRecordsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deviceId = "DeviceId"
        case recordPatches = "RecordPatches"
        case syncSessionToken = "SyncSessionToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let deviceId = deviceId {
            try encodeContainer.encode(deviceId, forKey: .deviceId)
        }
        if let recordPatches = recordPatches {
            var recordPatchesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .recordPatches)
            for recordpatchlist0 in recordPatches {
                try recordPatchesContainer.encode(recordpatchlist0)
            }
        }
        if let syncSessionToken = syncSessionToken {
            try encodeContainer.encode(syncSessionToken, forKey: .syncSessionToken)
        }
    }
}