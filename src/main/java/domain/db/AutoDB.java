import domain.model.Auto;
import java.util.ArrayList;

public class AutoDB {

    private ArrayList<Auto> autos = new ArrayList<>();

    public AutoDB() {
        this.voegToe(new Auto("Nissan 240SX", 1997, true));
        this.voegToe(new Auto("Audi A7", 2013, false));
        this.voegToe(new Auto("BMW M3", 2009, true));
        this.voegToe(new Auto("Tesla Model S", 2018, false));
    }

    public void voegToe(Auto auto) {
        if (auto == null)
            throw new IllegalArgumentException("Mag niet leeg zijn.");
        if (vind(auto.getNaam()) != null)
            throw new IllegalArgumentException("Je hebt deze al toegevoegd.");
        autos.add(auto);
    }

    public Auto vind(String naam) {
        if (naam == null || naam.isEmpty())
            throw new IllegalArgumentException("Naam mag niet leeg zijn");
        for (Auto auto : autos) {
            if (auto.getNaam().equals(naam))
                return auto;
        }
        return null;
    }

    public ArrayList<Auto> vindAlle() {
        return autos;
    }

}