package net.member.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




public class MemberDAO {
//  싱글턴 적용하기
//  1.자기자신의 참조변수를 static으로 소유
//  2.생성자를 private으로 감춤
//  3.1에 대한 getter를 만들되 1이 null일 때 객체할당

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
	  
      try {     //5.생성자에서 커넥션 얻기
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
  
//로그인 id 검사 함수
	public int isMember(MemberBean cyber) {
		PreparedStatement pstmt = null;
		String sql = "select pw from certification where id=?";
		int result = -1;
		System.out.println("디비확인");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cyber.getId());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("pw").equals(cyber.getPw())) {
					result = 1;
					System.out.println("성공");// 일치.
				} else {
					result = 0;
					System.out.println("실패");// 불일치.
				}
			} else {
				result = -1;// 잘못된 정보 또는 관리자가 아닙니다.
			}
		} catch (Exception ex) {
			System.out.println("isMember 에러: " + ex);
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
	
	//인증 상태 가져오기
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
	        System.out.println("상태 불러오기 완료!");
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
				System.out.println("getDetailMember 작동OK");
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
				System.out.println("getDeatilMember 에러: " + ex);
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
		
		// 회원정보 수정
		public boolean getUpdateMember(MemberBean member) throws Exception {
			String sql = "update certification set state=? where id=?";
			System.out.println("update 중..1");
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				if (member.getId() == null) {// id가 없거나 잘못된 id를 가져온 경우
					return false;
				}

				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, member.getState());
				pstmt.setString(2, member.getId());
				
				System.out.println(pstmt);
				pstmt.executeUpdate();

				System.out.println("update 중..2");

				return true;
			} catch (Exception ex) {
				System.out.println("getUpdateMember 에러 : " + ex);
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
		
		//발급받은 otp 키,url 업데이트
				public boolean getkeyurlUpdate(MemberBean member) throws Exception {
					String sql = "update certification set certification_url=? ,certification_key=? where id=?";
					System.out.println("update 중..1");
					PreparedStatement pstmt = null;
					ResultSet rs = null;

					try {
						if (member.getId() == null) {// id가 없거나 잘못된 id를 가져온 경우
							return false;
						}

						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, member.getCertification_url());
						pstmt.setString(2, member.getCertification_key());
						pstmt.setString(3, member.getId());
						
						System.out.println(pstmt);
						pstmt.executeUpdate();

						System.out.println("update 중..2");

						return true;
					} catch (Exception ex) {
						System.out.println("getkeyurlUpdate 에러 : " + ex);
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
				//otp 비활성화할시 key,url 값 비우기
				public boolean getSateUpdate(MemberBean member) throws Exception {
					String sql = "update certification set certification_url='' ,certification_key='' where id=?";
					System.out.println("update 중..1");
					PreparedStatement pstmt = null;
					ResultSet rs = null;

					try {
						if (member.getId() == null) {// id가 없거나 잘못된 id를 가져온 경우
							return false;
						}

						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, member.getId());
						
						System.out.println(pstmt);
						pstmt.executeUpdate();

						System.out.println("update 중..2");

						return true;
					} catch (Exception ex) {
						System.out.println("getSateUpdate 에러 : " + ex);
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
