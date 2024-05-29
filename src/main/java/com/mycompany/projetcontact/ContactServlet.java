package com.mycompany.projetcontact;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;

@WebServlet("/contactServlet")
public class ContactServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        ServletContext context = getServletContext();
        if (context.getAttribute("listes") == null) {
            context.setAttribute("listes", new ArrayList<Contact>());
        }
    }

    
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String method = request.getParameter("_method");
        if (method != null && method.equalsIgnoreCase("delete")) {
        handleDelete(request, response); // Appeler une méthode pour traiter la suppression
        } else {
        // Traitement normal du formulaire POST d'ajout de contact
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String compFav = request.getParameter("compFav");

        Contact contact = new Contact(generateUniqueId(), nom, prenom, email, compFav);
        ServletContext context = getServletContext();
        ArrayList<Contact> listes = (ArrayList<Contact>) context.getAttribute("listes");
        listes.add(contact);

        request.setAttribute("listes", listes);
        request.getRequestDispatcher("listeContact.jsp").forward(request, response);
    }
}

private void handleDelete(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String idToDelete = request.getParameter("id");

    ServletContext context = getServletContext();
    ArrayList<Contact> listes = (ArrayList<Contact>) context.getAttribute("listes");

    for (int i = 0; i < listes.size(); i++) {
        if (listes.get(i).getId().equals(idToDelete)) {
            listes.remove(i);
            break;
        }
    }

    request.setAttribute("listes", listes);
    request.getRequestDispatcher("listeContact.jsp").forward(request, response);
}

   


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext context = getServletContext();
        ArrayList<Contact> listes = (ArrayList<Contact>) context.getAttribute("listes");

        request.setAttribute("listes", listes);
        request.getRequestDispatcher("listeContact.jsp").forward(request, response);
    }
    


    private String generateUniqueId() {
        // Implémentation de la génération d'ID unique
        return "ID" + System.currentTimeMillis();
    }
}
