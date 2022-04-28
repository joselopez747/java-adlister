import java.util.ArrayList;
import java.util.List;

public class BeanTest {
    public static void main(String[] args) {
        ArrayList<Quote> quotes = new ArrayList<>();
        Author nielGaiman = new Author(1L, "Neil Gaiman");
        Author marcelProust = new Author(2L, "Marcel Proust");

        Quote quote1 = new Quote(1L,"");
        Quote quote2 = new Quote(2L, "");

        quotes.add(quote1);
        quotes.add(quote2);

        for(Quote quote : quotes){
            System.out.println(quote.getAuthor().getAuthor_name() + " said:" + quote.getContent());
        }
    }
}
