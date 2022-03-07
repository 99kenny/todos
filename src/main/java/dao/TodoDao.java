package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import dto.Todo;

public class TodoDao {
	private static String dburl = "jdbc:mysql://localhost:3306/connectdb?serverTimezone=Asia/Seoul&useSSL=false";
	private static String dbUser = "connectuser";
	private static String dbpasswd = "connectuser123!@#";
	
	public void closeJdbc(Connection conn, PreparedStatement ps, ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public int addTodo(String title, String name, int sequence) {
		Connection conn = null;
		PreparedStatement ps = null;
		int addcount = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "insert into todo(title, name, sequence) values(?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(1, name);
			ps.setInt(3, sequence);
			
			addcount = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeJdbc(conn, ps, null);
		}
		return addcount;
	}
	
	public List<Todo> getTodos() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<Todo> list = new ArrayList<Todo>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "select * from todo order by desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			try {
				
				while(rs.next()) {
					System.out.println("rs");
					long id = rs.getLong("id");
					String title = rs.getString("title");
					String name = rs.getString("name");
					int sequence = rs.getInt("sequence");
					String type = rs.getString("type");
					Timestamp regdate = rs.getTimestamp("regdate");
					Todo todo = new Todo(id, title, name, sequence, type, regdate);
					list.add(todo);
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeJdbc(conn, ps, rs);
		}
		return list;
	}
	
	public List<Todo> getTypeTodo() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<Todo> list = new ArrayList<Todo>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "select * from todo where type='TODO' order by regdate desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			try {
				
				while(rs.next()) {
					long id = rs.getLong("id");
					String title = rs.getString("title");
					String name = rs.getString("name");
					int sequence = rs.getInt("sequence");
					String type = rs.getString("type");
					Timestamp regdate = rs.getTimestamp("regdate");
					Todo todo = new Todo(id, title, name, sequence, type, regdate);
					list.add(todo);
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeJdbc(conn, ps, rs);
		}
		return list;
	}
	
	public List<Todo> getTypeDoing() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<Todo> list = new ArrayList<Todo>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "select * from todo where type='DOING' order by regdate desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			try {
				
				while(rs.next()) {
					System.out.println("rs");
					long id = rs.getLong("id");
					String title = rs.getString("title");
					String name = rs.getString("name");
					int sequence = rs.getInt("sequence");
					String type = rs.getString("type");
					Timestamp regdate = rs.getTimestamp("regdate");
					Todo todo = new Todo(id, title, name, sequence, type, regdate);
					list.add(todo);
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeJdbc(conn, ps, rs);
		}
		return list;
	}
	
	public List<Todo> getTypeDone() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<Todo> list = new ArrayList<Todo>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbUser, dbpasswd);
			String sql = "select * from todo where type='DONE' order by regdate desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			try {
				
				while(rs.next()) {
					System.out.println("rs");
					long id = rs.getLong("id");
					String title = rs.getString("title");
					String name = rs.getString("name");
					int sequence = rs.getInt("sequence");
					String type = rs.getString("type");
					Timestamp regdate = rs.getTimestamp("regdate");
					Todo todo = new Todo(id, title, name, sequence, type, regdate);
					list.add(todo);
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeJdbc(conn, ps, rs);
		}
		return list;
	}
}
