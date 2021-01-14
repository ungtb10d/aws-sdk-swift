/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

import ClientRuntime

public protocol AWSClientConfiguration {

    var credentialsProvider: AWSCredentialsProvider { get set }
    var region: String { get set }
    var signingRegion: String {get set}

    // idempotency token provider to be added
    // some kind of endpoint resolver to be added
    // some kind of retryer options or configuration
}
