package com.mycompany.projetcontact;

public class Contact {
    private final String id;
    private String nom;
    private String prenom;
    private String email;
    private String compFav;

    public Contact(String id, String nom, String prenom, String email, String compFav) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.compFav = compFav;
    }

    public String getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCompFav() {
        return compFav;
    }

    public void setCompFav(String compFav) {
        this.compFav = compFav;
    }
}
