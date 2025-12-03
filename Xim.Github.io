<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ваш IP адрес</title>
    <style>
        body {
            background-color: #000;
            color: #ff0;
            font-family: 'Courier New', monospace;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 24px;
        }
        
        #ip {
            text-shadow: 0 0 10px rgba(255, 255, 0, 0.5);
            letter-spacing: 2px;
        }
    </style>
</head>
<body>
    <div id="ip">IP: Загрузка...</div>

    <script>
        // Получаем IP адрес пользователя
        async function getIP() {
            try {
                // Пробуем получить IP с помощью сервиса ipify
                const response = await fetch('https://api.ipify.org?format=json');
                const data = await response.json();
                document.getElementById('ip').textContent = `IP: ${data.ip}`;
            } catch (error) {
                // Если не удалось получить IP
                document.getElementById('ip').textContent = 'IP: Не удалось определить';
            }
        }
        
        // Запускаем получение IP при загрузке страницы
        window.onload = getIP;
    </script>
</body>
</html>
