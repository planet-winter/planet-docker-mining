mine ETH in a container
=======================

build
-----

  sudo docker build . -t claymore-cuda-miner

optional

  sudo docker build . -t claymore-cuda-miner --build-arg WALLET="0x....",INTENSITY=7


run
---

show options:

  sudo docker run --privileged -p 3333:3333/tcp --gpus all claymore-cuda-miner list

run detached as "service":

  sudo docker run -d --restart unless-stopped --privileged -p 3333:3333/tcp --gpus all -e "WALLET=0xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" -e "INTENSITY=7" claymore-cuda-miner mine-eth-hiveon



