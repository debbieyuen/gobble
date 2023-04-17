//
//  SkeletonBone.swift
//  Gobble
//
//  Created by Debbie Yuen on 4/17/23.
//

import Foundation
import RealityKit

struct SkeletonBone {
    var fromJoint: SkeletonJoint
    var toJoint: SkeletonJoint
    
    var centerPosition: SIMD3<Float> {
        // Gets the midpoint of the joints for x,y,z axis
        [
            (fromJoint.position.x + toJoint.position.x)/2,
            (fromJoint.position.y + toJoint.position.y)/2,
            (fromJoint.position.z + toJoint.position.z)/2
        ]
    }
    
    var length: Float {
        simd_distance(fromJoint.position, toJoint.position)
    }
}
