const eventCountdown = function() {
    let now = new Date();
    // 초기화 시간 : 10시 00분 00초
    let initTime = new Date(now.getFullYear(), now.getMonth(), now.getDate(), 10, 0, 0);

    // 초기화 시간 까지 남은 시간 (초)
    let timeDifference = Math.floor((initTime - now) / 1000);

    // 값이 음수 일시(현재 시간이 오전10시를 넘을 시) 다음 날 오전 10시로 시간 계산
    if (timeDifference < 0) {
        initTime.setDate(initTime.getDate() + 1);
        timeDifference = Math.floor((initTime - now) / 1000);
    }

    let hours = Math.floor(timeDifference / 3600);
    let minutes = Math.floor((timeDifference % 3600) / 60);
    let seconds = timeDifference % 60;

    // 시분초 html에 업데이트
    document.getElementById('hours').textContent = formatTime(hours);
    document.getElementById('minutes').textContent = formatTime(minutes);
    document.getElementById('seconds').textContent = formatTime(seconds);
}

// 한자리 숫자를 두자리 숫자로 표현 (ex : 8 => 08)
const formatTime = function(time) {
    return time < 10 ? '0' + time : time;
}

// 매 초마다 업데이트 (1초 뒤에 실행)
setInterval(eventCountdown, 1000);

// 처음 실행
eventCountdown();

