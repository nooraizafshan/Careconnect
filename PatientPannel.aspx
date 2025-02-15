<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #e9f7f0;
        }


        .navbar {
            display: flex;
            justify-content: center;
            background-color: #003B32;
            color: white;
            padding: 15px 0;
        }


        .container {
            width: 90%;
            max-width: 1200px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }


        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: white;
            text-decoration: none;
        }


        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
            padding: 0;
            margin: 0;
        }

            .nav-links li {
                display: inline;
            }

                .nav-links li a {
                    color: white;
                    text-decoration: none;
                    font-size: 1rem;
                    padding: 8px 12px;
                    transition: background 0.3s;
                }

                    .nav-links li a:hover {
                        background-color: #00594D;
                        border-radius: 5px;
                    }


        .btn-signup {
            background-color: #0D6EFD;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            border: none;
            cursor: pointer;
        }

        .sidebar {
            height: 100vh;
            width: 20%;
            background-color: rgba(0, 123, 255, 0.50);
            display: flex;
            flex-direction: column;
            border: 2px solid white;
        }

        .boxes {
            display: flex;
            flex-direction: row;
        }

        .btn-sidebar {
            width: 200px;
            height: 50px;
            border: 2px solid #fff;
            margin: 16px;
            padding: 10px;
            font-weight: bold;
            font-size: 16px;
            color: white;
            background-color: #003B32;
        }

            .btn-sidebar:hover {
                background-color: #00594D;
                border-radius: 5px;
                border-color: white;
            }

        .content-center {
            display: flex;
            flex-direction: row;
            margin-top: 40px;
            margin-left: 40px;
            position: relative;
            gap: 20px;
        }

        .box1 {
            background-color: rgba(0, 123, 255, 0.50);
            height: 50px;
            width: 200px;
            font-size: 22px;
            font-weight: 900;
            padding: 40px;
        }

            .box1 a {
                text-decoration: none;
                color: white;
            }

        .box2 {
            background-color: rgba(0, 123, 255, 0.50);
            height: 50px;
            width: 200px;
            font-size: 22px;
            font-weight: 900;
            padding: 40px;
        }

            .box2 a {
                text-decoration: none;
                color: white;
                text-align: center;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Navbar -->
            <nav class="navbar">
                <div class="container">
                    <a href="Home.aspx" class="logo" style="color: #ffff;">CareConnect Hospital</a>
                    <ul class="nav-links">
                        <li><a href="#" style="color: #fff;">Dashboard</a></li>
                        <li><a href="Home.aspx" class="btn-signup">Sign Out</a></li>
                    </ul>
                </div>
            </nav>
            <div class="boxes">
                <div class="sidebar">
                    <button class="btn-sidebar" aria-autocomplete="none">Manage patient</button>
                    <button class="btn-sidebar">Manage Doctors</button>
                    <button class="btn-sidebar">Manage Appointments</button>
                </div>
                <div class="content-center">
                    <div class="box1">
                        <a href="#">Admit Patient</a>
                    </div>
                    <div class="box2">
                        <a href="#">Manage Patient</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
