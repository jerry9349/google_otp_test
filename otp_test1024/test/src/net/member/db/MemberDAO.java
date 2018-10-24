package net.member.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




public class MemberDAO {
//  �̱��� �����ϱ�
//  1.�ڱ��ڽ��� ���������� static���� ����
//  2.�����ڸ� private���� ����
//  3.1�� ���� getter�� ����� 1�� null�� �� ��ü�Ҵ�

//  1.
  private static MemberDAO instance;
//  3.
  public static MemberDAO getInstance(){
      if(instance == null)
          instance = new MemberDAO();
      return instance;
  }
//  4.
  private Connection conn;
  private static String URL="jdbc:mysql://211.43.203.81/dbdamon01";
  private static String USERNAME="damon01";
  private static String PASSWORD="damon123!!";
  
  ResultSet rs;
//  2.
  
  
  
  
  public MemberDAO(){
	  
      try {     //5.�����ڿ��� Ŀ�ؼ� ���
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
      } catch (ClassNotFoundException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
      }
       catch (SQLException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
      }
  }
  
//�α��� id �˻� �Լ�
	public int isMember(MemberBean cyber) {
		PreparedStatement pstmt = null;
		String sql = "select pw from certification where id=?";
		int result = -1;
		System.out.println("���Ȯ��");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cyber.getId());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("pw").equals(cyber.getPw())) {
					result = 1;
					System.out.println("����");// ��ġ.
				} else {
					result = 0;
					System.out.println("����");// ����ġ.
				}
			} else {
				result = -1;// �߸��� ���� �Ǵ� �����ڰ� �ƴմϴ�.
			}
		} catch (Exception ex) {
			System.out.println("isMember ����: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}

		return result;
	}
	
	//���� ���� ��������
	  public int certification_check(String id){
	    int state = 0;
	    PreparedStatement pstmt = null;
		ResultSet rs = null;
	    try {
	       
	      String sql = "select state from certification where id =?";
	      pstmt = conn.prepareStatement(sql);
	      pstmt.setString(1, id);
	      rs = pstmt.executeQuery();
	      if(rs.next()){
	    	 state = rs.getInt(1);
	        System.out.println("���� �ҷ����� �Ϸ�!");
	      }
	    } catch (Exception e){
	      e.printStackTrace();
	    } finally {
	    	if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
	    }
	    return state;
	  }
	  
	// mypage
		public MemberBean getDetailMember(String id) {
			String sql = "select * from certification where id=?";
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				System.out.println("getDetailMember �۵�OK");
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				rs.next();

				MemberBean member = new MemberBean();

				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setCertification_key(rs.getString("certification_key"));
				member.setCertification_url(rs.getString("certification_url"));
				member.setState(rs.getInt("state"));
				
				return member;
			} catch (Exception ex) {
				System.out.println("getDeatilMember ����: " + ex);
			} finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException ex) {
					}
			}

			return null;
		}
		
		// ȸ������ ����
		public boolean getUpdateMember(MemberBean member) throws Exception {
			String sql = "update certification set state=? where id=?";
			System.out.println("update ��..1");
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				if (member.getId() == null) {// id�� ���ų� �߸��� id�� ������ ���
					return false;
				}

				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, member.getState());
				pstmt.setString(2, member.getId());
				
				System.out.println(pstmt);
				pstmt.executeUpdate();

				System.out.println("update ��..2");

				return true;
			} catch (Exception ex) {
				System.out.println("getUpdateMember ���� : " + ex);
			} finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException ex) {
					}
			}
			return false;
		}
		
		//�߱޹��� otp Ű,url ������Ʈ
				public boolean getkeyurlUpdate(MemberBean member) throws Exception {
					String sql = "update certification set certification_url=? ,certification_key=? where id=?";
					System.out.println("update ��..1");
					PreparedStatement pstmt = null;
					ResultSet rs = null;

					try {
						if (member.getId() == null) {// id�� ���ų� �߸��� id�� ������ ���
							return false;
						}

						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, member.getCertification_url());
						pstmt.setString(2, member.getCertification_key());
						pstmt.setString(3, member.getId());
						
						System.out.println(pstmt);
						pstmt.executeUpdate();

						System.out.println("update ��..2");

						return true;
					} catch (Exception ex) {
						System.out.println("getkeyurlUpdate ���� : " + ex);
					} finally {
						if (rs != null)
							try {
								rs.close();
							} catch (SQLException ex) {
							}
						if (pstmt != null)
							try {
								pstmt.close();
							} catch (SQLException ex) {
							}
					}
					return false;
				}
				//otp ��Ȱ��ȭ�ҽ� key,url �� ����
				public boolean getSateUpdate(MemberBean member) throws Exception {
					String sql = "update certification set certification_url='' ,certification_key='' where id=?";
					System.out.println("update ��..1");
					PreparedStatement pstmt = null;
					ResultSet rs = null;

					try {
						if (member.getId() == null) {// id�� ���ų� �߸��� id�� ������ ���
							return false;
						}

						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, member.getId());
						
						System.out.println(pstmt);
						pstmt.executeUpdate();

						System.out.println("update ��..2");

						return true;
					} catch (Exception ex) {
						System.out.println("getSateUpdate ���� : " + ex);
					} finally {
						if (rs != null)
							try {
								rs.close();
							} catch (SQLException ex) {
							}
						if (pstmt != null)
							try {
								pstmt.close();
							} catch (SQLException ex) {
							}
					}
					return false;
				}

}
