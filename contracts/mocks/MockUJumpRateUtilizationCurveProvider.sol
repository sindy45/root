// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

import "../curve/unstructured/UJumpRateUtilizationCurveProvider.sol";

contract MockUJumpRateUtilizationCurveProvider is UJumpRateUtilizationCurveProvider {
    function __initialize(JumpRateUtilizationCurve memory initialUtilizationCurve) external initializer(1) {
        super.__UOwnable__initialize();
        super.__UJumpRateUtilizationCurveProvider__initialize(initialUtilizationCurve);
    }

    function computeRate(UFixed18 utilization) external view returns (Fixed18) {
        return super._computeRate(utilization);
    }
}
