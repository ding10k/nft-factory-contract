// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;
pragma experimental ABIEncoderV2;

/**
 * @notice Service Fee interface for Refinable NFT Marketplace
 */
interface IServiceFee {

    /**
     * @notice Lets admin set the refinable token contract
     * @param _refinableTokenContract address of refinable token contract
     */
    function setRefinableTokenContract(address _refinableTokenContract) external;

    /**
     * @notice Admin can add proxy address
     * @param _proxyAddr address of proxy
     */
    function addProxy(address _proxyAddr) external;

    /**
     * @notice Admin can remove proxy address
     * @param _proxyAddr address of proxy
     */
    function removeProxy(address _proxyAddr) external;

    /**
     * @notice Calculate the seller service fee in according to the business logic and returns it
     * @param _seller address of seller
     */
    function getSellServiceFeeBps(address _seller) external view returns (uint256);

    /**
     * @notice Calculate the buyer service fee in according to the business logic and returns it
     * @param _buyer address of buyer
     */
    function getBuyServiceFeeBps(address _buyer) external view returns (uint256);

    /**
     * @notice Get service fee recipient address
     */
    function getServiceFeeRecipient() external view returns (address payable);

    /**
     * @notice Set service fee recipient address
     * @param _serviceFeeRecipient address of recipient
     */
    function setServiceFeeRecipient(address payable _serviceFeeRecipient) external;
}
