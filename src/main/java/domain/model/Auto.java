package domain.model;

public class Auto {
    String naam;
    int jaartal;
    boolean manueel;


    public Auto(String naam, int jaartal, boolean manueel){
        this.naam = naam;
        this.jaartal = jaartal;
        this.manueel = manueel;
    }

    public String getNaam() {
        return naam;
    }

    public int getJaartal() {return jaartal;}

    public String getManueel() {if (manueel) return "Ja" ;
                                else return "nee";}

    public void setNaam(String naam) {
        if (naam == null || naam.isEmpty()) {
            throw new IllegalArgumentException("Geen geldige naam");
        }
        this.naam = naam;
    }

    public void setJaartal(int jaar) {
        if (jaar == 0) {
            throw new IllegalArgumentException("Geen geldige naam");
        }
        this.jaartal = jaar;
    }
    public void setManueel(boolean x) {
        this.manueel = x;
    }


}
