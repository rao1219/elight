package jspservlet.dao;

import jspservlet.vo.Product;

public interface ProductDAO {
	public Product queryById(String id) throws Exception;
}
