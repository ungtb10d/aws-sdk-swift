// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about a hierarchy structure.</p>
public struct HierarchyStructure: Equatable {
    /// <p>Information about level five.</p>
    public let levelFive: HierarchyLevel?
    /// <p>Information about level four.</p>
    public let levelFour: HierarchyLevel?
    /// <p>Information about level one.</p>
    public let levelOne: HierarchyLevel?
    /// <p>Information about level three.</p>
    public let levelThree: HierarchyLevel?
    /// <p>Information about level two.</p>
    public let levelTwo: HierarchyLevel?

    public init (
        levelFive: HierarchyLevel? = nil,
        levelFour: HierarchyLevel? = nil,
        levelOne: HierarchyLevel? = nil,
        levelThree: HierarchyLevel? = nil,
        levelTwo: HierarchyLevel? = nil
    )
    {
        self.levelFive = levelFive
        self.levelFour = levelFour
        self.levelOne = levelOne
        self.levelThree = levelThree
        self.levelTwo = levelTwo
    }
}

extension HierarchyStructure: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HierarchyStructure(levelFive: \(String(describing: levelFive)), levelFour: \(String(describing: levelFour)), levelOne: \(String(describing: levelOne)), levelThree: \(String(describing: levelThree)), levelTwo: \(String(describing: levelTwo)))"}
}