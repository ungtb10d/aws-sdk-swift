// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateInsightInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateInsightInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateInsightInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateInsightOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateInsightInput>
    public typealias MOutput = OperationOutput<UpdateInsightOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateInsightOutputError>
}

public struct UpdateInsightInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateInsightInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateInsightInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateInsightOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateInsightInput>
    public typealias MOutput = OperationOutput<UpdateInsightOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateInsightOutputError>
}

public struct UpdateInsightInputBodyMiddleware: Middleware {
    public let id: String = "UpdateInsightInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateInsightInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateInsightOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateInsightInput>
    public typealias MOutput = OperationOutput<UpdateInsightOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateInsightOutputError>
}

extension UpdateInsightInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case groupByAttribute = "GroupByAttribute"
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let filters = filters {
            try encodeContainer.encode(filters, forKey: .filters)
        }
        if let groupByAttribute = groupByAttribute {
            try encodeContainer.encode(groupByAttribute, forKey: .groupByAttribute)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }
}