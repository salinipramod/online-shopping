package bean;
import java.sql.*;
import java.util.*;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
public class PurchaseDao {
	public static int purchase (PurchaseBean bean ) {
		System.out.println("Enterd in to purchaseDao.purchase method.");
		int status = 0;
		try {
			final ZoneId zone = ZoneId.of("Asia/Kolkata");
			Instant i = LocalDateTime.now().atZone(zone).toInstant();
			Timestamp ts = Timestamp.from(i);
			Connection con= ConnectionProvider.getCon();
			PreparedStatement ps =con.prepareStatement("insert into purchase_details value (?,?,?,?,?)");
		     ps.setInt(1, getPurchaseId())	;
		     ps.setString(2, bean.getUserId());
		     ps.setString(3, bean.getProductId());
		     ps.setString(4, bean.getProductName());
		     ps.setTimestamp(5, ts);
		     System.out.println("Inside purchaseDao.purchase method. query :"+ps);
		     status = ps.executeUpdate();
		     System.out.println("Inside purchaseDao.purchase method. status :"+status);
	}catch(Exception e) {
		System.out.println("Exception in purchaseDao.purchase method. error :"+e.getMessage());
		return 0;
	}
		return status;

}

	private static int getPurchaseId() {
		Random r = new Random();
		Integer pId = r.nextInt(100000);
		return pId;
	}
}
