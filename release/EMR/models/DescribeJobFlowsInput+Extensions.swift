// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeJobFlowsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeJobFlowsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeJobFlowsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeJobFlowsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeJobFlowsInput>
    public typealias MOutput = OperationOutput<DescribeJobFlowsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeJobFlowsOutputError>
}

public struct DescribeJobFlowsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeJobFlowsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeJobFlowsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeJobFlowsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeJobFlowsInput>
    public typealias MOutput = OperationOutput<DescribeJobFlowsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeJobFlowsOutputError>
}

public struct DescribeJobFlowsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeJobFlowsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeJobFlowsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeJobFlowsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeJobFlowsInput>
    public typealias MOutput = OperationOutput<DescribeJobFlowsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeJobFlowsOutputError>
}

extension DescribeJobFlowsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdAfter = "CreatedAfter"
        case createdBefore = "CreatedBefore"
        case jobFlowIds = "JobFlowIds"
        case jobFlowStates = "JobFlowStates"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdAfter = createdAfter {
            try encodeContainer.encode(createdAfter.timeIntervalSince1970, forKey: .createdAfter)
        }
        if let createdBefore = createdBefore {
            try encodeContainer.encode(createdBefore.timeIntervalSince1970, forKey: .createdBefore)
        }
        if let jobFlowIds = jobFlowIds {
            var jobFlowIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .jobFlowIds)
            for xmlstringlist0 in jobFlowIds {
                try jobFlowIdsContainer.encode(xmlstringlist0)
            }
        }
        if let jobFlowStates = jobFlowStates {
            var jobFlowStatesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .jobFlowStates)
            for jobflowexecutionstatelist0 in jobFlowStates {
                try jobFlowStatesContainer.encode(jobflowexecutionstatelist0.rawValue)
            }
        }
    }
}