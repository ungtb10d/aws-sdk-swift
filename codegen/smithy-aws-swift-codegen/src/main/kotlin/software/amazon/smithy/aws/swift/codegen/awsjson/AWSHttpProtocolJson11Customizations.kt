package software.amazon.smithy.aws.swift.codegen.awsjson

import software.amazon.smithy.aws.swift.codegen.AWSClientRuntimeTypes
import software.amazon.smithy.aws.swift.codegen.AWSHttpProtocolCustomizations
import software.amazon.smithy.aws.swift.codegen.AWSSwiftDependency
import software.amazon.smithy.aws.swift.codegen.middleware.AWSXAmzTargetMiddleware
import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.model.shapes.OperationShape
import software.amazon.smithy.protocoltests.traits.HttpRequestTestCase
import software.amazon.smithy.swift.codegen.SwiftWriter
import software.amazon.smithy.swift.codegen.integration.OperationMiddlewareRenderable
import software.amazon.smithy.swift.codegen.integration.ProtocolGenerator

class AWSHttpProtocolJson11Customizations : AWSHttpProtocolCustomizations() {

    override fun baseMiddlewares(ctx: ProtocolGenerator.GenerationContext, op: OperationShape): List<OperationMiddlewareRenderable> {
        val defaultMiddlewares = super.baseMiddlewares(ctx, op)
        val protocolMiddlewares = listOf<OperationMiddlewareRenderable>(AWSXAmzTargetMiddleware())
        return defaultMiddlewares + protocolMiddlewares
    }

    override fun renderMiddlewareForGeneratedRequestTests(
        writer: SwiftWriter,
        test: HttpRequestTestCase,
        operationStack: String,
        inputSymbol: Symbol,
        outputSymbol: Symbol,
        outputErrorName: String,
        hasHttpBody: Boolean
    ) {
        writer.addImport(AWSSwiftDependency.AWS_CLIENT_RUNTIME.target)
        if (test.headers.keys.contains("X-Amz-Target")) {
            val XAmzTargetValue = test.headers["X-Amz-Target"]
            writer.write("$operationStack.serializeStep.intercept(position: .before, middleware: \$N<${inputSymbol.name}, $outputSymbol, $outputErrorName>(xAmzTarget: \"${XAmzTargetValue}\"))", AWSClientRuntimeTypes.AWSJSON.XAmzTargetMiddleware)
        }
    }
}
