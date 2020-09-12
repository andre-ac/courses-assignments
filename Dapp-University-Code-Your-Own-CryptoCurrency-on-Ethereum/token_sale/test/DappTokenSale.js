var DappTokenSale = artifacts.require("./DappTokenSale.sol");

contract('DappTokenSale', function(accounts){
        var tokenSaleInstance;

        it('initializes the contract with the correct values',function() {
                return DappTokenSale.deployed().then(function(instance) {
                        tokenSaleInstance = instance;
                        return tokenSaleInstance.address;
                }).then(function(address){
                        assert.notEqual(address, 0x0, 'has contract address');
                        //return tokenSaleInstance.tokenContract();
                });
        });

        }
);