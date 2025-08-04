# Suricata

suricata의 docker container 입니다.  
[jasonish/suricata](https://github.com/jasonish/docker-suricata)를 base 이미지로 사용했습니다.

## Build

build 폴더 내 Dockerfile 참조하시기 바랍니다.

## 변경사항

1. 실행은 --af-packet 모드로 실행됩니다. 변경은 build/start.sh 파일을 편집하시거나 docker-compose의 command를 활용하시기 바랍니다. 단, "/usr/sbin/crond -n"를 실행하여 내부 cron 프로세스가 동작하도록 구성해주세요.
2. 내부적으로 cron이 실행되도록 구성했습니다. 내부 cron은 크게 두개를 실행합니다.
- Log Rotation을 실행하도록 구축했습니다. 매일 새벽 1시(서버 시간)마다 Log rotation을 실행합니다. [Log Rotation](https://github.com/jasonish/docker-suricata?tab=readme-ov-file#log-rotation) 섹션을 참조하세요.
- 자동적으로 Update를 실행하도록 구축했습니다. 매일 새벽 2시(서버 시간)마다 update를 실행합니다. [Suricata-Update](https://github.com/jasonish/docker-suricata?tab=readme-ov-file#suricata-update) 섹션을 참조하세요.

그 외 달라진 점은 없습니다.

## 유의사항

docker-compose.yml 파일을 그대로 사용하시면 로컬에 config 폴더과 log 폴더가 생성됩니다.  
둘 다 별도 볼륨을 생성하고 해당 볼륨을 통해 접근하도록 구성하시는 것을 추천드립니다.
