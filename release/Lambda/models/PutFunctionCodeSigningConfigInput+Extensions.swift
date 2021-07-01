// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutFunctionCodeSigningConfigInputHeadersMiddleware: Middleware {
    public let id: String = "PutFunctionCodeSigningConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutFunctionCodeSigningConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<PutFunctionCodeSigningConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutFunctionCodeSigningConfigInput>
    public typealias MOutput = OperationOutput<PutFunctionCodeSigningConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutFunctionCodeSigningConfigOutputError>
}

public struct PutFunctionCodeSigningConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "PutFunctionCodeSigningConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutFunctionCodeSigningConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<PutFunctionCodeSigningConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutFunctionCodeSigningConfigInput>
    public typealias MOutput = OperationOutput<PutFunctionCodeSigningConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutFunctionCodeSigningConfigOutputError>
}

public struct PutFunctionCodeSigningConfigInputBodyMiddleware: Middleware {
    public let id: String = "PutFunctionCodeSigningConfigInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutFunctionCodeSigningConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<PutFunctionCodeSigningConfigOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutFunctionCodeSigningConfigInput>
    public typealias MOutput = OperationOutput<PutFunctionCodeSigningConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutFunctionCodeSigningConfigOutputError>
}

extension PutFunctionCodeSigningConfigInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case codeSigningConfigArn = "CodeSigningConfigArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let codeSigningConfigArn = codeSigningConfigArn {
            try encodeContainer.encode(codeSigningConfigArn, forKey: .codeSigningConfigArn)
        }
    }
}