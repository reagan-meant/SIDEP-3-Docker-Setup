# ci-hie-demo


## How-Tos

### Pre-Requesites 
1. Git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
2. Git Large File Storage: https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage
3. Docker: https://docs.docker.com/engine/install/

### Startup

```sh
git clone https://github.com/I-TECH-UW/ci-hie-demo.git

git lfs fetch

git lfs checkout

git lfs pull

docker compose up -d
```
In the file found at "./configs/opencr/config.json" change the
installed flag under app to false to load configs for Opencr
"app": {
    "port": 3000,
    "installed": false
}


### Resetting and Clearing OpenCR 
```sh
docker stop opencr opencr-fhir es
docker system prune --volumes
docker compose up -d 
```
### You should be able to acces the Sigdep (OpenMRS) ,OpenHIM and Hapi-Fhir instances  at the following urls
| Instance  |     URL       | credentials (user : password)|
|---------- |:-------------:|------:                       |
| Sigdep (OpenMRS)   | http://localhost:8080/openmrs%7C admin : Dppeis@pnls_16 |
| OpenHIM   | http://localhost:9000  |  root@openhim.org : openhim |
| Hapi FHir | http://localhost:8090 |    hapi : hapi123| 
| OpenCR    | http://localhost:3000/crux%7C  root@intrahealth.org  : intrahealth|

### Possible challenges
Ensure the .db file at the root has permissions to allow docker to write files