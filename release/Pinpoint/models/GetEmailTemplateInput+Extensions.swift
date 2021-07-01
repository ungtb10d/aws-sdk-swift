// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetEmailTemplateInputHeadersMiddleware: Middleware {
    public let id: String = "GetEmailTemplateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetEmailTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<GetEmailTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetEmailTemplateInput>
    public typealias MOutput = OperationOutput<GetEmailTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetEmailTemplateOutputError>
}

public struct GetEmailTemplateInputQueryItemMiddleware: Middleware {
    public let id: String = "GetEmailTemplateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetEmailTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<GetEmailTemplateOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetEmailTemplateInput>
    public typealias MOutput = OperationOutput<GetEmailTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetEmailTemplateOutputError>
}

extension GetEmailTemplateInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}