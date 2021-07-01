// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartProjectVersionInputHeadersMiddleware: Middleware {
    public let id: String = "StartProjectVersionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartProjectVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<StartProjectVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartProjectVersionInput>
    public typealias MOutput = OperationOutput<StartProjectVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartProjectVersionOutputError>
}

public struct StartProjectVersionInputQueryItemMiddleware: Middleware {
    public let id: String = "StartProjectVersionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartProjectVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<StartProjectVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartProjectVersionInput>
    public typealias MOutput = OperationOutput<StartProjectVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartProjectVersionOutputError>
}

public struct StartProjectVersionInputBodyMiddleware: Middleware {
    public let id: String = "StartProjectVersionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartProjectVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<StartProjectVersionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartProjectVersionInput>
    public typealias MOutput = OperationOutput<StartProjectVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartProjectVersionOutputError>
}

extension StartProjectVersionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case minInferenceUnits = "MinInferenceUnits"
        case projectVersionArn = "ProjectVersionArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let minInferenceUnits = minInferenceUnits {
            try encodeContainer.encode(minInferenceUnits, forKey: .minInferenceUnits)
        }
        if let projectVersionArn = projectVersionArn {
            try encodeContainer.encode(projectVersionArn, forKey: .projectVersionArn)
        }
    }
}