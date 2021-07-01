// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateAppInstanceAdminInputHeadersMiddleware: Middleware {
    public let id: String = "CreateAppInstanceAdminInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAppInstanceAdminInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAppInstanceAdminOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAppInstanceAdminInput>
    public typealias MOutput = OperationOutput<CreateAppInstanceAdminOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAppInstanceAdminOutputError>
}

public struct CreateAppInstanceAdminInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateAppInstanceAdminInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAppInstanceAdminInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAppInstanceAdminOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAppInstanceAdminInput>
    public typealias MOutput = OperationOutput<CreateAppInstanceAdminOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAppInstanceAdminOutputError>
}

public struct CreateAppInstanceAdminInputBodyMiddleware: Middleware {
    public let id: String = "CreateAppInstanceAdminInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAppInstanceAdminInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAppInstanceAdminOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateAppInstanceAdminInput>
    public typealias MOutput = OperationOutput<CreateAppInstanceAdminOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAppInstanceAdminOutputError>
}

extension CreateAppInstanceAdminInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case appInstanceAdminArn = "AppInstanceAdminArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let appInstanceAdminArn = appInstanceAdminArn {
            try encodeContainer.encode(appInstanceAdminArn, forKey: .appInstanceAdminArn)
        }
    }
}