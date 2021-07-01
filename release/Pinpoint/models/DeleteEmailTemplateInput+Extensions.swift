// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteEmailTemplateInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteEmailTemplateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteEmailTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteEmailTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteEmailTemplateInput>
    public typealias MOutput = OperationOutput<DeleteEmailTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteEmailTemplateOutputError>
}

public struct DeleteEmailTemplateInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteEmailTemplateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteEmailTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteEmailTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let version = input.operationInput.version {
            let versionQueryItem = URLQueryItem(name: "version".urlPercentEncoding(), value: String(version).urlPercentEncoding())
            input.builder.withQueryItem(versionQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteEmailTemplateInput>
    public typealias MOutput = OperationOutput<DeleteEmailTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteEmailTemplateOutputError>
}

extension DeleteEmailTemplateInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}