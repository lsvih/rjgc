<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%Const dbdns="../"%>
<!--#include file="chk.asp"-->
<!--#include file="../AppCode/Class/Ok3w_Vote.asp"-->
<!--#include file="../AppCode/fun/function.asp"-->
<!--#include file="../AppCode/fun/CreateHtml.asp"-->
<%
Call CheckAdminFlag(1)
pID = Trim(Request.QueryString("pID"))

Set Vote = New Ok3w_Vote
Select Case Trim(Request.Form("action"))
	Case "add"
		Call Vote.Add()
		Call SaveAdminLog("����ͶƱ��" & Vote.Title)
		Call CloseConn()
		Call ActionOk("Sys_Vote.asp?pID=" & pID)
	Case "edit"
		Call Vote.Edit()
		Call SaveAdminLog("�޸�ͶƱ(ID=" & Vote.ID & ")Ϊ��" & Vote.Title)
		Call CloseConn()
		Call ActionOk("Sys_Vote.asp?pID=" & pID)
	Case "del"
		Call Vote.Del()
		Call SaveAdminLog("ɾ��ͶƱ(ID=" & Vote.ID & ")")
		Call CloseConn()
		Call ActionOk("Sys_Vote.asp?pID=" & pID)
End Select
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��̨����ϵͳ</title>
<link rel="stylesheet" type="text/css" href="images/Style.css">
<style type="text/css">
.noB{
	border:0px;
	background-color:#FFFFFF;
	cursor:pointer;
}
.STYLE1 {color: #0000FF}
</style>
</head>

<body>
<!--#include file="top.asp"-->
<br />
<table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
  <tbody>
    <tr>
      <td style="PADDING-LEFT: 2px; HEIGHT: 22px" 
    background="images/tab_top_bg.gif"><table cellspacing="0" cellpadding="0" width="477" border="0">
        <tbody>
          <tr>
            <td width="147"><table height="22" cellspacing="0" cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td width="3"><img id="tabImgLeft__0" height="22" 
                  src="images/tab_active_left.gif" width="3" /></td>
                  <td class="mtitle" 
                background="images/tab_active_bg.gif">ͶƱ����</td>
                  <td width="3"><img id="tabImgRight__0" height="22" 
                  src="images/tab_active_right.gif" 
            width="3" /></td>
                </tr>
              </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr>
      <td bgcolor="#ffffff"><table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
          <tr>
            <td width="1" background="images/tab_bg.gif"><img height="1" 
            src="images/tab_bg.gif" width="1" /></td>
            <td 
          style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" 
          valign="top"><div id="tabContent__0" style="DISPLAY: block; VISIBILITY: visible">
              <table cellspacing="1" cellpadding="1" width="100%" align="center" 
            bgcolor="#8ccebd" border="0">
                <tbody>
                  <tr>
                    <td 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" 
                valign="top" bgcolor="#fffcf7">
<%
If pID="" Then%>			
				      <table border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
				        <form name="form1" method="post" action="">
                        <tr>
                          <td bgcolor="#FFFFFF">����/��Ч��</td>
                          <td bgcolor="#FFFFFF">˵��</td>
                          <td bgcolor="#FFFFFF">����</td>
                          <td bgcolor="#FFFFFF">����</td>
                          <td bgcolor="#FFFFFF">����</td>
                        </tr>
                        <tr>
                          <td bgcolor="#FFFFFF">
                            <input name="Title" type="text" id="Title" size="25" maxlength="225"><br>��ʼ��<input name="bTime" type="text" id="bTime" value="<%=Now()%>" size="20" /><br>������<input name="eTime" type="text" id="eTime" value="<%=Now()+365%>" size="20" /></td>
                          <td bgcolor="#FFFFFF"><textarea name="Content" cols="50" rows="5" id="Content"></textarea></td>
                          <td bgcolor="#FFFFFF"><input name="Value" type="radio" value="0" checked>
                            ��ѡ<br>
                              <input type="radio" name="Value" value="1">
                              ��ѡ</td>
                          <td bgcolor="#FFFFFF"><input name="Xu" type="text" id="Xu" value="0" size="4"></td>
                          <td bgcolor="#FFFFFF"><input name="action" type="hidden" id="action" />
                            <input type="button" name="Submit3" value="�� ��" onClick="javascript:formsubmit(this.form,'add');"></td>
                        </tr>  </form>
                      </table>
				      <br>
				      <table border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                        <tr  bgcolor="#EBEBEB">
                          <td align="center">���</td>
                          <td align="center">����/��Ч��</td>
                          <td align="center">˵��</td>
                          <td align="center">����</td>
                          <td align="center">����</td>
                          <td align="center">ѡ��</td>
                          <td align="center">����</td>
                        </tr>
											<form name="form2" method="post" action="">
                         </form>
<%
Sql = "select * from Ok3w_Vote where pID=0  order by Xu"
Rs.Open Sql,Conn,1,1
Do While Not Rs.Eof
%>						<form name="form2" method="post" action="">
                        <tr bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#EFEFEF';" onMouseOut="this.style.backgroundColor='#FFFFFF';">
                          <td><input name="ID" type="text" id="ID" value="<%=Rs("ID")%>" size="4" readonly="readonly" /></td>
                          <td><input name="Title" type="text" id="Title" value="<%=Rs("Title")%>" size="25" maxlength="225"><br>��ʼ��<input name="bTime" type="text" id="bTime" value="<%=Rs("bTime")%>" size="20" /><br>������<input name="eTime" type="text" id="eTime" value="<%=Rs("eTime")%>" size="20" /></td>
                          <td><textarea name="Content" cols="45" rows="5" id="Content"><%=Rs("Content")%></textarea></td>
                          <td><input name="Value" type="radio" value="0" <%If Rs("Value")=0 Then%>checked<%End If%>>
��ѡ<br>
<input type="radio" name="Value" value="1" <%If Rs("Value")=1 Then%>checked<%End If%>>
��ѡ</td>
                          <td><input name="Xu" type="text" id="Xu" value="<%=Rs("Xu")%>" size="4"></td>
                          <td><a href="?pID=<%=Rs("ID")%>">&gt;&gt;&gt;</a></td>
                          <td><input name="action" type="hidden" id="action" />
                            <input name="Submit2" type="button" onClick="javascript:formsubmit(this.form,'edit');" value="�� ��" />
                            <input name="Submit22" type="button" onClick="javascript:if(!confirm('���Ҫɾ����')) return false;formsubmit(this.form,'del');" value="ɾ ��" /></td>
                        </tr> </form>
<%
	Rs.MoveNext
Loop
Rs.Close
%>						
                      </table>
<%Else%>

<strong>ͶƱ��<%=Conn.Execute("select Title from Ok3w_Vote where ID=" & pID)(0)%>
</strong>
<br />
<table border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
				        <form name="form1" method="post" action="?pID=<%=pID%>">
                        <tr>
                          <td bgcolor="#FFFFFF">����</td>
                          <td bgcolor="#FFFFFF">��Ʊ��</td>
                          <td bgcolor="#FFFFFF">����</td>
                          <td bgcolor="#FFFFFF">����</td>
                        </tr>
                        <tr>
                          <td bgcolor="#FFFFFF">
                            <input name="Title" type="text" id="Title" size="50" maxlength="225">                          </td>
                          <td bgcolor="#FFFFFF"><input name="Value" type="text" id="Value" value="0" size="4"></td>
                          <td bgcolor="#FFFFFF"><input name="Xu" type="text" id="Xu" value="0" size="4"></td>
                          <td bgcolor="#FFFFFF"><input name="action" type="hidden" id="action" />
                            <input name="Content" type="hidden" id="Content" value="#">
                            <input name="pID" type="hidden" id="pID" value="<%=pID%>">
                            <input type="button" name="Submit3" value="�� ��" onClick="javascript:formsubmit(this.form,'add');"></td>
                        </tr>  </form>
                      </table>
				      <br>
				      <table border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
                        <tr  bgcolor="#EBEBEB">
                          <td align="center">����</td>
                          <td align="center">��Ʊ��</td>
                          <td align="center">����</td>
                          <td align="center">����</td>
                        </tr>
											<form name="form2" method="post" action="">
                         </form>
<%
Sql = "select * from Ok3w_Vote where pID=" & pID & " order by Xu"
Rs.Open Sql,Conn,1,1
Do While Not Rs.Eof
%>						<form name="form2" method="post" action="?pID=<%=pID%>">
                        <tr bgcolor="#FFFFFF" onMouseOver="this.style.backgroundColor='#EFEFEF';" onMouseOut="this.style.backgroundColor='#FFFFFF';">
                          <td><input name="Title" type="text" id="Title" value="<%=Rs("Title")%>" size="50" maxlength="225"></td>
                          <td><input name="Value" type="text" id="Value" value="<%=Rs("Value")%>" size="4"></td>
                          <td><input name="Xu" type="text" id="Xu" value="<%=Rs("Xu")%>" size="4"></td>
                          <td><input name="action" type="hidden" id="action" />
                            <input name="Content" type="hidden" id="Content" value="#">
                            <input name="pID" type="hidden" id="pID" value="<%=Rs("pID")%>">
							<input name="ID" type="hidden" id="ID" value="<%=Rs("ID")%>">
                            <input name="Submit2" type="button" onClick="javascript:formsubmit(this.form,'edit');" value="�� ��" />
                            <input name="Submit22" type="button" onClick="javascript:if(!confirm('���Ҫɾ����')) return false;formsubmit(this.form,'del');" value="ɾ ��" /></td>
                        </tr> </form>
<%
	Rs.MoveNext
Loop
Rs.Close
%>						
                      </table>
					  
<%End If%>
<script language="JavaScript" type="text/javascript">
function formsubmit(frm,action)
{
	if(frm.Title.value.trim()=="")
	{
		ShowErrMsg("���ⲻ��Ϊ�գ�������");
		frm.Title.focus();
		return false;
	}
	 
	if(frm.Content.value.trim()=="")
	{
		ShowErrMsg("���ݲ���Ϊ�գ�������");
		frm.Content.focus();
		return false;
	}
	
	frm.action.value = action;
	frm.submit();
}
</script>
</td>
                  </tr>
                </tbody>
              </table>
            </div></td>
            <td width="1" background="images/tab_bg.gif"><img height="1" 
            src="images/tab_bg.gif" width="1" /></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr>
      <td background="images/tab_bg.gif" bgcolor="#ffffff"><img height="1" 
      src="images/tab_bg.gif" width="1" /></td>
    </tr>
  </tbody>
</table>
</body>
</html>
<%
Call CloseConn()
Set Rs = Nothing
Set Admin = Nothing
%>