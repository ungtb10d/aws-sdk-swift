// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The AWS Migration Hub home region APIs are available specifically for working with your
///       Migration Hub home region. You can use these APIs to determine a home region, as well as to
///       create and work with controls that describe the home region.</p>
///
///          <ul>
///             <li>
///                <p>You must make API calls for write actions (create, notify, associate, disassociate,
///           import, or put) while in your home region, or a <code>HomeRegionNotSetException</code>
///           error is returned.</p>
///             </li>
///             <li>
///                <p>API calls for read actions (list, describe, stop, and delete) are permitted outside of
///           your home region.</p>
///             </li>
///             <li>
///                <p>If you call a write API outside the home region, an <code>InvalidInputException</code>
///           is returned.</p>
///             </li>
///             <li>
///                <p>You can call <code>GetHomeRegion</code> action to obtain the account's Migration Hub
///           home region.</p>
///             </li>
///          </ul>
///
///          <p>For specific API usage, see the sections that follow in this AWS Migration Hub Home Region
///       API reference. </p>
public protocol MigrationHubConfigClientProtocol {
    /// <p>This API sets up the home region for the calling account only.</p>
    func createHomeRegionControl(input: CreateHomeRegionControlInput, completion: @escaping (SdkResult<CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>) -> Void)
    /// <p>This API permits filtering on the <code>ControlId</code> and <code>HomeRegion</code>
    ///       fields.</p>
    func describeHomeRegionControls(input: DescribeHomeRegionControlsInput, completion: @escaping (SdkResult<DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>) -> Void)
    /// <p>Returns the calling account’s home region, if configured. This API is used by other AWS
    ///       services to determine the regional endpoint for calling AWS Application Discovery Service and
    ///       Migration Hub. You must call <code>GetHomeRegion</code> at least once before you call any
    ///       other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's
    ///       Migration Hub home region.</p>
    func getHomeRegion(input: GetHomeRegionInput, completion: @escaping (SdkResult<GetHomeRegionOutputResponse, GetHomeRegionOutputError>) -> Void)
}