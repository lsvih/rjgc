<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="inc/clsCache.asp"-->

<%
   Dim myCache
   Set myCache=new SK_clsCache
Call CleanCache
	  
	  Sub CleanCache()
		With Response
		  .Write "<html>"
		  .Write "<head>"
		  .Write "<title>�������</title>"
		  .Write "<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"">"
		  .Write "<link href=""css/Admin_Style.css"" rel=""stylesheet"" type=""text/css"">"
		  .Write "</head>"
		  .Write "<body leftmargin=""0"" topmargin=""0"" marginwidth=""0"" marginheight=""0"">"
		
					.Write "    <table width=""95%"" style=""MARGIN-TOP: 3px"" border=""0"" align=""center""cellspacing=""1"" cellpadding=""1"" class=""tableBorder"">"
					.Write "    <tr height=24 class='Title'><td width='550' align='center'><b>���¶���</b></td></tr>"
		.Write "    <tr height=24 class='Title'><td width='40' align=center>"	
		For Each Cacheobj in Application.Contents
			Response.Write(Cacheobj) &"</br >"
			DelCahe(Cacheobj)
		Next
		Application.Lock   
 		Application.Contents.RemoveAll   
  		Application.Unlock
		.Write "</td></tr>"  
		.Write "<script>function back(){alert('���л�������꣬��ȷ�����أ�');history.back();}setTimeout('back()',800);</script>"
		.Write "</body>"
		.Write "</html>"
    End With
    End Sub     
	'=================================================������غ���=======================
	'����ʾ,�����������,���� PreCacheName-ǰ��ƥ��
	Public Sub DelCaches(PreCacheName)
	    Dim i
		Dim CacheList:CacheList=split(GetCacheList(PreCacheName),",")
		If UBound(CacheList)>1 Then
			For i=0 to UBound(CacheList)-1
				DelCahe CacheList(i)
			Next
		End IF
	End Sub
	'ȡ�û����б� ���� PreCacheName-ǰ��ƥ��
	Public Function GetCacheList(PreCacheName)
		Dim Cacheobj
		For Each Cacheobj in Application.Contents
		If CStr(Left(Cacheobj,Len(PreCacheName)))=CStr(PreCacheName) Then GetCacheList=GetCacheList&Cacheobj&","
		Next
	End Function
	'�������,���� MyCaheName-��������
	Public Sub DelCahe(MyCaheName)
		Application.Lock
		Application.Contents.Remove(MyCaheName)
		Application.unLock
	End Sub
%> 