// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RestoreManagedPrefixListVersionInputHeadersMiddleware: Middleware {
    public let id: String = "RestoreManagedPrefixListVersionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreManagedPrefixListVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<RestoreManagedPrefixListVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RestoreManagedPrefixListVersionInput>
    public typealias MOutput = OperationOutput<RestoreManagedPrefixListVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RestoreManagedPrefixListVersionOutputError>
}

public struct RestoreManagedPrefixListVersionInputQueryItemMiddleware: Middleware {
    public let id: String = "RestoreManagedPrefixListVersionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreManagedPrefixListVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<RestoreManagedPrefixListVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RestoreManagedPrefixListVersionInput>
    public typealias MOutput = OperationOutput<RestoreManagedPrefixListVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RestoreManagedPrefixListVersionOutputError>
}

public struct RestoreManagedPrefixListVersionInputBodyMiddleware: Middleware {
    public let id: String = "RestoreManagedPrefixListVersionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreManagedPrefixListVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<RestoreManagedPrefixListVersionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RestoreManagedPrefixListVersionInput>
    public typealias MOutput = OperationOutput<RestoreManagedPrefixListVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RestoreManagedPrefixListVersionOutputError>
}

extension RestoreManagedPrefixListVersionInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if currentVersion != 0 {
            try container.encode(currentVersion, forKey: Key("CurrentVersion"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let prefixListId = prefixListId {
            try container.encode(prefixListId, forKey: Key("PrefixListId"))
        }
        if previousVersion != 0 {
            try container.encode(previousVersion, forKey: Key("PreviousVersion"))
        }
        try container.encode("RestoreManagedPrefixListVersion", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}