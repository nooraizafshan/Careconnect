<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CareConnect Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e9f7f0; /* Light green */
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
        }

        .frame {
            background: white;
            width: 400px;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .header {
            background-color: #013220;
            color: white;
            padding: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            font-weight: bold;
            font-size: 18px;
        }

        .stars {
            font-size: 30px;
            cursor: pointer;
            margin: 15px 0;
        }

        .stars span {
            display: inline-block;
            width: 40px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            font-size: 30px;
            color: transparent;
            border: 2px solid #0D6EFD; /* Blue outline */
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
        }

        .stars span::before {
            content: '★';
            color: transparent;
            transition: color 0.3s ease-in-out;
        }

        .stars span.active::before,
        .stars span:hover::before {
            color: #0D6EFD; /* Fill blue when clicked */
        }

        .buttons {
            margin-top: 15px;
        }

        button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 5px;
        }

        .green-btn {
            background-color: #013220;
            color: white;
        }
    </style>
</head>
<body>

    <!-- Feedback Form -->
    <div class="frame">
        <div class="header">Submit Your Feedback</div>
        <div class="stars">
            <span data-value="1"></span>
            <span data-value="2"></span>
            <span data-value="3"></span>
            <span data-value="4"></span>
            <span data-value="5"></span>
        </div>
        <input type="hidden" id="rating" value="0"> <!-- Stores the rating value -->
        <div class="buttons">
            <button class="green-btn" onclick="submitFeedback()">Submit</button>
        </div>
    </div>

    <script>
        const stars = document.querySelectorAll('.stars span');
        let selectedRating = 0;

        stars.forEach(star => {
            star.addEventListener('click', function () {
                selectedRating = this.getAttribute('data-value');
                document.getElementById('rating').value = selectedRating;

                stars.forEach((s, index) => {
                    if (index < selectedRating) {
                        s.classList.add('active');
                    } else {
                        s.classList.remove('active');
                    }
                });
            });
        });

        function submitFeedback() {
            if (selectedRating > 0) {
                alert(`Thank you for rating us ${selectedRating} stars!`);
            } else {
                alert("Please select a rating before submitting.");
            }
        }
    </script>

</body>
</html>
