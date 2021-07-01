// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDeviceDefinitionVersionInputHeadersMiddleware: Middleware {
    public let id: String = "GetDeviceDefinitionVersionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeviceDefinitionVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDeviceDefinitionVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDeviceDefinitionVersionInput>
    public typealias MOutput = OperationOutput<GetDeviceDefinitionVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDeviceDefinitionVersionOutputError>
}

public struct GetDeviceDefinitionVersionInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDeviceDefinitionVersionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeviceDefinitionVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDeviceDefinitionVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "NextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDeviceDefinitionVersionInput>
    public typealias MOutput = OperationOutput<GetDeviceDefinitionVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDeviceDefinitionVersionOutputError>
}

extension GetDeviceDefinitionVersionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}