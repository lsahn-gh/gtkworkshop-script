# Install

우선 git을 이용하여 repository를 clone합니다.
```
$ git clone https://github.com/memnoth/gtkworkshop-script.git
```

컴퓨터에 GNOME-Builder와 SDK를 설치하기 위해선 우선 flatpak을 설치해야 합니다. 따라서 아래 ``의존성 설치`` 명령어를 확인하여 flatpak을 설치합니다.

### 1. 의존성 설치
```
$ sudo ./prerequisite.sh
```

그 이후에 재부팅을 해줍니다.

### 2. 재부팅
```
$ sudo reboot
```

이제 GNOME-Builder와 SDK를 설치하기 위해 아래 명령어를 입력합니다.
만약 ``Permission Denied`` 오류가 발생한다면 ``sudo``를 이용하여 명령어를 실행합니다.

### 3. GNOME-Builder, SDK 설치
```
$ ./install.sh
```

** flatpak 버전이 1.0.6 미만이면 제거 후 1.0.6 설치 필요

