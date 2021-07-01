// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeAppsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeAppsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAppsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAppsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAppsInput>
    public typealias MOutput = OperationOutput<DescribeAppsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAppsOutputError>
}

public struct DescribeAppsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeAppsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAppsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAppsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAppsInput>
    public typealias MOutput = OperationOutput<DescribeAppsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAppsOutputError>
}

public struct DescribeAppsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeAppsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAppsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAppsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeAppsInput>
    public typealias MOutput = OperationOutput<DescribeAppsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAppsOutputError>
}

extension DescribeAppsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case appIds = "AppIds"
        case stackId = "StackId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let appIds = appIds {
            var appIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .appIds)
            for strings0 in appIds {
                try appIdsContainer.encode(strings0)
            }
        }
        if let stackId = stackId {
            try encodeContainer.encode(stackId, forKey: .stackId)
        }
    }
}