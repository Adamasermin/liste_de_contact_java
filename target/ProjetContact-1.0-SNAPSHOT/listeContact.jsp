<%@page import="java.util.List"%>
<%@page import="com.mycompany.projetcontact.Contact"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Liste des Contacts</title>
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
            width: 90%;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1.5s ease-in-out;
            max-height: 90vh;
            overflow-y: auto;
        }
        .h1list {
            text-align: center;
            margin-bottom: 20px;
            animation: slideIn 1.5s ease-in-out;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            animation: slideIn 1.8s ease-in-out;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f0f0f0;
        }
        .button {
            display: inline-block;
            margin-top: 20px;
            padding: 15px 30px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            animation: slideIn 2.1s ease-in-out;
        }
        .button:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }
        .buttonlist {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .buttonlist:hover {
            background-color: #c82333;
            transform: scale(1.05);
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
        <h1 class="h1list">Liste des Contacts</h1>
        <table>
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Email</th>
                    <th>Compétence Favorite</th>
                    <th>Supprimer</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Contact> listes = (List<Contact>) request.getAttribute("listes");
                if (listes != null) {
                    for (Contact contact : listes) {
                        %>
                        <tr>
                            <td><%= contact.getNom() %></td>
                            <td><%= contact.getPrenom() %></td>
                            <td><%= contact.getEmail() %></td>
                            <td><%= contact.getCompFav() %></td>
                            <td>
                                <form action="contactServlet" method="post">
                                    <input type="hidden" name="id" value="<%= contact.getId() %>">
                                    <input type="hidden" name="_method" value="delete">
                                    <button class="buttonlist" type="submit">Supprimer</button>
                                </form>
                            </td>
                        </tr>
                        <%
                    }
                }
                %>
            </tbody>
        </table>
        <div>
            <a href="formulaire.jsp" class="button">Ajouter</a>
        </div>
    </div>
</body>
</html>
