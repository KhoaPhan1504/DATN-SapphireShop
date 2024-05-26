package com.java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.java.entity.OrderDetail;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer>{
	
	/// list order theo sp tăng > giảm
	@Query(value = "SELECT * from orderdetails ORDER BY orderDetailId desc;", nativeQuery = true)
	public List<OrderDetail> lisorderbydesc();

	// Top order nhiều nhất
    @Query(value = "SELECT  p.name ,  p.image, o.productId, SUM(o.quantity) as quantity , p.price, p.discount\r\n"
    		+ "FROM orderdetails o\r\n"
    		+ "INNER JOIN products p ON o.productId = p.productId\r\n"
    		+ "group by productId\r\n"
    		+ "order by quantity desc\r\n"
    		+ "limit 10;", nativeQuery = true)
    public List<Object[]> topOrder();
    
 // thống kê theo sản phẩm được bán ra
    @Query(value = "SELECT p.name ,  \r\n"
    		+ "SUM(o.quantity) as quantity ,\r\n"
    		+ "SUM(o.quantity * o.total_price) as sum,\r\n"
    		+ "AVG(o.total_price) as avg,\r\n"
    		+ "Min(o.total_price) as min, \r\n"
    		+ "max(o.total_price) as max\r\n"
    		+ "FROM orderdetails o\r\n"
    		+ "INNER JOIN products p ON o.productId = p.productId\r\n"
    		+ "GROUP BY p.name;", nativeQuery = true)

    public List<Object[]> repo();
    
    // Thống kê theo thể loại được bán ra
    @Query(value = "SELECT c.categoryName , \r\n"
    		+ "SUM(o.quantity) as quantity ,\r\n"
    		+ "SUM(o.quantity * o.total_price) as sum,\r\n"
    		+ "AVG(o.total_price) as avg, \r\n"
    		+ "Min(o.total_price) as min,\r\n"
    		+ "max(o.total_price) as max \r\n"
    		+ "FROM orderdetails o\r\n"
    		+ "INNER JOIN products p ON o.productId = p.productId\r\n"
    		+ "INNER JOIN categories c ON p.categoryId = c.categoryId\r\n"
    		+ "GROUP BY c.categoryName;", nativeQuery = true)

    public List<Object[]> repoWhereCategory();
    
    // Thống kê các sp từ nhà cung cấp được bán ra
    @Query(value = "SELECT s.brandName , \r\n"
    		+ "SUM(o.quantity) as quantity ,\r\n"
    		+ "SUM(o.quantity * o.total_price) as sum,\r\n"
    		+ "AVG(o.total_price) as avg  ,\r\n"
    		+ "Min(o.total_price) as min  ,\r\n"
    		+ "max(o.total_price) as max \r\n"
    		+ "FROM orderdetails o\r\n"
    		+ "INNER JOIN products p ON o.productId = p.productId\r\n"
    		+ "INNER JOIN brands s ON p.brandId = s.brandId\r\n"
    		+ "GROUP BY s.brandName;", nativeQuery = true)

    public List<Object[]> repoWhereBrands();
    
    // Thống kê sản phẩm theo năm // theo các năm
    @Query(value = "Select YEAR(od.orderDate) ,\r\n"
    		+ "SUM(o.quantity) as quantity ,\r\n"
    		+ "SUM(o.quantity * o.total_price) as sum,\r\n"
    		+ "AVG(o.total_price) as avg  ,\r\n"
    		+ "Min(o.total_price) as min  ,\r\n"
    		+ "max(o.total_price) as max \r\n"
    		+ "FROM orderdetails o\r\n"
    		+ "INNER JOIN orders od ON o.orderId =od.orderId\r\n"
    		+ "GROUP BY YEAR(od.orderDate);", nativeQuery = true)
    public List<Object[]> repoWhereYear();
    
    // Thống kê sản phẩm theo tháng // theo các Tháng
    @Query(value = "Select month(od.orderDate) ,\r\n"
    		+ "SUM(o.quantity) as quantity ,    \r\n"
    		+ "SUM(o.quantity * o.total_price) as sum,\r\n"
    		+ "AVG(o.total_price) as avg  ,\r\n"
    		+ "Min(o.total_price) as min  ,\r\n"
    		+ "max(o.total_price) as max\r\n"
    		+ "FROM orderdetails o\r\n"
    		+ "INNER JOIN orders od ON o.orderId =od.orderId\r\n"
    		+ "GROUP BY month(od.orderDate);", nativeQuery = true)

    public List<Object[]> repoWhereMonth();
    
    // Thống kê sản phẩm theo quý // theo các quý
    @Query(value = "Select QUARTER(od.orderDate),\r\n"
    		+ "SUM(o.quantity) as quantity , \r\n"
    		+ "SUM(o.quantity * o.total_price) as sum,\r\n"
    		+ "AVG(o.total_price) as avg, \r\n"
    		+ "Min(o.total_price) as min,\r\n"
    		+ "max(o.total_price) as max\r\n"
    		+ "FROM orderdetails o\r\n"
    		+ "INNER JOIN orders od ON o.orderId =od.orderId\r\n"
    		+ "GROUP By QUARTER(od.orderDate);", nativeQuery = true)

    public List<Object[]> repoWhereQUARTER();
    
    // Thống kê sản phẩm theo người đặt hàng
   @Query(value = "SELECT c.customerId,\r\n"
   		+ "SUM(o.quantity) as quantity,  \r\n"
   		+ "SUM(o.quantity * o.total_price) as sum,\r\n"
   		+ "AVG(o.total_price) as avg,\r\n"
   		+ "Min(o.total_price) as min, \r\n"
   		+ "max(o.total_price) as max \r\n"
   		+ "FROM orderdetails o\r\n"
   		+ "INNER JOIN orders p ON o.orderId = p.orderId\r\n"
   		+ "INNER JOIN customers c ON p.customerId = c.customerId\r\n"
   		+ "GROUP BY c.customerId;", nativeQuery = true)
   public List<Object[]> reportCustommer();

}
