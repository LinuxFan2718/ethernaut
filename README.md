# ethernaut
https://ethernaut.openzeppelin.com/

# links

[openzeppelin docs](https://docs.openzeppelin.com/contracts/3.x/)

[openzeppelin developing smart contracts](https://docs.openzeppelin.com/learn/developing-smart-contracts)

[using javascript to interact with contracts](https://docs.openzeppelin.com/learn/deploying-and-interacting#interacting-programmatically)

[web3 docs](https://web3js.readthedocs.io/en/v1.2.9/)

# setup

```bash
git clone git@github.com:LinuxFan2718/ethernaut.git
npm install @openzeppelin/contracts
```

# start the blockchain

```sh
npx ganache-cli --deterministic
```

## migrate blockchain

```sh
npx truffle migrate --network development
```

## run  some javascript

```sh
npx truffle exec --network development ./scripts/instance.js
```

# use truffle cli

```sh
npx truffle console --network development
```