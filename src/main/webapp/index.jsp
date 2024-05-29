<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Accueil</title>
    <style>
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            color: #333;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 500px;
            animation: fadeIn 1.5s ease-in-out;
        }
        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
            animation: slideIn 1.5s ease-in-out;
        }
        p {
            font-size: 1.2em;
            margin-bottom: 30px;
            animation: slideIn 1.8s ease-in-out;
        }
        .button {
            background-color: #007bff;
            color: #fff;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            animation: slideIn 2.1s ease-in-out;
            display: inline-block;
        }
        .button:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes slideIn {
            from { transform: translateY(30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Découvrez votre espace de contact personnalisé</h1>
        <p>Gérez vos listes en toute simplicité.</p>
        <a href="formulaire.jsp" class="button">Cliquez ici</a>
    </div>
</body>
</html>
