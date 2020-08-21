const DappToken = artifacts.require("DappToken.sol");

contract('DappToken', function(accounts) {

        it('initializesthe contract with the correct values',function(){
                return DappToken.deployed().then(function(instance){
                        tokenInstance=instance;
                        return tokenInstance.name();
        }).then(function(name){
                assert.equal(name,"Le Token", 'has the correct name')
                return tokenInstance.symbol();
        }).then(function(symbol){
                assert.equal(symbol, "TKN", "has the correct symbol");
                return tokenInstance.standard();
        }).then(function(standard){
                assert.equal(standard, "Le Token v1.0", "has the correct standard");
        })
        });
        it('allocates the total initial supply upon deployment', function() {
        return DappToken.deployed().then(function(instance){
                tokenInstance=instance;
                return tokenInstance.totalSupply();
        }).then(function(totalSupply){
                assert.equal(totalSupply.toNumber(),1000000, 'sets the total supply to 1,000,000');
                return tokenInstance.balanceOf(accounts[0]);
        }).then(function(adminBalance){
                assert.equal(adminBalance.toNumber(),1000000, 'it allocates the initial supply to admin')
        });
        });

        it('transfers token ownership', function(){
                return DappToken.deployed().then(function(instance){
                        tokenInstance = instance;
                        return tokenInstance.transfer.call(accounts[1], 99999999999);
                }).then(assert.fail).catch(function(error){
                        assert(error.message.indexOf('revert') >=0, "error message must contain revert");
                        return tokenInstance.transfer(accounts[1], 250000),{ from: accounts[0]};
                }).then(function(receipt){
                        return tokenInstance.balanceOf(accounts[1]);
                }).then(function(balance){
                        assert.equal(balance.toNumber(), 250000, "is adding amount to the receiving account");
                        return tokenInstance.balanceOf(accounts[0]);
                }).then(function(balance){
                        assert.equal(balance.toNumber(), 750000, "is subtracting amount from sending account");
                });
        });
});