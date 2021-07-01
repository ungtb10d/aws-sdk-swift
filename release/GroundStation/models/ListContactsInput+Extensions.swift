// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListContactsInputHeadersMiddleware: Middleware {
    public let id: String = "ListContactsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListContactsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListContactsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListContactsInput>
    public typealias MOutput = OperationOutput<ListContactsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListContactsOutputError>
}

public struct ListContactsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListContactsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListContactsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListContactsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListContactsInput>
    public typealias MOutput = OperationOutput<ListContactsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListContactsOutputError>
}

public struct ListContactsInputBodyMiddleware: Middleware {
    public let id: String = "ListContactsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListContactsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListContactsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListContactsInput>
    public typealias MOutput = OperationOutput<ListContactsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListContactsOutputError>
}

extension ListContactsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endTime
        case groundStation
        case maxResults
        case missionProfileArn
        case nextToken
        case satelliteArn
        case startTime
        case statusList
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endTime = endTime {
            try encodeContainer.encode(endTime.timeIntervalSince1970, forKey: .endTime)
        }
        if let groundStation = groundStation {
            try encodeContainer.encode(groundStation, forKey: .groundStation)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let missionProfileArn = missionProfileArn {
            try encodeContainer.encode(missionProfileArn, forKey: .missionProfileArn)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let satelliteArn = satelliteArn {
            try encodeContainer.encode(satelliteArn, forKey: .satelliteArn)
        }
        if let startTime = startTime {
            try encodeContainer.encode(startTime.timeIntervalSince1970, forKey: .startTime)
        }
        if let statusList = statusList {
            var statusListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .statusList)
            for statuslist0 in statusList {
                try statusListContainer.encode(statuslist0.rawValue)
            }
        }
    }
}