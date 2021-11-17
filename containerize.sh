cd user-authentication-service
docker build --build-arg dataIP=172.31.35.190 -t authentication .
docker tag authentication:latest hp2304/vidhyapak:authentication
docker push hp2304/vidhyapak:authentication

cd ../UIService
docker build --build-arg redIP=172.31.89.220 --build-arg hIP=3.221.193.122 -t userinterface .
docker tag userinterface:latest hp2304/vidhyapak:userinterface
docker push hp2304/vidhyapak:userinterface

cd ../user-information
docker build --build-arg dataIP=172.31.35.190 --build-arg redIP=172.31.89.220 -t userinformation .
docker tag userinformation:latest hp2304/vidhyapak:userinformation
docker push hp2304/vidhyapak:userinformation

cd ../Video-Upload-Service
docker build --build-arg dataIP=172.31.35.190 --build-arg hIP=3.221.193.122 -t videoupload .
docker tag videoupload:latest hp2304/vidhyapak:videoupload
docker push hp2304/vidhyapak:videoupload

cd ../VideoProcessing
docker build -t videoprocessing .
docker tag videoprocessing:latest hp2304/vidhyapak:videoprocessing
docker push hp2304/vidhyapak:videoprocessing

cd ../VideoStreamingService
docker build --build-arg dataIP=172.31.35.190 --build-arg redIP=172.31.89.220 -t streaming .
docker tag streaming:latest hp2304/vidhyapak:streaming
docker push hp2304/vidhyapak:streaming

cd ..