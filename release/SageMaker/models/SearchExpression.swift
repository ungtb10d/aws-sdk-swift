// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A multi-expression that searches for the specified resource or resources in a search. All resource
///       objects that satisfy the expression's condition are included in the search results. You must specify at
///       least one subexpression, filter, or nested filter. A <code>SearchExpression</code> can contain up to
///       twenty elements.</p>
///          <p>A <code>SearchExpression</code> contains the following components:</p>
///          <ul>
///             <li>
///                <p>A list of <code>Filter</code> objects. Each filter defines a simple Boolean
///           expression comprised of a resource property name, Boolean operator, and
///           value.</p>
///             </li>
///             <li>
///                <p>A list of <code>NestedFilter</code> objects. Each nested filter defines a list
///           of Boolean expressions using a list of resource properties. A nested filter is
///           satisfied if a single object in the list satisfies all Boolean
///           expressions.</p>
///             </li>
///             <li>
///                <p>A list of <code>SearchExpression</code> objects. A search expression object
///           can be nested in a list of search expression objects.</p>
///             </li>
///             <li>
///                <p>A Boolean operator: <code>And</code> or <code>Or</code>.</p>
///             </li>
///          </ul>
public struct SearchExpression: Equatable {
    /// <p>A Boolean operator used to evaluate the search expression. If you want every
    ///       conditional statement in all lists to be satisfied for the entire search expression to
    ///       be true, specify <code>And</code>. If only a single conditional statement needs to be
    ///       true for the entire search expression to be true, specify <code>Or</code>. The default
    ///       value is <code>And</code>.</p>
    public let `operator`: BooleanOperator?
    /// <p>A list of filter objects.</p>
    public let filters: [Filter]?
    /// <p>A list of nested filter objects.</p>
    public let nestedFilters: [NestedFilters]?
    /// <p>A list of search expression objects.</p>
    public let subExpressions: [SearchExpression]?

    public init (
        `operator`: BooleanOperator? = nil,
        filters: [Filter]? = nil,
        nestedFilters: [NestedFilters]? = nil,
        subExpressions: [SearchExpression]? = nil
    )
    {
        self.`operator` = `operator`
        self.filters = filters
        self.nestedFilters = nestedFilters
        self.subExpressions = subExpressions
    }
}

extension SearchExpression: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SearchExpression(filters: \(String(describing: filters)), nestedFilters: \(String(describing: nestedFilters)), operator: \(String(describing: `operator`)), subExpressions: \(String(describing: subExpressions)))"}
}