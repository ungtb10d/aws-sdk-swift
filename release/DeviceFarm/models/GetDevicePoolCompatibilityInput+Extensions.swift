// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDevicePoolCompatibilityInputHeadersMiddleware: Middleware {
    public let id: String = "GetDevicePoolCompatibilityInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDevicePoolCompatibilityInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDevicePoolCompatibilityOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDevicePoolCompatibilityInput>
    public typealias MOutput = OperationOutput<GetDevicePoolCompatibilityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDevicePoolCompatibilityOutputError>
}

public struct GetDevicePoolCompatibilityInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDevicePoolCompatibilityInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDevicePoolCompatibilityInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDevicePoolCompatibilityOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDevicePoolCompatibilityInput>
    public typealias MOutput = OperationOutput<GetDevicePoolCompatibilityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDevicePoolCompatibilityOutputError>
}

public struct GetDevicePoolCompatibilityInputBodyMiddleware: Middleware {
    public let id: String = "GetDevicePoolCompatibilityInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDevicePoolCompatibilityInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDevicePoolCompatibilityOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetDevicePoolCompatibilityInput>
    public typealias MOutput = OperationOutput<GetDevicePoolCompatibilityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDevicePoolCompatibilityOutputError>
}

extension GetDevicePoolCompatibilityInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case appArn
        case configuration
        case devicePoolArn
        case test
        case testType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let appArn = appArn {
            try encodeContainer.encode(appArn, forKey: .appArn)
        }
        if let configuration = configuration {
            try encodeContainer.encode(configuration, forKey: .configuration)
        }
        if let devicePoolArn = devicePoolArn {
            try encodeContainer.encode(devicePoolArn, forKey: .devicePoolArn)
        }
        if let test = test {
            try encodeContainer.encode(test, forKey: .test)
        }
        if let testType = testType {
            try encodeContainer.encode(testType.rawValue, forKey: .testType)
        }
    }
}