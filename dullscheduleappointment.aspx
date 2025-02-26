<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CareConnect Hospital</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #e9f7f0; /* Light green */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            z-index: -1;
        }

        .frame {
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(20px);
            width: 400px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .header {
            background-color: #013220;
            color: white;
            padding: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            font-weight: bold;
        }

        .buttons {
            margin-top: 20px;
        }

        button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 5px;
        }

        .blue-btn {
            background-color: #007BFF;
            color: white;
        }

        .green-btn {
            background-color: #013220;
            color: white;
        }

        .home-box {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            height: 100vh;
            padding: 30px;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="home-box">
        <div class="overlay"></div>  
        <div class="frame">
            <div class="header">CareConnect Hospital</div>
            <p>Appointment with <b>doctor name</b> at <b>time</b> successfully booked</p>
            <div class="buttons">
                <button class="blue-btn"href="RescheduleAppointment.aspx">Reschedule</button>
                <button class="blue-btn">OK</button>
            </div>
        </div>
    </div>
</body>
</html>
