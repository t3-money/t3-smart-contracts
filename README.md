# t3-contracts

T3 represents a perpetual, gated decentralized exchange (DEX) system. It is developed as a fork of the GMX DEX, enhanced by incorporating advanced features. One of the key additional features is the integration of the Molecule protocol, which establishes a compliance framework. Access to the T3 DEX is exclusively available to users who meet the compliance requirements set forth by the Molecule protocol and T3 APP 

## t3-Contracts-compile

```shell
npm install 
```

```shell
npx hardhat compile 
```

## Morph Holesky testnet deployment  

### t3-contracts

    GMX(TMX): 0x562411096dAAdA127d71b6B6C03140F4f8baf556

    GLP(TLP):  0x2D6D32CbA43854072F49Ddb776e850Ca135bb7Be

    Vault: 0xB118AdB7786BF5F1bcf63195591e379647bfb517

    Router: 0x3cC4Fda9571fa76b687944170C8d8Aa8672Cc099

    PositionRouter: 0x6b8e8107dBC6FECCcD53a60D80790B2Ea1F21612

    OrderBook: 0x5FBB7b7DaAE21df0bbccc6D193F5F26ea3723429

    Reader: 0x5970E0df1627DA15806B276E1ABb27A6DBcE58dB

    RewardReader: 0x60EF791a99e78c4B358D838cB8F9d8ccFb07920D

    OrderBookReader: 0x9eB2295650AA27f32293dA8190a3fEbE21DB52A0

    StakedGmx: 0xeED25Cf3A5322cE77D17cbaa108136c64651ab04

    StakedGlp: 0xB057a7230D447a151510765bB75F36a909172e23

    GlpManager: 0x2551B57d952F6862B1Ab59A2399FA4Cd20c8e34b

    RewardRouter: 0x3Bd078cE71EE675FB9fb1d9941b6A524f822f6e4

    GlpRewardRouter: 0x3Bd078cE71EE675FB9fb1d9941b6A524f822f6e4
    

### Molecule contracts 

    Molecule Controller : 0x4745B31Db6e4526dAcca60AB6cC033B08cadf1FC

    T3 Allow List : 0x8cba906e8c1E1C4154ca7FFd79aEE1B0c9a904c0 

    T3 Sanction List : 0x7Dd61825E3933BA2B2C0EbA98d7663A9A238446F 

  ## Morph Mainnet deployment 

  ### t3-contracts

    GMX (TMX): 0x5682453dC23cB0Ff914Da3A079072202405D1bce

    GLP(TLP): 0x95FF8e2d0B9355E856391C2E234995A1F7F896c5

    Vault: 0x860608Ab3CE0Ef7b668067553E22d8022f22E045

    Router: 0xfe9D564aBaDbB7beC64e712e5ee76585B9C68849

    PositionRouter: 0xD4E4Dc9dFDDF93242561615D2d0096e433ACdE3c

    OrderBook: 0x9D326B0AAfC71e955D7D6904b0D74718eF5098f9

    Reader: 0xA527DD86b7b67CE93a8607dcAf94921e882eB746

    RewardReader: 0xA7449D41913442d918226F48E944d913123CCF28

    OrderBookReader: 0x181DB226B56778c39744707D8aA0fA0545e1a214

    StakedGmx: 0x2D5950382F393875C6aCb791C8a6f039807dDD27

    StakedGlp: 0x92f4917f0dc1C064c8883997b1ea55c7D2B9adfd

    GlpManager: 0x011C7B2Ab03292Fc82D3f90a92E3743f39d06ABc

    RewardRouter: 0x7325eE195B52A7eF5A1F50E14C987d323E9bd4FB

    GlpRewardRouter: 0x7325eE195B52A7eF5A1F50E14C987d323E9bd4FB

### Molecule contracts 

    Molecule Controller : 0x15D7Dee5BDcA10FF2ea7a1a091CAC2936E485365

    AML Sanction List : 0x2F1EFD8e45973AB821b6bc81c0bFD8431Bb5cF1a 

    T3 Allow List : 0x38B65E5900dDD9c7DfFc5BA4A9C271702f8Ba849

## Technical Overiew

- The main components of the platform are:
1. Vault
2. Routers
3. Price Feeds
4. GMX (TMX)
5. GLP (TLP)
6. Molecule Integrations 

### Molecule Integrations 

This provides a technical overview of the integration of the Molecule Controller contract within the T3 system, highlighting its critical role in access management and protocol compliance. The integration's primary focus is embedded within three key contracts of the T3 system: Router, GLP Manager, and OrderBook.

- System-Wide Implementation: The Molecule Controller contract is integrated into the T3 system, primarily focusing on the Router, GLP Manager, and OrderBook contracts. This integration is pivotal for regulating user access and ensuring adherence to predefined protocols.

- Functionality and Scope: The inclusion of the Molecule Controller Contract in these specific contracts is fundamental for maintaining a robust access control mechanism and ensuring consistent protocol compliance across the platform.

- Core Access Control Functions: Each contract (Router, GLP Manager, and OrderBook) incorporates a setMoleculeController function. This function serves as a critical component in controlling user access and maintaining the integrity and security of the T3 system.

- Role of setMoleculeController: This function is integral in gating the T3 system. It ensures that only users who meet the Molecule Protocol's standards have the ability to interact with the core functionalities of the system.

- Compliance Parameters: The system's compliance parameters are defined based on the Chainalysis sanction list and an Access list. The Access list is formulated based on user sign-up activities, ensuring a robust compliance framework.

- User Interaction and Compliance: Only users who are not flagged on the Chainalysis sanction list and are verified through the sign-up process are granted access to the T3 system’s core operations. These operations encompass a range of activities including the creation of long/short positions, execution of swaps, and management of liquidity (both addition and removal).

### Molecule integrations contracts 
1. Router  
2. GLPManager 
3. OrderBook 