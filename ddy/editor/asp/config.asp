<%
Dim sUsername, sPassword
sUsername = ""
sPassword = ""

Dim aStyle()
Redim aStyle(2)
aStyle(1) = "Ok3w||||||light1|||../upfiles/|||600|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||10240|||10240|||10240|||10240|||1024|||1|||1|||EDIT|||1|||0|||2|||||||||1|||0|||600px���Ƚ����µı�׼��������ť(�Ƽ�)|||||||||0|||300|||120|||0|||Ok3w���ŷ���ϵͳ|||ffffff|||12|||����||||||0|||jpg|jpeg|||100|||000000|||1|||0|||gif|jpg|bmp|wmz|png|||10240|||100|||1|||96|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(2) = "user||||||light1|||../upfiles/|||500|||300|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||0|||0|||0|||0|||0|||1|||1|||EDIT|||1|||0|||2|||||||||0|||0|||500px���Ƚ����µ���򹤾�����ť,�ʺ����ʼ�ϵͳ����ϵͳ��ֻ����򵥹��ܵ�Ӧ��|||||||||0|||300|||120|||0|||��Ȩ����...|||000000|||12|||����||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||0|||gif|jpg|bmp|wmz|png|||0|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0||||||1||||||1|||1|||0"

Dim aToolbar()
Redim aToolbar(4)
aToolbar(1) = "1|||TBHandle|FormatBlock|FontName|FontSize|Cut|Copy|Paste|PasteText|PasteWord|TBSep|Delete|RemoveFormat|TBSep|FindReplace|TBSep|UnDo|ReDo|TBSep|SelectAll|UnSelect|TBSep|UpperCase|LowerCase|||������1|||1"
aToolbar(2) = "1|||TBHandle|Bold|Italic|UnderLine|StrikeThrough|SuperScript|SubScript|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|TBSep|OrderedList|UnOrderedList|Indent|Outdent|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|TBSep|CreateLink|Unlink|Map|Anchor|||������2|||2"
aToolbar(3) = "1|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|TBSep|TableMenu|FormMenu|TBSep|BR|ParagraphAttr|TBSep|Template|Symbol|Emot|Excel|PrintBreak|NowDate|NowTime|TBSep|Quote|ShowBorders|TBSep|ZoomMenu|Maximize|||������3|||3"
aToolbar(4) = "2|||TBHandle|FontSizeMenu|FontNameMenu|ForeColor|BackColor|TBSep|Bold|Italic|UnderLine|TBSep|JustifyLeft|JustifyCenter|JustifyRight|TBSep|CreateLink|Unlink|TBSep|Image|Flash|Media|TBSep|PasteText|PasteWord|RemoveFormat|Maximize|||������1|||1"
%>