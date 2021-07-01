// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ExecuteStatementInputHeadersMiddleware: Middleware {
    public let id: String = "ExecuteStatementInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExecuteStatementInput>,
                  next: H) -> Swift.Result<OperationOutput<ExecuteStatementOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ExecuteStatementInput>
    public typealias MOutput = OperationOutput<ExecuteStatementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExecuteStatementOutputError>
}

public struct ExecuteStatementInputQueryItemMiddleware: Middleware {
    public let id: String = "ExecuteStatementInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExecuteStatementInput>,
                  next: H) -> Swift.Result<OperationOutput<ExecuteStatementOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ExecuteStatementInput>
    public typealias MOutput = OperationOutput<ExecuteStatementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExecuteStatementOutputError>
}

public struct ExecuteStatementInputBodyMiddleware: Middleware {
    public let id: String = "ExecuteStatementInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExecuteStatementInput>,
                  next: H) -> Swift.Result<OperationOutput<ExecuteStatementOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ExecuteStatementInput>
    public typealias MOutput = OperationOutput<ExecuteStatementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExecuteStatementOutputError>
}

extension ExecuteStatementInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case consistentRead = "ConsistentRead"
        case nextToken = "NextToken"
        case parameters = "Parameters"
        case statement = "Statement"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let consistentRead = consistentRead {
            try encodeContainer.encode(consistentRead, forKey: .consistentRead)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let parameters = parameters {
            var parametersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .parameters)
            for preparedstatementparameters0 in parameters {
                try parametersContainer.encode(preparedstatementparameters0)
            }
        }
        if let statement = statement {
            try encodeContainer.encode(statement, forKey: .statement)
        }
    }
}