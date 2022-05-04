import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{
    private Connection connection;

    public MySQLAdsDao(){
        try {
            Config config = new Config();
            // Get the driver into our app
            DriverManager.registerDriver(new Driver());
            // Create the Connection object
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException sqle){
            sqle.printStackTrace();
        }
    }


    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM codeup_test_db.ads");
            while (rs.next()) {
                Ad ad = new Ad(
                        rs.getLong("id"),
                        rs.getString("title"),
                        rs.getString("description")
                );
                ads.add(ad);
            }
        } catch (SQLException sqle){
                throw new RuntimeException("error connecting to db", sqle);
            }
            return ads;
        }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}
