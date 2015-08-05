package jspservlet.dao;

import jspservlet.vo.ItemCollection;


public interface CollectionDAO {
	public ItemCollection queryByUsername(String username) throws Exception;
	public int addCollection(String user, String type);
}
