
  const provider = new ethers.providers.Web3Provider(
    window.ethereum,
    "rinkeby"
  );

  // await provider.send("eth_requestAccounts", []).then();
  const accounts = await provider.listAccounts();
  // console.log(accounts);

  const signer = provider.getSigner(accounts[0]);
  console.log(signer._address);

  addresses = ["0x8ca2d9f8818b3f8dbc10a5bef5557f73069516b7","0xcd6701515a90c32f4d40d8c6b370a1fa51712794", "0x649dA576E1F4F4ac55ff0f47B8ebF6b1C53398aa"];
  address = "0xAC883455E3464307DD61C1eE6700F045842b85f3";
  const damn = await new ethers.Contract(address, abi, signer);
  // NFTea.connect(signer);
  // console.log(NFTea);
  const tx = await damn.airdrop(addresses);
  await tx.wait();
  console.log(tx);
}

main();
