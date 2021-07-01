// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeBatchPredictionsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeBatchPredictionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeBatchPredictionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeBatchPredictionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeBatchPredictionsInput>
    public typealias MOutput = OperationOutput<DescribeBatchPredictionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeBatchPredictionsOutputError>
}

public struct DescribeBatchPredictionsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeBatchPredictionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeBatchPredictionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeBatchPredictionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeBatchPredictionsInput>
    public typealias MOutput = OperationOutput<DescribeBatchPredictionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeBatchPredictionsOutputError>
}

public struct DescribeBatchPredictionsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeBatchPredictionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeBatchPredictionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeBatchPredictionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeBatchPredictionsInput>
    public typealias MOutput = OperationOutput<DescribeBatchPredictionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeBatchPredictionsOutputError>
}

extension DescribeBatchPredictionsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case eQ = "EQ"
        case filterVariable = "FilterVariable"
        case gE = "GE"
        case gT = "GT"
        case lE = "LE"
        case lT = "LT"
        case limit = "Limit"
        case nE = "NE"
        case nextToken = "NextToken"
        case prefix = "Prefix"
        case sortOrder = "SortOrder"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let eQ = eQ {
            try encodeContainer.encode(eQ, forKey: .eQ)
        }
        if let filterVariable = filterVariable {
            try encodeContainer.encode(filterVariable.rawValue, forKey: .filterVariable)
        }
        if let gE = gE {
            try encodeContainer.encode(gE, forKey: .gE)
        }
        if let gT = gT {
            try encodeContainer.encode(gT, forKey: .gT)
        }
        if let lE = lE {
            try encodeContainer.encode(lE, forKey: .lE)
        }
        if let lT = lT {
            try encodeContainer.encode(lT, forKey: .lT)
        }
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nE = nE {
            try encodeContainer.encode(nE, forKey: .nE)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let prefix = prefix {
            try encodeContainer.encode(prefix, forKey: .prefix)
        }
        if let sortOrder = sortOrder {
            try encodeContainer.encode(sortOrder.rawValue, forKey: .sortOrder)
        }
    }
}