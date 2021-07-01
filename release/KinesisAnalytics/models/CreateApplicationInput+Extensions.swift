// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateApplicationInputHeadersMiddleware: Middleware {
    public let id: String = "CreateApplicationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateApplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateApplicationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateApplicationInput>
    public typealias MOutput = OperationOutput<CreateApplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateApplicationOutputError>
}

public struct CreateApplicationInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateApplicationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateApplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateApplicationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateApplicationInput>
    public typealias MOutput = OperationOutput<CreateApplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateApplicationOutputError>
}

public struct CreateApplicationInputBodyMiddleware: Middleware {
    public let id: String = "CreateApplicationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateApplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateApplicationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateApplicationInput>
    public typealias MOutput = OperationOutput<CreateApplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateApplicationOutputError>
}

extension CreateApplicationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case applicationCode = "ApplicationCode"
        case applicationDescription = "ApplicationDescription"
        case applicationName = "ApplicationName"
        case cloudWatchLoggingOptions = "CloudWatchLoggingOptions"
        case inputs = "Inputs"
        case outputs = "Outputs"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let applicationCode = applicationCode {
            try encodeContainer.encode(applicationCode, forKey: .applicationCode)
        }
        if let applicationDescription = applicationDescription {
            try encodeContainer.encode(applicationDescription, forKey: .applicationDescription)
        }
        if let applicationName = applicationName {
            try encodeContainer.encode(applicationName, forKey: .applicationName)
        }
        if let cloudWatchLoggingOptions = cloudWatchLoggingOptions {
            var cloudWatchLoggingOptionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .cloudWatchLoggingOptions)
            for cloudwatchloggingoptions0 in cloudWatchLoggingOptions {
                try cloudWatchLoggingOptionsContainer.encode(cloudwatchloggingoptions0)
            }
        }
        if let inputs = inputs {
            var inputsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .inputs)
            for inputs0 in inputs {
                try inputsContainer.encode(inputs0)
            }
        }
        if let outputs = outputs {
            var outputsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .outputs)
            for outputs0 in outputs {
                try outputsContainer.encode(outputs0)
            }
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for tags0 in tags {
                try tagsContainer.encode(tags0)
            }
        }
    }
}