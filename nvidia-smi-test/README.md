test nvidia-smi in a container
------------------------------

 sudo docker build . -t nvidia-smi-test
 
 sudo docker run --privileged --gpus all nvidia-smi-test
