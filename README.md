 
# CSVSERVER_LIST 




1. Running the given commandsy:
   ```bash
   docker pull infracloudio/csvserver:latest 
   docker pull prom/prometheus:v2.45.2
   ```
## PART I COMMANDS

1. Creating a gencsv.sh file to generate the inputFile

   ```bash
   #!/bin/bash
   
    start_index=2
    end_index=8


    > inputFile

    # Generate entries and append them to inputFile
    for ((i=start_index; i<=end_index; i++)); do
        rand_num=$(shuf -i 1-1000 -n 1)  # Generate a random number between 1 and 1000
        echo "$i, $rand_num" >> inputFile
    done
    
    echo "File 'inputFile' generated with entries from $start_index to $end_index."
    e
   ```

2. Command to run the gencsv.sh file and creating a inputFile

   ```bash
   chmod +x gencsv.sh
   ```

3. This Command will creating a inputFile
    ```bash
   ./gencsv.sh 2 8
   ```

4. The Shell will start running the container
    ```bash
   docker run -v "/root/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest
   ```
5. The Shell will start running the container in background
    ```bash
   docker run -d -v "/root/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest
   ```

6. Shell access to the container
    ```bash
   docker exec -it 4c5d /bin/bash
   ```

7. This will check on which the application is listening
    ```bash
     netstat -tuln
   ```
    
8. This will remove the running container

   ```bash
   docker stop 4c5d
   docker rm 4c5d
   ```

8. Set the environment variable CSVSERVER_BORDER to have value Orange

   ```bash
   docker run -d -p 9300:9300 -e CSVSERVER_BORDER=Orange -v "/root/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest

   ```

8. Application running on this address

   ```bash
   https://192.168.0.18:9300
   ```

## PART II COMMANDS

1. to run the docker compose file 

   ```bash
   docker-compose up -d
   ```


## PART III COMMANDS

1. Ensure no containers are running from the previous setup 

   ```bash
   docker-compose down
   ```
1. To run the docker compose file 

   ```bash
   docker-compose up -d
   ```

8. Application running on this address

   ```bash
   https://192.168.0.18:9090
   ```


Individual Solution of each part are present in the solution folder
