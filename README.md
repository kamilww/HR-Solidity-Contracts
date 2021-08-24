# HR-Solidity-Contracts

## Contract 1: AssociateProfitSplitter:
* Accepts deposit of Ether and divides the Ether among three addresses
* The addresses for each associate is assigned using this contract's constructor
* Any remaining Ether is sent back to HR, or msg.sender.
* Balance function is included for testing purposes to ensure contract has no left over wei.

<img width="293" alt="Screen Shot 2021-08-24 at 7 45 37 AM" src="https://user-images.githubusercontent.com/40152804/130610835-0b1db7c5-dac1-4e73-aaac-d55ad2b3192d.png">

<img width="1279" alt="Screen Shot 2021-08-24 at 7 48 18 AM" src="https://user-images.githubusercontent.com/40152804/130611148-bab81f1f-bfb2-4998-95f0-fbf9aafe6951.png">

## Contract 2: TieredProfitSplitter:
* Accepts desposit of Ether and divides the Ether among three addresses
* Unlike Contract 1, each address receives a different amount depending on three tiers: "ceo," "cto," and "bob"
<img width="1275" alt="Screen Shot 2021-08-24 at 8 18 59 AM" src="https://user-images.githubusercontent.com/40152804/130615029-557f7aa8-912b-4c2b-85bb-cbefb5bff201.png">

## Contract 3: DeferredEquityPlan:
* Employees receive 1000 shares over a vesting period of 4 years.
* Shares are distributed evenly in 250 shares per year.
* Tested timelock by using a "fakenow" variable (final deployed contract does not contain this variable). fast forward adds to 365 increments to test timelock.
<img width="1627" alt="Screen Shot 2021-08-24 at 9 38 33 AM" src="https://user-images.githubusercontent.com/40152804/130626718-2e814f4b-fcfd-4d43-8a0b-ea540a2dcfee.png">
* If at least 365 days pass since last function call to "distribute" (last function call stored in variable "unlock_time"), and if the employee hasn't received the full equity distribution, distribute function executes, otherwise it raises an error. For example:
<img width="1356" alt="Screen Shot 2021-08-24 at 9 36 19 AM" src="https://user-images.githubusercontent.com/40152804/130626358-81940404-730a-44a8-aca7-b9dbf5f111a8.png">

