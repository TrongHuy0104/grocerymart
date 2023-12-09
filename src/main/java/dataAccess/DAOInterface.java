/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import java.util.ArrayList;

/**
 *
 * @author Trong Huy
 */
public interface DAOInterface<T> {
	
	public ArrayList<T> selectAll();
	
	public T selectById(T t);
	
	public void insert(T t);
	
	public void insertAll(ArrayList<T> arr);
	
	public void delete(T t);
	
	public void deleteAll(ArrayList<T> arr);
	
	public void update(T t);
}