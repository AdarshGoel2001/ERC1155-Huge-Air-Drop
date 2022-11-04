To prepare for airdrop

1. Upload your image or GIF to pinata
2. Write a json object of the format-
   {
   "name": "adarsh Goel",
   "image": "https://gateway.pinata.cloud/ipfs/QmXkcZ9kKqAWE9KBFYVrgtd5R5fkfW6qLEPgUxGzrXDqjF",
   "description": "please ho ja upload"
   }
   Or use EIP1155 documentation

3. Create similar two json objects properly formatted. Name them 1.json 2.json
4. Create a CAR file using https://car.ipfs.io/
5. Upload CAR to https://nft.storage/
6. Enter the gateway link replacing with URi in constructor of carrier.sol contract.
7. Deploy using REMIX. Ignore all the hardhat stuff. Use addresses array for testing given. Create an array of addresses to airdrop to. KEep them reasonably numbered, under 1000.
8. USefunction airdrop, input array and deploy. Search on opensea for results
