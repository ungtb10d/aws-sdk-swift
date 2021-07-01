// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetMergeCommitInputHeadersMiddleware: Middleware {
    public let id: String = "GetMergeCommitInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetMergeCommitInput>,
                  next: H) -> Swift.Result<OperationOutput<GetMergeCommitOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetMergeCommitInput>
    public typealias MOutput = OperationOutput<GetMergeCommitOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetMergeCommitOutputError>
}

public struct GetMergeCommitInputQueryItemMiddleware: Middleware {
    public let id: String = "GetMergeCommitInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetMergeCommitInput>,
                  next: H) -> Swift.Result<OperationOutput<GetMergeCommitOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetMergeCommitInput>
    public typealias MOutput = OperationOutput<GetMergeCommitOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetMergeCommitOutputError>
}

public struct GetMergeCommitInputBodyMiddleware: Middleware {
    public let id: String = "GetMergeCommitInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetMergeCommitInput>,
                  next: H) -> Swift.Result<OperationOutput<GetMergeCommitOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetMergeCommitInput>
    public typealias MOutput = OperationOutput<GetMergeCommitOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetMergeCommitOutputError>
}

extension GetMergeCommitInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case conflictDetailLevel
        case conflictResolutionStrategy
        case destinationCommitSpecifier
        case repositoryName
        case sourceCommitSpecifier
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let conflictDetailLevel = conflictDetailLevel {
            try encodeContainer.encode(conflictDetailLevel.rawValue, forKey: .conflictDetailLevel)
        }
        if let conflictResolutionStrategy = conflictResolutionStrategy {
            try encodeContainer.encode(conflictResolutionStrategy.rawValue, forKey: .conflictResolutionStrategy)
        }
        if let destinationCommitSpecifier = destinationCommitSpecifier {
            try encodeContainer.encode(destinationCommitSpecifier, forKey: .destinationCommitSpecifier)
        }
        if let repositoryName = repositoryName {
            try encodeContainer.encode(repositoryName, forKey: .repositoryName)
        }
        if let sourceCommitSpecifier = sourceCommitSpecifier {
            try encodeContainer.encode(sourceCommitSpecifier, forKey: .sourceCommitSpecifier)
        }
    }
}