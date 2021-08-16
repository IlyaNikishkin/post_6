unit data;

interface

uses
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, jpeg, Vcl.ExtCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Dialogs, StdCtrls, ClipBrd, UrlMon,
  ShellApi,mmsystem, Vcl.Buttons, Vcl.Samples.Spin, FileCtrl, Vcl.Menus, Vcl.ExtDlgs, MediaInfoDll, Math;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    IdHTTP1: TIdHTTP;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Image1: TImage;
    Image2: TImage;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Memo2: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Memo3: TMemo;
    Button14: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel1: TPanel;
    FileSaveDialog1: TFileSaveDialog;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Button19: TButton;
    Buttom20: TButton;
    Edit3: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton14: TSpeedButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Button3: TButton;
    CheckBox8: TCheckBox;
    SpeedButton5: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Open1: TMenuItem;
    Phunorg1: TMenuItem;
    Edit8: TEdit;
    Panel2: TPanel;
    Edit9: TEdit;
    Button22: TButton;
    Button23: TButton;
    OpenTextFileDialog1: TOpenTextFileDialog;
    Button25: TButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    CheckBox10: TCheckBox;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    Edit10: TEdit;
    Label1: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    CheckBox9: TCheckBox;
    Edit7: TEdit;
    Label6: TLabel;
    Edit13: TEdit;
    Button9: TButton;
    OpenDialog1: TOpenDialog;
    Edit14: TEdit;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    Button10: TButton;
    SpeedButton23: TSpeedButton;
    Button11: TButton;
    Button12: TButton;
    Edit15: TEdit;
    CheckBox11: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure MemoUpdate;
    procedure Button8Click(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DoShoot(image: Integer);
    procedure Edit1Change(Sender: TObject);
    procedure Memo3Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure AddVideo;
    procedure CheckName;
    procedure Button14Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButtonClear;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Buttom20Click(Sender: TObject);
    procedure SpeedButton1DblClick(Sender: TObject);
    procedure SpeedButton2DblClick(Sender: TObject);
    procedure SpeedButton3DblClick(Sender: TObject);
    procedure SpeedButton8DblClick(Sender: TObject);
    procedure SpeedButton10DblClick(Sender: TObject);
    procedure SpeedButton4DblClick(Sender: TObject);
    procedure SpeedButton9DblClick(Sender: TObject);
    procedure SpeedButton6DblClick(Sender: TObject);
    procedure SpeedButton13DblClick(Sender: TObject);
    procedure SpeedButton5DblClick(Sender: TObject);
    procedure SpeedButton7DblClick(Sender: TObject);
    procedure SpeedButton12DblClick(Sender: TObject);
    procedure SpeedButton11DblClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure Count;
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton14DblClick(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image1DblClick(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure SpeedButton14MouseEnter(Sender: TObject);
    procedure SpeedButton2MouseEnter(Sender: TObject);
    procedure SpeedButton3MouseEnter(Sender: TObject);
    procedure SpeedButton8MouseEnter(Sender: TObject);
    procedure SpeedButton10MouseEnter(Sender: TObject);
    procedure SpeedButton4MouseEnter(Sender: TObject);
    procedure SpeedButton9MouseEnter(Sender: TObject);
    procedure SpeedButton6MouseEnter(Sender: TObject);
    procedure SpeedButton5MouseEnter(Sender: TObject);
    procedure SpeedButton13MouseEnter(Sender: TObject);
    procedure SpeedButton7MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton12MouseEnter(Sender: TObject);
    procedure SpeedButton11MouseEnter(Sender: TObject);
    procedure Phunorg1Click(Sender: TObject);
    procedure Edit8DblClick(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Memo3DblClick(Sender: TObject);
    procedure Edit2DblClick(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton15DblClick(Sender: TObject);
    procedure SpeedButton15MouseEnter(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton16DblClick(Sender: TObject);
    procedure SpeedButton16MouseEnter(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton17DblClick(Sender: TObject);
    procedure SpeedButton17MouseEnter(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton18DblClick(Sender: TObject);
    procedure SpeedButton20DblClick(Sender: TObject);
    procedure SpeedButton19DblClick(Sender: TObject);
    procedure SpeedButton21DblClick(Sender: TObject);
    procedure SpeedButton18MouseEnter(Sender: TObject);
    procedure SpeedButton19MouseEnter(Sender: TObject);
    procedure SpeedButton21MouseEnter(Sender: TObject);
    procedure SpeedButton20MouseEnter(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton22DblClick(Sender: TObject);
    procedure SpeedButton22MouseEnter(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit13DblClick(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit7DblClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Edit3DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure WMChangeCBChain(var msg: TWMChangeCBChain); message WM_CHANGECBCHAIN;
    procedure WMDrawClipBoard(var msg: TWMDrawClipboard); message WM_DRAWCLIPBOARD;
  public
    { Public declarations }
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
  public
    { Public declarations }
end;

var
  Form1: TForm1;
  nwnd: Cardinal;
  fn,n,shoot1,shoot2,temp,Size,Duration,Format,Video,Description,TagsPost,topic, temp2,temp3,temp4,d,
  sym,check,Folder,Folder2,oldName,newName,Part,TempTopic: string;
  i,j,k,h,c,q,report,autocopy,wh,sh,tx,ph,cq: integer;
  BannedWords: TStringList;
  f: TextFile; MS: TMemoryStream;
  Jpeg: TJpegImage; bmp,pic: TBitMap; img: TPicture;
  SR: TSearchRec;
  SL: TStrings;
  IdHTTP : TIdHTTP;
  Id_HandlerSocket : TIdSSLIOHandlerSocketOpenSSL;

const
  Version='Post 6.0'; mtx=22;
  rus='АаБбВвГгДдЕеЁёЖжЗзИиЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчШшЩщЪъЫыЬьЭэЮюЯя';
  topicX: array[0..mtx] of String = ('Interracial','Latex','JerkOffInstruction','MaleDom','BigTits','Lesbian',
    'Teen','Milf','Casting','Blowjob','FemDom','LezDom','Solo','Stockings','Smoking','PovSex','Asian','3d',
    'Bukkake','Pregnant','Anal','CEI','Cosplay');

implementation

{$R *.dfm}

function dis(l:string): string;
begin
  if (l<>' ') and (l<>'  ') and (l<>'') then
  begin
    while l[1]=' ' do delete(l,1,1); while l[length(l)]=' ' do delete(l,length(l),1); dis:=l;
  end;
end;

function Recycle(const FileName: string; Wnd: HWND = 0): Boolean;
var
  FileOp: TSHFileOpStruct;
begin
  FillChar(FileOp, SizeOf(FileOp), 0);
  if Wnd = 0 then Wnd := Application.Handle;
  FileOp.Wnd := Wnd; FileOp.wFunc := FO_DELETE; FileOp.pFrom := PChar(FileName);
  FileOp.fFlags := FOF_ALLOWUNDO or FOF_NOERRORUI or FOF_SILENT;
  Result := (SHFileOperation(FileOp) = 0) and (not FileOp.fAnyOperationsAborted);
end;

procedure TForm1.WMDropFiles(var Msg: TWMDropFiles);
var
  CFileName: array [0 .. MAX_PATH] of Char;
  MediaHandle: Cardinal;
  num, num_i, num_j, num_h: Integer;
begin
  try
    If DragQueryFile(Msg.Drop, 0, CFileName, MAX_PATH) > 0 then
    begin
      num:=DragQueryFile(Msg.Drop,Dword(-1),nil,0); num_h:=0;
      if (MediaInfoDLL_Load('MediaInfo.dll')=false) then
          begin ShowMessage('Error while loading MediaInfo.dll'); exit; end;
      for num_i:=0 to num-1 do
      begin
        DragQueryFile(Msg.Drop,num_i,CFileName,MAX_PATH);
        MediaHandle := MediaInfo_New(); MediaInfo_Open(MediaHandle, CFileName);
        //Name
        fn:=MediaInfo_Get(MediaHandle, Stream_General, 0, 'FileName', Info_Text, Info_Name);
        n:=fn; Edit8.Text:=n; Edit1.Text:=fn;
        //Length
        Duration:=MediaInfo_Get(MediaHandle, Stream_General, 0, 'Duration/String3', Info_Text, Info_Name);
        delete(Duration,length(Duration)-3,4); Edit4.Text:=Duration;
        //Size
        Size:=MediaInfo_Get(MediaHandle, Stream_General, 0, 'FileSize/String', Info_Text, Info_Name);
        for num_j:=1 to length(Size) do if Size[num_j]='i' then begin Delete(Size,num_j,1); break; end;
        //Format
        Format:=AnsiUpperCase(ExtractFileExt(CFileName)); Delete(Format,1,1); Edit5.Text:=Format;
        //Video
        Video:=MediaInfo_Get(MediaHandle, Stream_Video, 0, 'Width', Info_Text, Info_Name)+'x'+
        MediaInfo_Get(MediaHandle, Stream_Video, 0, 'Height', Info_Text, Info_Name)+', '+
        MediaInfo_Get(MediaHandle, Stream_Video, 0, 'BitRate/String', Info_Text, Info_Name)+', '+
        MediaInfo_Get(MediaHandle, Stream_Video, 0, 'FrameRate', Info_Text, Info_Name)+' fps';
        Edit6.Text:=Video;
        if CheckBox8.Checked=True then
        begin
          if (Size='') then
          case MessageDlg('Вы не указали Размер. Продолжить?',mtInformation,[mbYes, mbNo],0) of
            IDYes: AddVideo;
          end
          else if Duration='' then
          case MessageDlg('Вы не указали Продолжительность. Продолжить?',mtInformation,[mbYes, mbNo],0) of
            IDYes: AddVideo;
          end
          else if Format='' then
          case MessageDlg('Вы не указали Формат. Продолжить?',mtInformation,[mbYes, mbNo],0) of
            IDYes: AddVideo;
          end
          else if Video='' then
          case MessageDlg('Вы не указали Видео. Продолжить?',mtInformation,[mbYes, mbNo],0) of
            IDYes: AddVideo;
          end
          else begin AddVideo; num_h:=num_h+1; Application.ProcessMessages; end;
        end else PlaySound('sound\info.wav', 0, SND_ASYNC);
        MediaInfo_Close(MediaHandle);
      end;
      if num_h>0 then
      begin
        PlaySound('sound\ok.wav', 0, SND_ASYNC); Showmessage('Добавлено '+IntToStr(num_h)+' видео в '+Topic);
      end;
    end;
  finally
    DragFinish(Msg.Drop); // отпустить файл
  end;
end;

procedure TForm1.DoShoot(image: Integer);
begin
  case image of
    {1: if URLDownloadToFile(nil,PChar(shoot1),PChar(Folder+'\'+n+'_1.jpg'),0,nil)=0 then
    Image1.Picture.LoadFromFile(Folder+'\'+n+'_1.jpg') else ShowMessage('Image was not found');
    2: if URLDownloadToFile(nil,PChar(shoot2),PChar(Folder+'\'+n+'_2.jpg'),0,nil)=0 then
    Image2.Picture.LoadFromFile(Folder+'\'+n+'_2.jpg') else ShowMessage('Image was not found');}
    3: if FileExists(Folder+'\'+sym+'_1.jpg') then DeleteFile(Folder+'\'+sym+'_1.jpg');
    4: if FileExists(Folder+'\'+sym+'_2.jpg') then DeleteFile(Folder+'\'+sym+'_2.jpg');
  end;
end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
  cq:=StrToInt(Edit10.Text); if cq>100 then cq:=100;

end;

procedure TForm1.Edit13Change(Sender: TObject);
begin
  Folder:=Edit13.Text;
end;

procedure TForm1.Edit13DblClick(Sender: TObject);
begin
  Edit7.Text:=ClipBoard.AsText;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  temp2:=copy(Memo1.Lines[0],4,length(Memo1.Lines[0])); delete(temp2,length(memo1.Lines[0])-6,4);
  DoShoot(3); DoShoot(4);
  fn:=Edit1.Text; MemoUpdate;
  sym:=''; for i:=1 to length(fn) do if not (fn[i] in ['?',':']) then sym:=sym+fn[i]; sym:=dis(sym);
  if Button7.Visible=true then
  begin
    Jpeg:=TJpegImage.Create; Jpeg.Assign(Image1.Picture);
    Jpeg.SaveToFile(Folder+'\'+sym+'_1.jpg'); Jpeg.Free;
  end;
  if Button8.Visible=true then
  begin
    Jpeg:=TJpegImage.Create; Jpeg.Assign(Image2.Picture);
    Jpeg.SaveToFile(Folder+'\'+sym+'_2.jpg'); Jpeg.Free;
  end;
end;

procedure TForm1.Edit1DblClick(Sender: TObject);
begin
  Clipboard.asText:=sym+'.'+AnsiLowerCase(Format); PlaySound('sound\copy.wav', 0, SND_ASYNC);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  TagsPost:=Edit2.Text; MemoUpdate;
end;

procedure TForm1.Edit2DblClick(Sender: TObject);
begin
  Edit2.Text:=ClipBoard.AsText;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  Label9.Caption:='';
end;

procedure TForm1.Edit3DblClick(Sender: TObject);
begin
  Edit3.Text:=ClipBoard.AsText; Buttom20.Click;
end;

procedure TForm1.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
    Label9.Caption:='';
    for tx:=0 to mtx do
    begin
      Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'); i:=0;
      while i<=Memo2.Lines.Count do
      begin
        if pos(Edit3.Text,Memo2.Lines[i])<>0 then if pos(topicX[tx],Label9.Caption)=0 then
        Label9.Caption:=Label9.Caption+topicX[tx]+' '; i:=i+1;
      end;
    end;
    if Label9.Caption='' then Label9.Caption:='Ничего не найдено';
  end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  MemoUpdate;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
  Format:=Edit5.Text; MemoUpdate;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
  Video:=Edit6.Text; MemoUpdate;
end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
  Edit7.Text:=dis(Edit7.Text); MemoUpdate;
end;

procedure TForm1.Edit7DblClick(Sender: TObject);
begin
  Edit7.Text:=ClipBoard.AsText;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
  n:=Edit8.Text; MemoUpdate;
end;

procedure TForm1.Edit8DblClick(Sender: TObject);
begin
  Clipboard.asText:=Edit8.Text; PlaySound('sound\copy.wav', 0, SND_ASYNC);
end;

procedure TForm1.Memo1DblClick(Sender: TObject);
begin
  Memo1.SelectAll; Memo1.CopyToClipboard; PlaySound('sound\copy.wav', 0, SND_ASYNC);
end;

procedure TForm1.Memo3Change(Sender: TObject);
begin
  Description:=Memo3.Text; MemoUpdate;
end;

procedure TForm1.Memo3DblClick(Sender: TObject);
begin
  Memo3.Clear; Memo3.Lines[0]:=ClipBoard.AsText;
end;

procedure TForm1.Count;
begin
  Label10.Caption:=''; j:=0;
  for tx:=0 to mtx do
  begin
    AssignFile(f,ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt');
    reset(f); Read(f,temp2); CloseFile(f); delete(temp2,1,7);
    Label10.Caption:=Label10.Caption+topicX[tx]+'-'+temp2+'  ';
    j:=j+StrToInt(temp2);
    if (tx=4) or (tx=11) or (tx=18) then Label10.Caption:=Label10.Caption+#13#10;
  end;
  Label10.Caption:=Label10.Caption+'(Total-'+IntToStr(j)+')';
  //AssignFile(f,'Phun.org.txt'); reset(f); Read(f,temp2); CloseFile(f); delete(temp2,1,7);
  //Label10.Caption:=Label10.Caption+' ############## Phun.org-'+temp2;
end;

procedure TForm1.MemoUpdate;
begin
  Memo1.Clear; fn:=dis(fn); n:=dis(n);
  Memo1.Lines[0]:='[u]FileName: '+fn+'.'+AnsiLowerCase(Format)+'[/u]';
  Memo1.Lines.Add('[b]'+n+'[/b]'); Memo1.Lines.Add('');
  if (shoot1<>'') or (CheckBox8.Checked=true) then Memo1.Lines.Add('[img]1.jpg[/img] НЕТ ССЫЛКИ');
  if shoot2<>'' then Memo1.Lines.Add('[img]2.jpg[/img] НЕТ ССЫЛКИ');
  Memo1.Lines.Add('SCREENSHOTS НЕТ ССЫЛКИ'+#13#10);
  if TagsPost<>'' then Memo1.Lines.Add('[b]Tags[/b]: '+TagsPost);
  Memo1.Lines.Add('[b]Length[/b]: '+Size+' for '+Duration);
  if (Description<>'') then Memo1.Lines.Add('[b]Description[/b]: '+Description);
  if not ((TagsPost='') and (Description='')) then Memo1.Lines.Add('');
  Memo1.Lines.Add('[b]Format[/b]: '+Format);
  Memo1.Lines.Add('[b]Video[/b]: '+Video);
  Memo1.Lines.Add('');
  //Memo1.Lines.Add('[u][b][url=]RG.TO DOWNLOAD[/url][/b][/u]');
  //Memo1.Lines.Add('or');
  Memo1.Lines.Add('[u][b][url=НЕТ_ССЫЛКИ]K2S DOWNLOAD[/url][/b][/u]');
  Memo1.Lines.Add('K2S DOWNLOAD Part2'); Memo1.Lines.Add('K2S DOWNLOAD Part3');
  if (Edit7.Text<>'') or (Edit14.Text<>'') then
    Memo1.Lines.Add('keywords: '+TagsPost+'9756 Studio: '+Edit7.Text)
  else Memo1.Lines.Add('keywords: '+TagsPost+'9756');
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
  ShellExecute(0,nil,PWideChar(ExtractFilePath(Application.ExeName)+'\Topics\'+TempTopic+'.txt'),nil,nil,1);
end;

procedure TForm1.Phunorg1Click(Sender: TObject);
begin
  ShellExecute(0,nil,PWideChar(ExtractFilePath(Application.ExeName)+'\Phun.org.txt'),nil,nil,1);
end;

procedure TForm1.SpeedButtonClear;
begin
  SpeedButton1.Font.Style:=[]; SpeedButton2.Font.Style:=[]; SpeedButton3.Font.Style:=[];
  SpeedButton4.Font.Style:=[]; SpeedButton6.Font.Style:=[]; SpeedButton5.Font.Style:=[];
  SpeedButton7.Font.Style:=[]; SpeedButton8.Font.Style:=[]; SpeedButton9.Font.Style:=[];
  SpeedButton10.Font.Style:=[]; SpeedButton11.Font.Style:=[]; SpeedButton12.Font.Style:=[];
  SpeedButton13.Font.Style:=[]; SpeedButton14.Font.Style:=[]; SpeedButton15.Font.Style:=[];
  SpeedButton16.Font.Style:=[]; SpeedButton17.Font.Style:=[]; SpeedButton18.Font.Style:=[];
  SpeedButton19.Font.Style:=[]; SpeedButton20.Font.Style:=[]; SpeedButton21.Font.Style:=[];
  SpeedButton22.Font.Style:=[]; SpeedButton23.Font.Style:=[];
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton10.Font.Style:=[fsBold]; topic:='Interracial';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton10DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton10MouseEnter(Sender: TObject);
begin
  TempTopic:='Interracial';
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton11.Font.Style:=[fsBold]; topic:='Latex';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton11DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton11MouseEnter(Sender: TObject);
begin
  TempTopic:='Latex';
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton12.Font.Style:=[fsBold]; topic:='JerkOffInstruction';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton12DblClick(Sender: TObject);
begin
  TagsPost:='JOI, Dirty Talk, Jerk Off Instruction'; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton12MouseEnter(Sender: TObject);
begin
  TempTopic:='JerkOffInstruction';
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton13.Font.Style:=[fsBold]; topic:='MaleDom';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton13DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton13MouseEnter(Sender: TObject);
begin
  TempTopic:='MaleDom';
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton14.Font.Style:=[fsBold]; topic:='Solo';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton14DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton14MouseEnter(Sender: TObject);
begin
  TempTopic:='Solo';
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton15.Font.Style:=[fsBold]; topic:='PovSex';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton15DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton15MouseEnter(Sender: TObject);
begin
  TempTopic:='PovSex';
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton16.Font.Style:=[fsBold]; topic:='Smoking';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton16DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton16MouseEnter(Sender: TObject);
begin
  TempTopic:='Smoking';
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton17.Font.Style:=[fsBold]; topic:='Asian';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton17DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton17MouseEnter(Sender: TObject);
begin
  TempTopic:='Asian';
end;

procedure TForm1.SpeedButton18Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton18.Font.Style:=[fsBold]; topic:='3d';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton18DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton18MouseEnter(Sender: TObject);
begin
  TempTopic:='3d';
end;

procedure TForm1.SpeedButton19Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton19.Font.Style:=[fsBold]; topic:='Anal';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton19DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton19MouseEnter(Sender: TObject);
begin
  TempTopic:='Anal';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton1.Font.Style:=[fsBold]; topic:='BigTits';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton1DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton1MouseEnter(Sender: TObject);
begin
  TempTopic:='BigTits';
end;

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton20.Font.Style:=[fsBold]; topic:='Bukkake';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton20DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton20MouseEnter(Sender: TObject);
begin
  TempTopic:='Bukkake';
end;

procedure TForm1.SpeedButton21Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton21.Font.Style:=[fsBold]; topic:='Pregnant';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton21DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton21MouseEnter(Sender: TObject);
begin
  TempTopic:='Pregnant';
end;

procedure TForm1.SpeedButton22Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton22.Font.Style:=[fsBold]; topic:='CEI';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton22DblClick(Sender: TObject);
begin
  TagsPost:='CEI, JOI, Cum Eating Instruction, Dirty Talk, Jerk Off Instruction'; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton22MouseEnter(Sender: TObject);
begin
  TempTopic:='CEI';
end;

procedure TForm1.SpeedButton23Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton23.Font.Style:=[fsBold]; topic:='Cosplay';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton2.Font.Style:=[fsBold]; topic:='Lesbian';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton2DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton2MouseEnter(Sender: TObject);
begin
  TempTopic:='Cosplay';
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton3.Font.Style:=[fsBold]; topic:='Teen';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton3DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton3MouseEnter(Sender: TObject);
begin
  TempTopic:='Teen';
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton4.Font.Style:=[fsBold]; topic:='Milf';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton4DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton4MouseEnter(Sender: TObject);
begin
  TempTopic:='Milf';
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton5.Font.Style:=[fsBold]; topic:='Stockings';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton5DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton5MouseEnter(Sender: TObject);
begin
  TempTopic:='Stockings';
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton6.Font.Style:=[fsBold]; topic:='Casting';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton6DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton6MouseEnter(Sender: TObject);
begin
  TempTopic:='Casting';
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton7.Font.Style:=[fsBold]; topic:='Blowjob';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton7DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton7MouseEnter(Sender: TObject);
begin
  TempTopic:='Blowjob';
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton8.Font.Style:=[fsBold]; topic:='FemDom';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton8DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton8MouseEnter(Sender: TObject);
begin
  TempTopic:='FemDom';
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
  SpeedButtonClear; SpeedButton9.Font.Style:=[fsBold]; topic:='LezDom';
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f);
end;

procedure TForm1.SpeedButton9DblClick(Sender: TObject);
begin
  TagsPost:=topic; Edit2.Text:=TagsPost;
end;

procedure TForm1.SpeedButton9MouseEnter(Sender: TObject);
begin
  TempTopic:='LezDom';
end;

procedure TForm1.Buttom20Click(Sender: TObject);
begin
  Label9.Caption:='';
  for tx:=0 to mtx do
  begin
    Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'); i:=0;
    while i<=Memo2.Lines.Count do
    begin
      if pos(Edit3.Text,Memo2.Lines[i])<>0 then if pos(topicX[tx],Label9.Caption)=0 then
      Label9.Caption:=Label9.Caption+topicX[tx]+' '; i:=i+1;
    end;
  end;
  if Label9.Caption='' then Label9.Caption:='Ничего не найдено';
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  check:='Наличие невставленных ссылок изображений и загрузок по топикам:'+#13#10;
  for tx:=0 to mtx do
  begin
    i:=0; j:=0; k:=0; q:=0; Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt');
    temp:=Memo2.Lines[0]; delete(temp,1,7); c:=StrToInt(temp);
    while i<=Memo2.Lines.Count do
    begin
      if pos('НЕТ ССЫЛКИ',Memo2.Lines[i])<>0 then j:=j+1; if pos('НЕТ_ССЫЛКИ',Memo2.Lines[i])<>0 then k:=k+1;
      if pos('9*3*',Memo2.Lines[i])<>0 then q:=q+1;
      i:=i+1;
    end;
    check:=check+'            ImageLink '+IntToStr(j)+', Download '+IntToStr(k)+' - '+topicX[tx];
    if c=q then check:=check+' +'+#13#10 else check:=check+' -'+#13#10;
    //if tx<>mtx then check:=check+#13#10;
  end;
  //Phun.org
  Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Phun.org.txt'); i:=0; j:=0; k:=0; q:=0;
  temp:=Memo2.Lines[0]; delete(temp,1,7); c:=StrToInt(temp);
  while i<=Memo2.Lines.Count do
  begin
    if pos('НЕТ ССЫЛКИ',Memo2.Lines[i])<>0 then j:=j+1; if pos('НЕТ_ССЫЛКИ',Memo2.Lines[i])<>0 then k:=k+1;
    if pos('9*3*',Memo2.Lines[i])<>0 then q:=q+1;
    i:=i+1;
  end;
  check:=check+'            ImageLink '+IntToStr(j)+', Download '+IntToStr(k)+' - Phun.org';
  if c=q then check:=check+' +'+#13#10 else check:=check+' -';
  ShowMessage(check);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  temp3:=Edit8.Text; j:=0; for i:=1 to length(temp3)-1 do if temp3[i]='-' then if (temp3[i-1]=' ') and (temp3[i+1]=' ') then j:=j+1;
  if j>=2 then
  begin
    for i:=1 to length(temp3)-1 do if temp3[i]='-' then if (temp3[i-1]=' ') and (temp3[i+1]=' ') then break;
    for j:=i+1 to length (temp3) do if temp3[j]='-' then if (temp3[j-1]=' ') and (temp3[j+1]=' ') then break;
    Edit7.Text:=copy(temp3,1,i-1); Delete(temp3,1,i+1);
  end;
  Edit8.Text:=temp3;
end;

procedure TForm1.Button11Click(Sender: TObject);
var ban,des: integer; nm,tags,st,act,fileid,ch,cat: string;
begin
  if OpenTextFileDialog1.Execute then
  begin
    Memo2.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
    Memo1.Clear; ban:=0; des:=0; cat:=''; ch:='';
    for i:=0 to Memo2.Lines.Count-1 do
    begin
      temp:=Memo2.Lines[i];
      if (temp='') or (pos('Total',temp)<>0) or (pos('======',temp)<>0) then ban:=1;
      if pos('[u]FileName',temp)<>0 then
      begin
        nm:=Memo2.Lines[i+1]; j:=pos('[b]',nm); if j<>0 then delete(nm,j,3);
        j:=pos('[/b]',nm); if j<>0 then delete(nm,j,4); ban:=1; tags:=''; st:=''; act:=''; ch:=''; cat:='';
        if pos('Blowjob',OpenTextFileDialog1.FileName)<>0 then tags:='Blowjob,' else
          if pos('FemDom',OpenTextFileDialog1.FileName)<>0 then tags:='FemDom,' else
            if pos('LezDom',OpenTextFileDialog1.FileName)<>0 then tags:='LezDom,';
        if tags<>'' then if tags[1]=' ' then delete(tags,1,1);
        k:=1000; 
        j:=pos(' — ',nm); if (j<>0) and (k>j) then k:=j;
        j:=pos(' - ',nm); if (j<>0) and (k>j) then k:=j;
        j:=pos(' – ',nm); if (j<>0) and (k>j) then k:=j;
        j:=pos(' − ',nm); if (j<>0) and (k>j) then k:=j;
        if k<>1000 then act:=copy(nm,1, k-1); 
        if tags<>'' then for j:=0 to length(tags)-1 do if (tags[j]=',') and (tags[j+1]<>' ') then insert(' ',tags,j);
      end;
      j:=pos('[b]Tags[/b]',temp); if j<>0 then
      begin
        delete(temp,j,13); for j:=1 to length(temp) do if temp[j]='#' then delete(temp,j,1); ban:=1; tags:=tags+temp;
        if tags<>'' then for j:=0 to length(tags)-1 do if (tags[j]=',') and (tags[j+1]<>' ') then insert(' ',tags,j+1);
        if (pos('JerkOffInstruction',OpenTextFileDialog1.FileName)<>0) or (pos('CEI',OpenTextFileDialog1.FileName)<>0)
        or (pos('Latex',OpenTextFileDialog1.FileName)<>0)then
          begin cat:='Fetish porn, Femdom porn, Solo Female'; ch:='Goddesses Princesses Mistresses Instructions on Worship'; end;
        if (pos('Milf',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='MILF porn'; ch:='Hot Milf Sex Clips';
          if pos('Anal',tags)<>0 then cat:=cat+', Anal porn';
          if pos('Big Tits',tags)<>0 then cat:=cat+', Big Tits porn';
          if pos('Big Ass',tags)<>0 then cat:=cat+', Big Ass porn';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Cumshot',tags)<>0) or (pos('cumshot',tags)<>0) then cat:=cat+', Cumshot';
          if pos('POV',tags)<>0 then cat:=cat+', POV';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
          if (pos('Interracial',tags)<>0) or (pos('interracial',tags)<>0) then cat:=cat+', Interracial sex porn';
          if pos('Group',tags)<>0 then cat:=cat+', Group sex porn';
          if pos('Hardcore',tags)<>0 then cat:=cat+', Hardcore porn';
          if pos('Orgy',tags)<>0 then cat:=cat+', Orgy';
          if pos('Public',tags)<>0 then cat:=cat+', Public';
          if pos('Amateur',tags)<>0 then cat:=cat+', Amateur porn';
        end;
        if (pos('PovSex',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='POV'; ch:='Fantastic Sex POV Sex in the First Person';
          if pos('Anal',tags)<>0 then cat:=cat+', Anal porn';
          if pos('Big Tits',tags)<>0 then cat:=cat+', Big Tits porn';
          if pos('Big Ass',tags)<>0 then cat:=cat+', Big Ass porn';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Cumshot',tags)<>0) or (pos('cumshot',tags)<>0) then cat:=cat+', Cumshot';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
          if (pos('Interracial',tags)<>0) or (pos('interracial',tags)<>0) then cat:=cat+', Interracial sex porn';
          if pos('Group',tags)<>0 then cat:=cat+', Group sex porn';
          if pos('Hardcore',tags)<>0 then cat:=cat+', Hardcore porn';
          if pos('Orgy',tags)<>0 then cat:=cat+', Orgy';
          if pos('Public',tags)<>0 then cat:=cat+', Public';
          if pos('Amateur',tags)<>0 then cat:=cat+', Amateur porn';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
        end;
        if (pos('Teen',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='Teen'; ch:='Sexy young girls know how to have';
          if pos('Anal',tags)<>0 then cat:=cat+', Anal porn';
          if pos('Big Tits',tags)<>0 then cat:=cat+', Big Tits porn';
          if pos('Big Ass',tags)<>0 then cat:=cat+', Big Ass porn';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Cumshot',tags)<>0) or (pos('cumshot',tags)<>0) then cat:=cat+', Cumshot';
          if pos('Daddy',tags)<>0 then cat:=cat+', Daddy porn';
          if pos('School',tags)<>0 then cat:=cat+', School';
          if (pos('Interracial',tags)<>0) or (pos('interracial',tags)<>0) then cat:=cat+', Interracial sex porn';
          if pos('Group',tags)<>0 then cat:=cat+', Group sex porn';
          if pos('Hardcore',tags)<>0 then cat:=cat+', Hardcore porn';
          if pos('Orgy',tags)<>0 then cat:=cat+', Orgy';
          if pos('Public',tags)<>0 then cat:=cat+', Public';
          if pos('Amateur',tags)<>0 then cat:=cat+', Amateur porn';
          if (pos('Babysitter',tags)<>0) or (pos('babysitter',tags)<>0) then cat:=cat+', Babysitter';
        end;
        if (pos('Casting',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='Casting'; ch:='Casting & Interview';
          if pos('Anal',tags)<>0 then cat:=cat+', Anal porn';
          if pos('Big Tits',tags)<>0 then cat:=cat+', Big Tits porn';
          if pos('Big Ass',tags)<>0 then cat:=cat+', Big Ass porn';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Cumshot',tags)<>0) or (pos('cumshot',tags)<>0) then cat:=cat+', Cumshot';
          if (pos('Interracial',tags)<>0) or (pos('interracial',tags)<>0) then cat:=cat+', Interracial sex porn';
          if pos('Group',tags)<>0 then cat:=cat+', Group sex porn';
          if pos('Hardcore',tags)<>0 then cat:=cat+', Hardcore porn';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
        end;
        if (pos('BigTits',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='Big Tits'; ch:='Beautiful Girls with Big Tits Big Boobs';
          if pos('Anal',tags)<>0 then cat:=cat+', Anal porn';
          if pos('Big Ass',tags)<>0 then cat:=cat+', Big Ass porn';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Cumshot',tags)<>0) or (pos('cumshot',tags)<>0) then cat:=cat+', Cumshot';
          if (pos('Interracial',tags)<>0) or (pos('interracial',tags)<>0) then cat:=cat+', Interracial sex porn';
          if pos('Group',tags)<>0 then cat:=cat+', Group sex porn';
          if pos('Hardcore',tags)<>0 then cat:=cat+', Hardcore porn';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
        end;
        if (pos('Anal',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='Anal porn'; ch:='Beautiful Girls with Big Asss Likes Anal Sex and DP';
          if pos('Big Tits',tags)<>0 then cat:=cat+', Big Tits porn';
          if pos('Big Ass',tags)<>0 then cat:=cat+', Big Ass porn';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Cumshot',tags)<>0) or (pos('cumshot',tags)<>0) then cat:=cat+', Cumshot';
          if (pos('Interracial',tags)<>0) or (pos('interracial',tags)<>0) then cat:=cat+', Interracial sex porn';
          if pos('Group',tags)<>0 then cat:=cat+', Group sex porn';
          if pos('Hardcore',tags)<>0 then cat:=cat+', Hardcore porn';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
        end;
        if (pos('Blowjob',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='Blowjob porn'; ch:='Blowjob Queens';
          if pos('Anal',tags)<>0 then cat:=cat+', Anal porn';
          if pos('Big Tits',tags)<>0 then cat:=cat+', Big Tits porn';
          if pos('Big Ass',tags)<>0 then cat:=cat+', Big Ass porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Cumshot',tags)<>0) or (pos('cumshot',tags)<>0) then cat:=cat+', Cumshot';
          if (pos('Interracial',tags)<>0) or (pos('interracial',tags)<>0) then cat:=cat+', Interracial sex porn';
          if pos('Group',tags)<>0 then cat:=cat+', Group sex porn';
          if pos('Hardcore',tags)<>0 then cat:=cat+', Hardcore porn';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
          if (pos('Bukkake',tags)<>0) or (pos('bukkake',tags)<>0) then cat:=cat+', Bukkake porn';
        end;
        if (pos('MaleDom',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='BDSM porn'; ch:='All about Discipline Humiliation Punishment for pussi';
          if pos('Anal',tags)<>0 then cat:=cat+', Anal porn';
          if pos('Big Tits',tags)<>0 then cat:=cat+', Big Tits porn';
          if pos('Big Ass',tags)<>0 then cat:=cat+', Big Ass porn';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Cumshot',tags)<>0) or (pos('cumshot',tags)<>0) then cat:=cat+', Cumshot';
          if (pos('Interracial',tags)<>0) or (pos('interracial',tags)<>0) then cat:=cat+', Interracial sex porn';
          if pos('Group',tags)<>0 then cat:=cat+', Group sex porn';
          if pos('Hardcore',tags)<>0 then cat:=cat+', Hardcore porn';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
        end;
        if (pos('Stockings',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='BDSM porn'; ch:='Men Are Slaves Female Dominatrix video';
          if pos('Anal',tags)<>0 then cat:=cat+', Anal porn';
          if pos('Big Tits',tags)<>0 then cat:=cat+', Big Tits porn';
          if pos('Big Ass',tags)<>0 then cat:=cat+', Big Ass porn';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Cumshot',tags)<>0) or (pos('cumshot',tags)<>0) then cat:=cat+', Cumshot';
          if (pos('Interracial',tags)<>0) or (pos('interracial',tags)<>0) then cat:=cat+', Interracial sex porn';
          if pos('Group',tags)<>0 then cat:=cat+', Group sex porn';
          if pos('Hardcore',tags)<>0 then cat:=cat+', Hardcore porn';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
          if pos('POV',tags)<>0 then cat:=cat+', POV';
          if cat='' then des:=1;
        end;
        if (pos('FemDom',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='Femdom porn'; ch:='Men Are Slaves Female Dominatrix video';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Handjob',tags)<>0) or (pos('handjob',tags)<>0) then cat:=cat+', Handjob porn';
          if (pos('Strap On',tags)<>0) or (pos('StrapOn',tags)<>0) or (pos('strapon',tags)<>0) or
            (pos('Dildo',tags)<>0) then cat:=cat+', Strap On';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
          if (pos('Smoking',tags)<>0) or (pos('smoking',tags)<>0) then cat:=cat+', Smoking';
          if (pos('Lesbian',tags)<>0) or (pos('lesbian',tags)<>0) then cat:=cat+', Lesbian girls';
          if (pos('Shemale',tags)<>0) or (pos('shemale',tags)<>0) then cat:=cat+', Shemale porn';
        end;
        if (pos('Cosplay',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='Cosplay'; ch:='Cosplay SuperHeroes Ahegao face';
          if (pos('Blowjob',tags)<>0) or (pos('blowjob',tags)<>0) then cat:=cat+', Blowjob porn';
          if (pos('Creampie',tags)<>0) or (pos('creampie',tags)<>0) then cat:=cat+', Creampie';
          if (pos('Handjob',tags)<>0) or (pos('handjob',tags)<>0) then cat:=cat+', Handjob porn';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
          if (pos('Smoking',tags)<>0) or (pos('smoking',tags)<>0) then cat:=cat+', Smoking';
          if (pos('Lesbian',tags)<>0) or (pos('lesbian',tags)<>0) then cat:=cat+', Lesbian girls';
          if pos('Public',tags)<>0 then cat:=cat+', Public';
          if pos('Amateur',tags)<>0 then cat:=cat+', Amateur porn';
          if pos('Daddy',tags)<>0 then cat:=cat+', Daddy porn';
          if pos('Webcam',tags)<>0 then cat:=cat+', Webcam';
          if (pos('Fisting',tags)<>0) or (pos('fisting',tags)<>0) then cat:=cat+', Fisting porn videos';
          if (pos('Masturbation',tags)<>0) or (pos('masturbation',tags)<>0) then cat:=cat+', Masturbation porn';
        end;
        if (pos('LezDom',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='Lesbian girls, BDSM porn, Femdom porn'; ch:='Lesbian domination slavegirls humaliation strapon';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
          if (pos('Strap On',tags)<>0) or (pos('StrapOn',tags)<>0) or (pos('strapon',tags)<>0) or
            (pos('Dildo',tags)<>0) then cat:=cat+', Strap On';
          if pos('Public',tags)<>0 then cat:=cat+', Public';
          if pos('Amateur',tags)<>0 then cat:=cat+', Amateur porn';
          if pos('Webcam',tags)<>0 then cat:=cat+', Webcam';
          if (pos('Fisting',tags)<>0) or (pos('fisting',tags)<>0) then cat:=cat+', Fisting porn videos';
          if (pos('Masturbation',tags)<>0) or (pos('masturbation',tags)<>0) then cat:=cat+', Masturbation porn';
        end;
        if (pos('Lesbian',OpenTextFileDialog1.FileName)<>0) then
        begin
          cat:='Lesbian girls'; ch:='Sexy lesbian girls kissing and licking pussies Vip collection';
          if (pos('Teen',tags)<>0) or (pos('teen',tags)<>0) then cat:=cat+', Teen';
          if pos('MILF',tags)<>0 then cat:=cat+', MILF porn';
          if (pos('Mature',tags)<>0) or (pos('mature',tags)<>0) then cat:=cat+', Mature porn';
          if (pos('Strap On',tags)<>0) or (pos('StrapOn',tags)<>0) or (pos('strapon',tags)<>0) or
            (pos('Dildo',tags)<>0) then cat:=cat+', Strap On';
          if pos('Public',tags)<>0 then cat:=cat+', Public';
          if pos('Amateur',tags)<>0 then cat:=cat+', Amateur porn';
          if pos('Webcam',tags)<>0 then cat:=cat+', Webcam';
          if (pos('Fisting',tags)<>0) or (pos('fisting',tags)<>0) then cat:=cat+', Fisting porn videos';
          if (pos('Masturbation',tags)<>0) or (pos('masturbation',tags)<>0) then cat:=cat+', Masturbation porn';
        end;
      end;
      if (temp='') and ((pos('[b]Tags[/b]',Memo2.Lines[i+1])<>0) or (pos('k2s.cc/file',Memo2.Lines[i+1])<>0)) then ban:=1;
      if pos('[b]Description[/b]',temp)<>0 then
      begin
        des:=1; delete(temp,1,20); temp:='9*3*Description: '+temp;
      end;
      if (pos('K2S DOWNLOAD',temp)<>0) or (pos('keywords: ',temp)<>0) or (pos('[u]FileName',Memo2.Lines[i-1])<>0) or
      (pos('[b]Length[/b]',temp)<>0) or (pos('[b]Format[/b]',temp)<>0) or (pos('[b]Video[/b]',temp)<>0) or
      (pos('picstate.com',temp)<>0) then ban:=1;
      if pos('k2s.cc/file',temp)<>0 then if des=1 then
      begin
        ban:=0; j:=pos('Studio: ',Memo2.Lines[i+3]);
        if j<>0 then st:=copy(Memo2.Lines[i+3],j+8,length(Memo2.Lines[i+3])-j-7);
        for j:=0 to length(st)-1 do if st[j]=' ' then delete(st,j,1);
        fileid:=''; j:=pos('k2s.cc/file/',temp); while temp[j+12]<>']' do begin fileid:=fileid+copy(temp,j+12,1); j:=j+1; end;
        temp:='9*3*File id: '+fileid+#13+'9*3*Title: '+nm+#13+'9*3*Channel: '+ch+#13+'9*3*Categories: '+cat+#13+
          '9*3*Tags: '+tags+#13+'9*3*Actors: '+act+#13+'9*3*Studio: '+st+#13; des:=0;
      end;
      if ban=0 then Memo1.Lines.Add(temp) else ban:=0;
    end;
    temp2:=OpenTextFileDialog1.FileName;
    i:=length(temp2);
    while temp2[i]<>'\' do i:=i-1; insert('[xf]',temp2,i+1);
    Memo1.Lines.SaveToFile(temp2,TEncoding.UTF8); Memo1.Clear; Memo2.Clear;
    PlaySound('sound\ready.wav', 0, SND_ASYNC);
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
var scr,ban,des,g: integer; lh,ft,vd,url,nm,tags,picst2,picst1,info,desc: string;
begin
  if OpenTextFileDialog1.Execute then
  begin
    Memo1.Clear; Memo2.Lines.LoadFromFile(OpenTextFileDialog1.FileName); temp:=OpenTextFileDialog1.FileName;
    i:=length(temp); while temp[i]<>'\' do i:=i-1; insert('[site]',temp,i+1);
    OpenTextFileDialog1.FileName:=temp; scr:=0; ban:=0; des:=0;
    for i:=0 to Memo2.Lines.Count-1 do
    begin
      temp:=Memo2.Lines[i];
      if (temp='') or (pos('Total',temp)<>0) or (pos('======',temp)<>0) then ban:=1;
      if pos('[u]FileName',temp)<>0 then
      begin
        nm:=Memo2.Lines[i+1]; j:=pos('[b]',nm); if j<>0 then delete(nm,j,3);
        j:=pos('[/b]',nm); if j<>0 then delete(nm,j,4); ban:=1; tags:='';
        if (pos('JerkOffInstruction',OpenTextFileDialog1.FileName)<>0) or (pos('CEI',OpenTextFileDialog1.FileName)<>0) then
          tags:='JOI, jerk off instructions, dirty talk, jerkoff instructions,' else
          if pos('Blowjob',OpenTextFileDialog1.FileName)<>0 then tags:='Blowjob,' else
            if pos('FemDom',OpenTextFileDialog1.FileName)<>0 then tags:='FemDom,' else
              if pos('LezDom',OpenTextFileDialog1.FileName)<>0 then tags:='LezDom,';
        if tags<>'' then if tags[1]=' ' then delete(tags,1,1);
        k:=1000;
        j:=pos(' — ',nm); if (j<>0) and (k>j) then k:=j;
        j:=pos(' - ',nm); if (j<>0) and (k>j) then k:=j;
        j:=pos(' – ',nm); if (j<>0) and (k>j) then k:=j;
        j:=pos(' − ',nm); if (j<>0) and (k>j) then k:=j;
        if k<>1000 then tags:=copy(nm,1, k-1)+', '+tags;
        if tags<>'' then for j:=0 to length(tags)-1 do if (tags[j]=',') and (tags[j+1]<>' ') then insert(' ',tags,j);
      end;
      j:=pos('[b]Tags[/b]',temp); if j<>0 then
      begin
        delete(temp,j,13); for j:=1 to length(temp) do if temp[j]='#' then delete(temp,j,1); ban:=1; tags:=tags+temp;
      end;
      if (temp='') and ((pos('[b]Tags[/b]',Memo2.Lines[i+1])<>0) or (pos('k2s.cc/file/',Memo2.Lines[i+1])<>0)
      or (pos('https://tezfiles',Memo2.Lines[i+1])<>0))
      then ban:=1;
      j:=pos('[b]Description[/b]',temp); if j<>0 then
      begin
        delete(temp,j,20); temp:='<p style="font-size:15px">'+temp;
        for j:=i+1 to Memo2.Lines.Count-1 do
        begin
          if pos('[b]Format[/b]', Memo2.Lines[j+1])<>0 then begin temp:=temp+'</p>'; break; end else temp:=temp+Memo2.Lines[j];
        end;
        desc:=temp;
      end;
      j:=pos('[b]Length[/b]',temp); if j<>0 then
      begin
        delete(temp,j,15); j:=pos('B for ',temp); delete(temp,j+1,5); insert(' | ',temp,j+1); lh:=temp; ban:=1;
      end;
      if pos('[b]Format[/b]',temp)<>0 then
      begin
        ft:=copy(temp,16,length(temp)-15); ban:=1; des:=0;
      end;
      if pos('[b]Video[/b]',temp)<>0 then
      begin
        vd:=copy(temp,15,length(temp)-14);
        while not ((vd[1] in ['0'..'9']) and (vd[2] in ['0'..'9'])) do delete(vd,1,1);
        j:=pos('x',vd); if j<>0 then
        begin
          while (vd[j+1] in ['0'..'9']) do j:=j+1; delete(vd,j+1,length(vd)-j);
        end;
        j:=pos('*',vd); if j<>0 then
        begin
          while (vd[j+1] in ['0'..'9']) do j:=j+1; delete(vd,j+1,length(vd)-j);
        end;
        j:=pos(')',vd); if j<>0 then delete(vd,1,j);
        j:=pos('х',vd); if j<>0 then
        begin
          g:=j; while (vd[j+1] in ['0'..'9']) do j:=j+1; delete(vd,j+1,length(vd)-j);
          while (vd[g-1] in ['0'..'9']) do g:=g-1; delete(vd,1,g-1);
        end;
        for j:=1 to length(vd) do if vd[j]=' ' then delete(vd,j,1);
        info:='<center><p>'+ft+' | '+vd+' | '+lh+'</p></center>'; ban:=1;
      end;
      j:=pos('k2s.cc/file/',temp); if j<>0 then
      begin
        j:=j+12; k:=pos(']K2S DOWNLOAD',temp); url:=copy(temp,j,k-j);
        temp:='<h3 class="download" style="text-align: center;"><a href="https://k2s.cc/file/'+url+
        '" target="_blank" rel="noopener"><span style="color: #ffffff;"><strong>Download File</strong></span></a></h3>'+picst2;
        Memo1.Lines.Add(picst1+desc+#13+info+#13+temp+'9756'+nm+'9756'+tags); desc:=''; info:=''; picst2:=''; picst1:='';
      end;
      j:=pos('tezfiles.com/file/',temp); if j<>0 then
      begin
        j:=j+18; k:=pos(']TEZFILES DOWNLOAD',temp); url:=copy(temp,j,k-j);
        temp:='<h3 class="download" style="text-align: center;"><a href="https://tezfiles.com/file/'+url+
        '" target="_blank" rel="noopener"><span style="color: #ffffff;"><strong>Download File</strong></span></a></h3>'+picst2;
        Memo1.Lines.Add(picst1+desc+#13+info+#13+temp+'9756'+nm+'9756'+tags); desc:=''; info:=''; picst2:=''; picst1:='';
      end;
      if (pos('K2S DOWNLOAD',temp)<>0) or (pos('keywords: ',temp)<>0) or (pos('[u]FileName',Memo2.Lines[i-1])<>0)
      or (pos('TEZFILES DOWNLOAD',temp)<>0) then ban:=1;
      if pos('picstate.com',temp)<>0 then
      begin
        ban:=1; j:=pos('1.jpg[/img]',temp); if j<>0 then scr:=1;
        k:=pos('[img]',temp); j:=pos('[/img]',temp); temp2:=copy(temp,k+5,j-k-5); j:=pos('thumbs',temp2);
        delete(temp2,j,12); insert('files',temp2,j);
        if scr=0 then picst2:='<center><a href="'+temp2+'" target="_blank" rel="noopener noreferrer nofollow"><img src="'+temp2+'" alt="'+nm+'" width="600"/></a></center>'
        else picst1:='9756<img class="aligncenter" src="'+temp2+'" alt="Analized, Jasmin - Paint My Face With Your Cum" width="600" /><!--more-->';
        scr:=0;
      end;
      {if ban=0 then
      begin
        if des=1 then
        begin
          if (pos('[/b]', temp)=0) and (Memo2.Lines[i]<>'') then if pos('[b]Format',Memo2.Lines[i+2])<>0 then
          Memo1.Lines.Add(temp+'</p>') else Memo1.Lines.Add(temp+'<br>');
        end
        else
        begin
          j:=pos('[b]',temp); if j<>0 then delete(temp,j,3); j:=pos('[/b]',temp); if j<>0 then delete(temp,j,4);
          Memo1.Lines.Add(temp);
        end;
      end
      else ban:=0;}
    end;
    Memo1.Lines.SaveToFile(OpenTextFileDialog1.FileName,TEncoding.UTF8); Memo1.Clear; Memo2.Clear;
    PlaySound('sound\ready.wav', 0, SND_ASYNC);
  end;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Description:=''; MemoUpdate; Memo3.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  temp:=TimeToStr(Time); delete(temp,length(temp)-3,3);
  for i:=1 to length(temp) do if temp[i]=':' then begin delete(temp,i,1); insert('h',temp,i); break; end;
  temp:=' '+DateTostr(Date)+' '+temp+'m'; FileSaveDialog1.FileName:='Porn';
  if FileSaveDialog1.Execute then
  begin
    temp:=FileSaveDialog1.FileName+temp; CreateDir(temp);
    for tx:=0 to mtx do
    begin
      AssignFile(f,ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'); reset(f); Read(f,temp2); CloseFile(f); delete(temp2,1,7);
      if temp2<>'0' then
        CopyFile(PWideChar(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'),PWideChar(temp+'/'+topicX[tx]+'.txt'), true);
    end;
    PlaySound('sound\ready.wav', 0, SND_ASYNC);
  end;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  n:=fn; Edit8.Text:=n; Clipboard.asText:=sym+'.'+AnsiLowerCase(Format);
end;

procedure TForm1.Button23Click(Sender: TObject);
var scr,ban,des: integer; lh,ft,vd,url,nm,tags,picst,info,desc: string;

begin
  if OpenTextFileDialog1.Execute then
  begin
    Memo1.Clear; Memo2.Lines.LoadFromFile(OpenTextFileDialog1.FileName); temp:=OpenTextFileDialog1.FileName;
    i:=length(temp); while temp[i]<>'\' do i:=i-1; insert('[site]',temp,i+1);
    OpenTextFileDialog1.FileName:=temp; scr:=0; ban:=0; des:=0;
    for i:=0 to Memo2.Lines.Count-1 do
    begin
      temp:=Memo2.Lines[i];
      if (temp='') or (pos('Total',temp)<>0) or (pos('======',temp)<>0) then ban:=1;
      if pos('[u]FileName',temp)<>0 then
      begin
        nm:=Memo2.Lines[i+1]; j:=pos('[b]',nm); if j<>0 then delete(nm,j,3);
        j:=pos('[/b]',nm); if j<>0 then delete(nm,j,4); ban:=1; tags:='';
        if (pos('JerkOffInstruction',OpenTextFileDialog1.FileName)<>0) or (pos('CEI',OpenTextFileDialog1.FileName)<>0) then
          tags:='JOI, jerk off instructions, dirty talk, jerkoff instructions,' else
          if pos('Blowjob',OpenTextFileDialog1.FileName)<>0 then tags:='Blowjob,' else
            if pos('FemDom',OpenTextFileDialog1.FileName)<>0 then tags:='FemDom,' else
              if pos('LezDom',OpenTextFileDialog1.FileName)<>0 then tags:='LezDom,';
        if tags<>'' then if tags[1]=' ' then delete(tags,1,1);
        k:=1000;
        j:=pos(' — ',nm); if (j<>0) and (k>j) then k:=j;
        j:=pos(' - ',nm); if (j<>0) and (k>j) then k:=j;
        j:=pos(' – ',nm); if (j<>0) and (k>j) then k:=j;
        j:=pos(' − ',nm); if (j<>0) and (k>j) then k:=j;
        if k<>1000 then tags:=copy(nm,1, k-1)+', '+tags;
        if tags<>'' then for j:=0 to length(tags)-1 do if (tags[j]=',') and (tags[j+1]<>' ') then insert(' ',tags,j);
      end;
      j:=pos('[b]Tags[/b]',temp); if j<>0 then
      begin
        delete(temp,j,13); for j:=1 to length(temp) do if temp[j]='#' then delete(temp,j,1); ban:=1; tags:=tags+temp;
      end;
      if (temp='') and ((pos('[b]Tags[/b]',Memo2.Lines[i+1])<>0) or (pos('k2s.cc/file/',Memo2.Lines[i+1])<>0)
      or (pos('https://takefile',Memo2.Lines[i+1])<>0))
      then ban:=1;
      j:=pos('[b]Description[/b]',temp); if j<>0 then
      begin
        delete(temp,j,20); temp:='<p style="font-size:15px">'+temp;
        for j:=i+1 to Memo2.Lines.Count-1 do
        begin
          if pos('[b]Format[/b]', Memo2.Lines[j+1])<>0 then begin temp:=temp+'</p>'; break; end else temp:=temp+Memo2.Lines[j];
        end;
        desc:=temp;
      end;
      j:=pos('[b]Length[/b]',temp); if j<>0 then
      begin
        delete(temp,j,15); j:=pos('B for ',temp); delete(temp,j+1,5); insert(' | ',temp,j+1); lh:=temp; ban:=1;
      end;
      if pos('[b]Format[/b]',temp)<>0 then
      begin
        ft:=copy(temp,16,length(temp)-15); ban:=1; des:=0;
      end;
      if pos('[b]Video[/b]',temp)<>0 then
      begin
        vd:=copy(temp,15,length(temp)-14); for j:=1 to length(vd) do if vd[j]=' ' then delete(vd,j,1);
        while not ((vd[1] in ['0'..'9']) and (vd[2] in ['0'..'9'])) do delete(vd,1,1);
        j:=pos('x',vd); if j<>0 then
        begin
          while (vd[j+1] in ['0'..'9']) do j:=j+1; delete(vd,j+1,length(vd)-j);
        end;
        j:=pos('*',vd); if j<>0 then
        begin
          while (vd[j+1] in ['0'..'9']) do j:=j+1; delete(vd,j+1,length(vd)-j);
        end;
        info:='<center><p>'+ft+' | '+vd+' | '+lh+'</p></center>'; ban:=1;
      end;
      j:=pos('k2s.cc/file/',temp); if j<>0 then
      begin
        j:=j+12; k:=pos(']K2S DOWNLOAD',temp); url:=copy(temp,j,k-j);
        temp:='9756<center><a href="https://k2s.cc/file/'+url+'" target="_blank" rel="noopener noreferrer nofollow"><img border="0" src="http://blowjobqueens.net/wp-content/uploads/2020/11/Keep2Share.png" alt="keep2share.cc" /></a></center><!--more-->'+info+#13+desc+#13+picst;
        Memo1.Lines.Add(temp+'9756'+nm+'9756'+tags); desc:=''; info:=''; picst:='';
      end;
      if (pos('K2S DOWNLOAD',temp)<>0) or (pos('keywords: ',temp)<>0) or (pos('[u]FileName',Memo2.Lines[i-1])<>0)
      then ban:=1;
      if pos('picstate.com',temp)<>0 then
      begin
        ban:=1; j:=pos('1.jpg[/img]',temp); if j<>0 then scr:=1
        else if (pos('2.jpg[/img]',temp)<>0) or (pos('1.jpg[/img]',temp)<>0) then Memo2.Lines.Delete(i) else
          begin
            k:=pos('[img]',temp); j:=pos('[/img]',temp); temp2:=copy(temp,k+5,j-k-5); j:=pos('thumbs',temp2);
            delete(temp2,j,12); insert('files',temp2,j);
            if scr<>0 then picst:='<center><a href="'+temp2+'" target="_blank" rel="noopener noreferrer nofollow"><img src="'+temp2+'" alt="'+nm+'" width="600"/></a></center>';
            scr:=0;
          end;
      end;
      {if ban=0 then
      begin
        if des=1 then
        begin
          if (pos('[/b]', temp)=0) and (Memo2.Lines[i]<>'') then if pos('[b]Format',Memo2.Lines[i+2])<>0 then
          Memo1.Lines.Add(temp+'</p>') else Memo1.Lines.Add(temp+'<br>');
        end
        else
        begin
          j:=pos('[b]',temp); if j<>0 then delete(temp,j,3); j:=pos('[/b]',temp); if j<>0 then delete(temp,j,4);
          Memo1.Lines.Add(temp);
        end;
      end
      else ban:=0;}
    end;
    Memo1.Lines.SaveToFile(OpenTextFileDialog1.FileName,TEncoding.UTF8); Memo1.Clear; Memo2.Clear;
    PlaySound('sound\ready.wav', 0, SND_ASYNC);
  end;
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  Edit8.Text:=ClipBoard.AsText;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  case MessageDlg('Вы уверены?',mtInformation,[mbYes, mbNo],0) of
    IDYes:
    begin
      for tx:=0 to mtx do
        begin AssignFile(f,ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'); rewrite(f); WriteLn(f,'Total: 0'); CloseFile(f); end;
      AssignFile(f,'Phun.org.txt'); rewrite(f); WriteLn(f,'Total: 0'); CloseFile(f);
      Caption:=Version+' | Очищено'; Count;
    end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if SelectDirectory('Выберите каталог','', Folder2) then
  begin
    Memo2.Clear;
    if FindFirst(Folder2+'\*.*', faAnyFile, SR) = 0 then
    begin
      repeat Memo2.Lines.Add(SR.Name); until FindNext(SR)<>0; FindClose(SR);
    end;
    for k:=2 to Memo2.Lines.Count-1 do
    begin
      oldName:=Memo2.Lines[k]; newName:=oldName;
      if Edit9.Text<>'' then
      begin
        j:=pos(Edit9.Text,NewName); if j<>0 then delete(NewName,j,length(Edit9.Text));
      end;
      if Edit15.Text<>'' then
      begin
        NewName:=Edit15.Text+NewName;
      end;
      if CheckBox4.Checked=True then for i:=1 to length(newName) do
      begin
        j:=i; while newName[j] in ['0'..'9'] do j:=j+1; if j-i>1 then delete(newName,i,j-i);
      end;
      if Edit11.Text<>'' then
      begin
        j:=pos(Edit11.Text,newName); if j<>0 then begin delete(newName,j,length(Edit11.Text)); insert(Edit12.Text,newName,j); end;
      end;
      if CheckBox3.Checked=True then for i:=1 to length(newName) do
      begin
        if newName[i]='_' then begin delete(newName,i,1); insert(' ',newName,i); dis(newName); end;
        if (newName[i]='.') and (length(newName)-i>6) then
        begin
          delete(newName,i,1); insert(' ',newName,i); dis(newName);
        end;
      end;
      if CheckBox10.Checked=True then for i:=1 to length(newName) do
      begin
        if newName[i]='-' then begin delete(newName,i,1); insert(' ',newName,i); dis(newName); end;
        if (newName[i]='.') and (length(newName)-i>6) then
        begin
          delete(newName,i,1); insert(' ',newName,i); dis(newName);
        end;
      end;
      if CheckBox2.Checked=True then
      begin
        if newName[1] in ['a'..'z'] then newName[1]:=UpCase(newName[1]);
        for i:=1 to length(newName)-1 do
          if (newName[i]=' ') and (newName[i+1] in ['a'..'z']) then newName[i+1]:=UpCase(newName[i+1]);
      end;
      if CheckBox6.Checked=True then for i:=1 to length(newName) do
        if (newName[i] in ['a'..'z']) and (newName[i+1] in ['A'..'Z']) then insert(' ',newName,i+1);
      NewName:=dis(copy(NewName,1,length(NewName)-4))+copy(NewName,length(NewName)-3,4);
    //ReName
      if oldName<>newName then RenameFile(Folder2+'\'+oldName,Folder2+'\'+newName);
    end;
    Memo2.Clear; Edit9.Text:=''; Edit15.Text:=''; Edit11.Text:=''; Edit12.Text:=''; PlaySound('sound\ok.wav', 0, SND_ASYNC);
  end;
end;

procedure TForm1.AddVideo;
begin
  Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topic+'.txt');
  //Count
  temp:=Memo2.Lines[0]; delete(temp,1,7); c:=StrToInt(temp); c:=c+1; Memo2.Lines[0]:='Total: '+IntToStr(c);
  //Separator
  d:=''; for i:= 1 to 82 do d:=d+'='; Memo2.Lines.Add(#13#10+IntToStr(c)+' '+d+' '+IntToStr(c));
  //PostList.
  Memo2.Lines.Add(Memo1.Text);
  if Memo2.Lines[Memo2.Lines.Count-1]='' then Memo2.Lines.Delete(Memo2.Lines.Count-1);
  Memo2.Lines.Add(IntToStr(c)+' '+d+' '+IntToStr(c));
  Memo2.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topic+'.txt'); Caption:=Version+' | Добавлено '+IntToStr(c)+'. '+n;
  //Phun.org
  if CheckBox7.Checked=True then
  begin
    Memo2.Lines.LoadFromFile('Phun.org.txt');
    temp:=Memo2.Lines[0]; delete(temp,1,7); c:=StrToInt(temp); c:=c+1; Memo2.Lines[0]:='Total: '+IntToStr(c);
    d:=''; for i:= 1 to 82 do d:=d+'='; Memo2.Lines.Add(#13#10+IntToStr(c)+' '+d+' '+IntToStr(c));
    Memo2.Lines.Add(Memo1.Text);
    if Memo2.Lines[Memo2.Lines.Count-1]='' then Memo2.Lines.Delete(Memo2.Lines.Count-1);
    Memo2.Lines.Add(IntToStr(c)+' '+d+' '+IntToStr(c)); Memo2.Lines.SaveToFile('Phun.org.txt');
  end;
  Count;
  //Clear
  if CheckBox5.Checked=False then begin Edit2.Text:=''; TagsPost:=''; end;
  if CheckBox9.Checked=False then Edit7.Text:='';
  if CheckBox11.Checked=False then begin Memo3.Clear; Description:=''; end;
  fn:=''; n:='';sym:=''; shoot1:=''; shoot2:=''; Duration:=''; Size:=''; Video:='';
  Memo1.Clear; Image1.Picture:=nil; Image2.Picture:=nil; Button7.Visible:=False; Format:='';
  Button8.Visible:=False; Edit1.Text:='';  Edit4.Text:=''; Edit5.Text:=''; Edit6.Text:='';
  Edit8.Text:=''; autocopy:=0;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  for i:=0 to BannedWords.Count-1 do
  begin
    if pos(AnsiLowerCase(BannedWords[i]),AnsiLowerCase(n))<>0 then
    begin
      PlaySound('sound\bannedWord.wav', 0, SND_ASYNC);
      case MessageDlg (BannedWords[i]+' в Name. Продолжить?',mtInformation,[mbYes, mbNo],0) of IDNo: break; end;
    end;
    if pos(AnsiLowerCase(BannedWords[i]),AnsiLowerCase(Description))<>0 then
    begin
      PlaySound('sound\bannedWord.wav', 0, SND_ASYNC);
      case MessageDlg (BannedWords[i]+' в Description. Продолжить?',mtInformation,[mbYes, mbNo],0) of IDNo: break; end;
    end;
    if pos(AnsiLowerCase(BannedWords[i]),AnsiLowerCase(TagsPost))<>0 then
    begin
      PlaySound('sound\bannedWord.wav', 0, SND_ASYNC);
      case MessageDlg(BannedWords[i]+' в Tags. Продолжить?',mtInformation,[mbYes, mbNo],0) of IDNo: break; end;
    end;
  end;
  if i=BannedWords.Count then
    if (Size='') then
    case MessageDlg('Вы не указали Размер. Продолжить?',mtInformation,[mbYes, mbNo],0) of
      IDYes: AddVideo;
    end
    else if Duration='' then
    case MessageDlg('Вы не указали Продолжительность. Продолжить?',mtInformation,[mbYes, mbNo],0) of
      IDYes: AddVideo;
    end
    else if Format='' then
    case MessageDlg('Вы не указали Формат. Продолжить?',mtInformation,[mbYes, mbNo],0) of
      IDYes: AddVideo;
    end
    else if Video='' then
    case MessageDlg('Вы не указали Видео. Продолжить?',mtInformation,[mbYes, mbNo],0) of
      IDYes: AddVideo;
    end
    else begin AddVideo; Count; end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  fn:=''; n:='';shoot1:=''; shoot2:=''; Duration:=''; Size:=''; Description:=''; TagsPost:=''; Video:='';
  Format:=''; Memo1.Clear; Image1.Picture:=nil; Image2.Picture:=nil; Caption:='';
  Button7.Visible:=False; Button8.Visible:=False; DoShoot(3); DoShoot(4); Edit1.Text:=''; Edit2.Text:='';
  Edit4.Text:=''; Edit5.Text:=''; Edit6.Text:=''; sym:=''; autocopy:=0; Memo3.Clear; Count;
  Label9.Caption:=''; Edit3.Text:=''; Edit8.Text:=''; Edit7.Text:='';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if Button6.Caption=' | > ' then begin Button6.Caption:=' | | '; nwnd:=SetClipboardViewer(Handle); end
  else begin Button6.Caption:=' | > '; ChangeClipboardChain(Handle, nwnd); end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Button7.Visible:=False; Image1.Picture:=nil; shoot1:=''; MemoUpdate; DoShoot(3);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Button8.Visible:=False; Image2.Picture:=nil; shoot2:=''; MemoUpdate; DoShoot(4);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if SelectDirectory('','',Folder) then
  begin
    Edit13.Text:=Folder;
    AssignFile(f,'cfg.txt'); rewrite(f); WriteLn(f,Folder); CloseFile(f);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  topic:='Teen'; fn:=''; n:=''; shoot1:=''; shoot2:=''; Duration:=''; Size:=''; Description:='';
  TagsPost:=''; Video:=''; Format:=''; SpeedButton3.Down:=true; SpeedButton3.Font.Style:=[fsBold]; sym:='';
  autocopy:=0; Caption:=Version; Count; DragAcceptFiles(Handle, true); cq:=StrToInt(Edit10.Text);
  AssignFile(f,'cfg.txt'); reset(f); Read(f,Folder); CloseFile(f); Edit13.Text:=Folder;
  BannedWords:=TStringList.Create; BannedWords.LoadFromfile('BannedWords.txt');
end;

procedure TForm1.FormDblClick(Sender: TObject);
begin
  ShellExecute(Handle,'open', PChar(ExtractFilePath(Application.ExeName)+'\Topics'), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Button6.Caption=' | | ' then ChangeClipboardChain(Handle, nwnd); DragAcceptFiles(Handle, False);
end;

procedure TForm1.Image1DblClick(Sender: TObject);
var ABmpAll: TBitMap;
    APic1,APic2,APicAll: TJPEGImage;
begin
  APic1 := TJPEGImage.Create; APic2 := TJPEGImage.Create;
  APicAll := TJPEGImage.Create; ABmpAll := TBitmap.Create;
  APic1.LoadFromFile(Folder+'\'+sym+'_1.jpg'); APic2.LoadFromFile(Folder+'\'+sym+'_2.jpg');
  ABmpAll.Width:= APic1.Width + APic2.Width;
  if APic1.Height > APic2.Height then ABmpAll.Height := APic1.Height else ABmpAll.Height := APic2.Height;
  ABmpAll.Canvas.Draw(0,0,APic1); ABmpAll.Canvas.Draw(APic1.Width+1,0,APic2);
  wh:=Round(1000/ABmpAll.Width*ABmpAll.Height);
  if ABmpAll.Width>1000 then
  begin
    SetStretchBltMode(ABmpAll.canvas.handle,4);
    StretchBlt(ABmpAll.canvas.handle,0,0,1000,wh,ABmpAll.canvas.handle, 0,0,ABmpAll.width,ABmpAll.height,SRCCOPY);
    ABmpAll.SetSize(1000,wh);
  end;
  APicAll.CompressionQuality:=cq; APicAll.Assign(ABmpAll);
  APicAll.SaveToFile(Folder+'\'+sym+'_1.jpg');
  Image1.Picture.LoadFromFile(Folder+'\'+sym+'_1.jpg'); shoot1:='1'; MemoUpdate;
  APic1.Free; APic2.Free; ABmpAll.Free; APicAll.Free; Button8.Click;
end;

procedure TForm1.Image2DblClick(Sender: TObject);
var ABmpAll: TBitMap;
    APic1,APic2,APicAll: TJPEGImage;
begin
  if (Button7.Visible=true and Button8.Visible=true) then
  begin
    APic1 := TJPEGImage.Create; APic2 := TJPEGImage.Create;
    APicAll := TJPEGImage.Create; ABmpAll := TBitmap.Create;
    APic1.LoadFromFile(Folder+'\'+sym+'_1.jpg'); APic2.LoadFromFile(Folder+'\'+sym+'_2.jpg');
    ABmpAll.Width:= APic1.Width + APic2.Width;
    if APic1.Height > APic2.Height then ABmpAll.Height := APic1.Height else ABmpAll.Height := APic2.Height;
    ABmpAll.Canvas.Draw(0,0,APic1); ABmpAll.Canvas.Draw(APic1.Width+1,0,APic2);
    wh:=Round(1000/ABmpAll.Width*ABmpAll.Height);
    if ABmpAll.Width>1000 then
    begin
      SetStretchBltMode(ABmpAll.canvas.handle,4);
      StretchBlt(ABmpAll.canvas.handle,0,0,71000,wh,ABmpAll.canvas.handle,0,0,ABmpAll.width,ABmpAll.height,SRCCOPY);
      ABmpAll.SetSize(1000,wh);
    end;
    APicAll.CompressionQuality:=cq; APicAll.Assign(ABmpAll);
    APicAll.SaveToFile(Folder+'\'+sym+'_2.jpg');
    Image2.Picture.LoadFromFile(Folder+'\'+sym+'_2.jpg'); shoot1:='2'; MemoUpdate;
    APic1.Free; APic2.Free; ABmpAll.Free; APicAll.Free; Button7.Click;
  end;
end;

procedure TForm1.WMChangeCBChain(var msg: TWMChangeCBChain);
begin
  if msg.Remove=nwnd then nwnd:=msg.Next else SendMessage(nwnd, WM_CHANGECBCHAIN, msg.Remove, msg.Next);
end;

procedure TForm1.CheckName;
begin
  i:=0; while fn[i]<>' ' do
  begin
    if pos('.com',fn)<>0 then delete(fn,1,pos('.com',fn)+4); i:=i+1;
  end;
  for i:=1 to length(fn) do if fn[i] in ['/', '\', '|', '#'] then delete(fn,i,1);
  j:=0; for i:= 1 to length(fn) do for h:=1 to length(rus) do if fn[i]=rus[h] then j:=j+1;
  if j=1 then for i:= 1 to length(fn) do for h:=1 to length(rus) do if fn[i]=rus[h] then delete(fn,i,1);
  if j>1 then
  begin
    j:=length(fn); k:=0;
    for i:= 1 to length(fn) do for h:=1 to length(rus) do if fn[i]=rus[h] then
    begin if i<j then j:=i; if i>k then k:=i; end; delete(fn,j,k+1-j);
  end;
  j:=length(fn); k:=0; i:=0; while i<=length(fn) do
  begin
    if fn[i]='(' then if i+1<=length(fn) then if fn[i+1] in ['0'..'9'] then j:=i;
    if fn[i]=')' then if fn[i-1] in ['0'..'9'] then k:=i; i:=i+1;
  end;
  if k>j then delete(fn,j,k+1-j);
  for i:=1 to length(fn)-1 do
  begin
    if i+4<=length(fn) then
    begin
      if copy(fn,i,5)='&amp;' then begin delete(fn,i,5); insert('&',fn,i); end;
      if copy(fn,i,5)='&039;' then begin delete(fn,i,5); insert('''',fn,i); end;
    end;
    if fn[i]='`' then begin delete(fn,i-1,2); insert('''',fn,i-1); end;
  end;
  fn:=dis(fn); j:=length(fn); k:=0; i:=0; while i<=length(fn) do
  begin
    if (fn[i] in ['0'..'9']) and (i<>1) then if i+1<=length(fn) then if fn[i+1] in ['0'..'9'] then
    begin if i<j then j:=i; if i>k then k:=i; i:=i+1; end; i:=i+1;
  end;  delete(fn,j,k+2-j); fn:=dis(fn);
  for i:=1 to length(fn) do begin if fn[i]='(' then j:=i; if fn[i]=')' then k:=i; end;
  if (j<>0) and (fn[length(fn)]=')') and (k<>0) then
    begin fn:=copy(fn,1,j-1)+'- '+dis(copy(fn,j+1,k-1-j)); fn:=dis(fn); end;
  if fn[length(fn)]='.' then begin delete(fn,length(fn),1); fn:=dis(fn) end;
  if fn[length(fn)]='-' then begin delete(fn,length(fn),1); fn:=dis(fn) end;
  if fn[1]='-' then begin delete(fn,1,1); fn:=dis(fn) end;
  if fn[length(fn)]='(' then begin delete(fn,length(fn),1); fn:=dis(fn) end;
  i:=pos('-',fn); if i<>0 then if pos(copy(fn,1,i-2),copy(fn,i+1,length(fn)-i))<>0 then
    begin delete(fn,1,i); fn:=dis(fn); end;
end;

procedure TForm1.WMDrawClipBoard(var msg: TWMDrawClipboard);
var scr,ban,des: integer; nm,tags, st: string;
begin
  Clipboard.Open; sleep(200); Application.ProcessMessages;
  if ClipBoard.HasFormat(CF_TEXT) then
  begin
    temp:=ClipBoard.AsText;
    //Poster or ScreenShot
    if (Copy(temp,1,24)='[url=http://picstate.com')or (Copy(temp,1,25)='[url=https://picstate.com') then
    begin
      Memo3.WordWrap:=False;
      for i:= 1 to length(temp) do if temp[i]=' ' then
        begin delete(temp,i,1); insert(#13#10,temp,i); end;
      Memo3.Text:=temp; report:=0;
      for h:=0 to Memo3.Lines.Count-1 do
      begin
        //600 px
        temp:=Memo3.Lines[h];
        i:=pos('files/',temp); if i<>0 then begin delete(temp,i,5); insert('thumbs/small',temp,i); end;
        //Name & bb-cod
        i:=length(temp)-16; while temp[i]<>'/' do i:=i-1; temp2:=copy(temp,i+1,length(temp)-16-i);
        if (temp2[length(temp2)]='1') or (temp2[length(temp2)]='2') then
        delete(temp2,length(temp2)-1,2) else
        begin
          i:=length(temp2); while temp2[i]<>'.' do begin delete(temp2,i,1); i:=i-1; end;
          delete(temp2,length(temp2),1);
        end;
        temp3:='';
        i:=1; while not (temp2[i] in ['a'..'z']+['A'..'Z']) do i:=i+1;
        while (temp2[i] in ['a'..'z']+['A'..'Z']) do begin temp3:=temp3+temp2[i]; i:=i+1; end;
        sym:='';
        if (temp2[1] in ['a'..'z']+['A'..'Z']) and (temp2[2] in ['a'..'z']+['A'..'Z']) then sym:=temp2[1];
        for j:=2 to length(temp2)-1 do
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and ((temp2[j-1] in ['a'..'z']+['A'..'Z']) or
        (temp2[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp2[j];
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and (temp2[j-1] in ['a'..'z']+['A'..'Z']) then sym:=sym+temp2[j];
        if (temp2[j] in ['0'..'9']) and (temp2[j-1]='_') then sym:=sym+temp2[j]; temp2:=sym;
        //Paste
        for tx:=0 to mtx do
        begin
          Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'); i:=1;
          while i<=Memo2.Lines.Count do
          begin
            if (pos('[u]FileName:',Memo2.Lines[i])<>0) and (pos(temp3,Memo2.Lines[i])<>0) then
            begin
              temp4:=copy(Memo2.Lines[i],14,length(Memo2.Lines[i]));
              j:=1; while temp4[j]<>'[' do j:=j+1; temp4:=copy(temp4,1,j-5);
              sym:='';
              if (temp4[1] in ['a'..'z']+['A'..'Z']) and (temp4[2] in ['a'..'z']+['A'..'Z']) then sym:=temp4[1];
              for j:=2 to length(temp4)-1 do
              if (temp4[j] in ['a'..'z']+['A'..'Z']) and ((temp4[j-1] in ['a'..'z']+['A'..'Z']) or
              (temp4[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp4[j];
              if (temp4[j] in ['a'..'z']+['A'..'Z']) and (temp4[j-1] in ['a'..'z']+['A'..'Z'])
                then sym:=sym+temp4[j];
              if (temp4[j] in ['0'..'9']) and (temp4[j-1]=' ') then sym:=sym+temp4[j];
              if sym=temp2 then
              begin
                if copy(temp,length(temp)-16,1)='1' then Memo2.Lines[i+3]:=temp else
                if copy(temp,length(temp)-16,1)='2' then while pos('===',Memo2.Lines[i])=0 do
                begin
                  i:=i+1;
                  if pos('2.jpg[/img]',Memo2.Lines[i])<>0 then begin Memo2.Lines[i]:=temp; break; end;
                end
                else while pos('===',Memo2.Lines[i])=0 do
                begin
                  i:=i+1;
                  if pos('SCREENSHOTS',Memo2.Lines[i])<>0 then begin Memo2.Lines[i]:=temp; break; end;
                end;
                report:=report+1; j:=-5; break;
              end;
            end;
            i:=i+1;
          end;
          if j=-5 then
          begin
            Memo2.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'); break;
          end;
        end;
      end;
      Memo3.Clear; Description:=''; MemoUpdate; Memo3.WordWrap:=true;
      if report=h then PlaySound('sound\image.wav', 0, SND_ASYNC)
      else PlaySound('sound\notAll.wav', 0, SND_ASYNC);
      ShowMessage('Подано ссылок - '+IntToStr(h)+#13#10+'Вставлено - '+IntToStr(report));
    end;
    //Pimpandhost.com Poster or ScreenShot
    if Copy(temp,1,24)='[URL=https://pimpandhost' then
    begin
      Memo3.WordWrap:=False;
      for i:= 1 to length(temp) do if temp[i]=' ' then
        begin delete(temp,i,1); insert(#13#10,temp,i); end;
      Memo3.Text:=temp; report:=0;
      for h:=0 to Memo3.Lines.Count-1 do
      begin
        temp:=Memo3.Lines[h];
        //Name & bb-cod
        temp2:=temp;
        i:=length(temp)-18; while temp[i]<>'/' do i:=i-1; temp2:=copy(temp,i+1,length(temp)-i);
        i:=pos('_1_m.jpg[/IMG][/URL]',temp2); if i<>0 then delete(temp2,i,20);
        i:=pos('_2_m.jpg[/IMG][/URL]',temp2); if i<>0 then delete(temp2,i,20);
        i:=pos('_1.jpg[/IMG][/URL]',temp2); if i<>0 then delete(temp2,i,18);
        i:=pos('_2.jpg[/IMG][/URL]',temp2); if i<>0 then delete(temp2,i,18);
        i:=pos('.jpg[/IMG][/URL]',temp2); if i<>0 then delete(temp2,i-6,22);
        temp3:='';
        i:=1; while not (temp2[i] in ['a'..'z']+['A'..'Z']) do i:=i+1;
        while (temp2[i] in ['a'..'z']+['A'..'Z']) do begin temp3:=temp3+temp2[i]; i:=i+1; end;
        sym:='';
        if (temp2[1] in ['a'..'z']+['A'..'Z']) and (temp2[2] in ['a'..'z']+['A'..'Z']) then sym:=temp2[1];
        for j:=2 to length(temp2)-1 do
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and ((temp2[j-1] in ['a'..'z']+['A'..'Z']) or
        (temp2[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp2[j];
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and (temp2[j-1] in ['a'..'z']+['A'..'Z']) then sym:=sym+temp2[j];
        if (temp2[j] in ['0'..'9']) and (temp2[j-1]='_') then sym:=sym+temp2[j]; temp2:=sym;
        //Paste
        for tx:=0 to mtx do
        begin
          Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'); i:=1;
          while i<=Memo2.Lines.Count do
          begin
            if (pos('[u]FileName:',Memo2.Lines[i])<>0) and (pos(temp3,Memo2.Lines[i])<>0) then
            begin
              temp4:=copy(Memo2.Lines[i],14,length(Memo2.Lines[i]));
              j:=1; while temp4[j]<>'[' do j:=j+1; temp4:=copy(temp4,1,j-5);
              sym:='';
              if (temp4[1] in ['a'..'z']+['A'..'Z']) and (temp4[2] in ['a'..'z']+['A'..'Z']) then sym:=temp4[1];
              for j:=2 to length(temp4)-1 do
              if (temp4[j] in ['a'..'z']+['A'..'Z']) and ((temp4[j-1] in ['a'..'z']+['A'..'Z']) or
              (temp4[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp4[j];
              if (temp4[j] in ['a'..'z']+['A'..'Z']) and (temp4[j-1] in ['a'..'z']+['A'..'Z'])
                then sym:=sym+temp4[j];
              if (temp4[j] in ['0'..'9']) and (temp4[j-1]=' ') then sym:=sym+temp4[j];
              if sym=temp2 then
              begin
                if (copy(temp,length(temp)-18,3)='1_m') or (copy(temp,length(temp)-16,1)='1')
                  then Memo2.Lines[i+3]:=temp else
                if (copy(temp,length(temp)-18,3)='2_m') or (copy(temp,length(temp)-16,1)='2')
                  then while pos('===',Memo2.Lines[i])=0 do
                  begin
                    i:=i+1;
                    if pos('2.jpg[/img]',Memo2.Lines[i])<>0 then begin Memo2.Lines[i]:=temp; break; end;
                  end
                else while pos('===',Memo2.Lines[i])=0 do
                begin
                  i:=i+1;
                  if pos('SCREENSHOTS',Memo2.Lines[i])<>0 then begin Memo2.Lines[i]:=temp; break; end;
                end;
                report:=report+1; j:=-5; break;
              end;
            end;
            i:=i+1;
          end;
          if j=-5 then
          begin
            Memo2.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'); break;
          end;
        end;
      end;
      Memo3.Clear; Description:=''; MemoUpdate; Memo3.WordWrap:=true;
      if report=h then PlaySound('sound\image.wav', 0, SND_ASYNC)
      else PlaySound('sound\notAll.wav', 0, SND_ASYNC);
      ShowMessage('Подано ссылок - '+IntToStr(h)+#13#10+'Вставлено - '+IntToStr(report));
    end;
    //FileJoker Link
    if Copy(temp,1,21)='https://filejoker.net' then if OpenTextFileDialog1.Execute then
    begin
      Memo3.WordWrap:=False; Memo3.Text:=temp; report:=0;
      Memo2.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
      for h:=0 to Memo3.Lines.Count-1 do
      begin
        //Name & Link
        temp:=dis(Memo3.Lines[h]); Part:=''; Size:='';
        i:=pos(#9,temp); if i<>0 then
          begin Size:=copy(temp,i+1,length(temp)-i); delete(temp,i,length(temp)-i+1); end;
        i:=pos('part1.rar',temp); if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
        else begin i:=pos('part2.rar',temp);
          if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
          else begin i:=pos('part3.rar',temp);
            if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
            else begin i:=pos('part4.rar',temp);
              if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end;
            end;
          end;
        end;
        i:=length(temp); while temp[i]<>'/' do i:=i-1;
        temp2:=copy(temp,i+1,length(temp)-i); delete(temp,i,length(temp)-i+1);
        i:=length(temp2); while temp2[i]<>'.' do i:=i-1; delete(temp2,i,length(temp2)-i+1);
        temp3:=''; i:=1; while not (temp2[i] in ['a'..'z']+['A'..'Z']) do i:=i+1;
        while (temp2[i] in ['a'..'z']+['A'..'Z']) do begin temp3:=temp3+temp2[i]; i:=i+1; end;
        sym:='';
        if (temp2[1] in ['a'..'z']+['A'..'Z']) and (temp2[2] in ['a'..'z']+['A'..'Z']) then sym:=temp2[1];
        for j:=2 to length(temp2)-1 do
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and ((temp2[j-1] in ['a'..'z']+['A'..'Z']) or
        (temp2[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp2[j];
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and (temp2[j-1] in ['a'..'z']+['A'..'Z']) then sym:=sym+temp2[j];
        if (temp2[j] in ['0'..'9']) and (temp2[j-1]='_') then sym:=sym+temp2[j]; temp2:=sym;
        //Paste
        i:=1; while i<=Memo2.Lines.Count do
        begin
          if (pos('[u]FileName:',Memo2.Lines[i])<>0) and (pos(temp3,Memo2.Lines[i])<>0) then
          begin
            sym:=Memo2.Lines[i-1]; j:=1; while sym[j] in ['0'..'9'] do j:=j+1; k:=StrToInt(copy(sym,1,j-1));
            temp4:=copy(Memo2.Lines[i],14,length(Memo2.Lines[i]));
            j:=1; while temp4[j]<>'[' do j:=j+1; temp4:=copy(temp4,1,j-5);
            sym:='';
            if (temp4[1] in ['a'..'z']+['A'..'Z']) and (temp4[2] in ['a'..'z']+['A'..'Z']) then sym:=temp4[1];
            for j:=2 to length(temp4)-1 do
            if (temp4[j] in ['a'..'z']+['A'..'Z']) and ((temp4[j-1] in ['a'..'z']+['A'..'Z']) or
            (temp4[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp4[j];
            if (temp4[j] in ['a'..'z']+['A'..'Z']) and (temp4[j-1] in ['a'..'z']+['A'..'Z'])
              then sym:=sym+temp4[j];
            if (temp4[j] in ['0'..'9']) and (temp4[j-1]=' ') then sym:=sym+temp4[j];
            if (sym=temp2) and (Size<>'')then
            begin
              while pos('===',Memo2.Lines[i])=0 do
              begin
                i:=i+1;
                if pos('K2S DOWNLOAD',Memo2.Lines[i])<>0 then
                begin
                  if (pos('НЕТ',Memo2.Lines[i])=0) and (Part='') then
                  begin
                    Memo2.Lines.Insert(i,'or');
                    Memo2.Lines.Insert(i,'[u][b][url='+temp+']FJ DOWNLOAD - '+Size+'[/url][/b][/u]');
                    break;
                  end
                  else
                  begin
                    if Part='' then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']FJ DOWNLOAD - '+Size+'[/url][/b][/u]9*3*';
                      break;
                    end;
                    if Part='1' then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']FJ DOWNLOAD Part1 - '+Size+'[/url][/b][/u]9*3*';
                      if pos('9*3*',Memo2.Lines[i+1])<>0 then
                      begin
                        Part:=Memo2.Lines[i]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                        Memo2.Lines[i]:=Part;
                      end;
                      if pos('9*3*',Memo2.Lines[i+2])<>0 then
                      begin
                        Part:=Memo2.Lines[i]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                        Memo2.Lines[i]:=Part;
                      end;
                      break;
                    end;
                    if (pos('K2S DOWNLOAD Part2',Memo2.Lines[i])<>0) and (Part='2') then
                    begin
                      if pos('9*3*',Memo2.Lines[i+1])<>0 then
                      begin
                        Memo2.Lines[i]:='[u][b][url='+temp+']FJ DOWNLOAD Part2 - '+Size+'[/url][/b][/u]';
                      end
                      else
                      begin
                        Memo2.Lines[i]:='[u][b][url='+temp+']FJ DOWNLOAD Part2 - '+Size+'[/url][/b][/u]9*3*';
                      end;
                      Part:=Memo2.Lines[i-1]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                      Memo2.Lines[i-1]:=Part; break;
                    end;
                    if (pos('K2S DOWNLOAD Part3',Memo2.Lines[i])<>0) and (Part='3') then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']FJ DOWNLOAD Part3 - '+Size+'[/url][/b][/u]9*3*';
                      Part:=Memo2.Lines[i-1]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                      Memo2.Lines[i-1]:=Part; break;
                    end;
                  end;
                end;
              end;
              report:=report+1; break;
            end;
          end;
          i:=i+1;
        end;
      end;
      if h>0 then
      begin
        temp2:=OpenTextFileDialog1.FileName;
        i:=length(temp2);
        while temp2[i]<>'\' do i:=i-1; insert('[fj]',temp2,i+1);
        Memo2.Lines.SaveToFile(temp2);
      end;
      Memo3.Clear; Description:=''; MemoUpdate; Memo3.WordWrap:=true;
      if report=h then PlaySound('sound\link.wav', 0, SND_ASYNC)
      else PlaySound('sound\notAll.wav', 0, SND_ASYNC);
      check:='Подано ссылок - '+IntToStr(h)+#13#10+'Вставлено - '+IntToStr(report)+#13#10#13#10;
      i:=0; j:=0; k:=0; q:=0;
      temp:=Memo2.Lines[0]; delete(temp,1,7); c:=StrToInt(temp);
      while i<=Memo2.Lines.Count do
      begin
        if pos('НЕТ ССЫЛКИ',Memo2.Lines[i])<>0 then j:=j+1; if pos('НЕТ_ССЫЛКИ',Memo2.Lines[i])<>0 then k:=k+1;
        if pos('9*3*',Memo2.Lines[i])<>0 then q:=q+1;
        i:=i+1;
      end;
      check:=check+'Невставленных картинок - '+IntToStr(j)+#13#10+'Невставленных ссылок загрузки - '+IntToStr(k)+#13#10#13#10;
      if c<>q then check:=check+#13#10+'!Ссылки вставлены неправильно!'+#13#10#13#10;
      check:=check+'      Удалить исходный файл?';
      case MessageDlg(check,mtInformation,[mbYes, mbNo],0) of
      IDYes: Recycle(OpenTextFileDialog1.FileName); end;
    end;
    //takefile.link
    if Copy(temp,1,16)='https://takefile' then if OpenTextFileDialog1.Execute then
    begin
      Memo3.WordWrap:=False; Memo3.Text:=temp; report:=0;
      Memo2.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
      for h:=0 to Memo3.Lines.Count-1 do
      begin
        //Name & Link
        temp:=dis(Memo3.Lines[h]); Part:=''; Size:='';
        i:=pos(#9,temp); if i<>0 then delete(temp,i,length(temp)-i+1);
        i:=pos('part1.rar',temp); if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
        else begin i:=pos('part2.rar',temp);
          if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
          else begin i:=pos('part3.rar',temp);
            if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
            else begin i:=pos('part4.rar',temp);
              if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end;
            end;
          end;
        end;
        i:=length(temp); while temp[i]<>'/' do i:=i-1;
        temp2:=copy(temp,i+1,length(temp)-i); delete(temp,i,length(temp)-i+1);
        i:=length(temp2); while temp2[i]<>'.' do i:=i-1; delete(temp2,i,length(temp2)-i+1);
        i:=length(temp2); while temp2[i]<>'.' do i:=i-1; delete(temp2,i,length(temp2)-i+1);
        temp3:=''; i:=1; while not (temp2[i] in ['a'..'z']+['A'..'Z']) do i:=i+1;
        while (temp2[i] in ['a'..'z']+['A'..'Z']) do begin temp3:=temp3+temp2[i]; i:=i+1; end;
        sym:='';
        if (temp2[1] in ['a'..'z']+['A'..'Z']) and (temp2[2] in ['a'..'z']+['A'..'Z']) then sym:=temp2[1];
        for j:=2 to length(temp2)-1 do
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and ((temp2[j-1] in ['a'..'z']+['A'..'Z']) or
        (temp2[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp2[j];
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and (temp2[j-1] in ['a'..'z']+['A'..'Z']) then sym:=sym+temp2[j];
        if (temp2[j] in ['0'..'9']) and (temp2[j-1]='_') then sym:=sym+temp2[j]; temp2:=sym;
        //Paste
        i:=1; while i<=Memo2.Lines.Count do
        begin
          if (pos('[u]FileName:',Memo2.Lines[i])<>0) and (pos(temp3,Memo2.Lines[i])<>0) then
          begin
            sym:=Memo2.Lines[i-1]; j:=1; while sym[j] in ['0'..'9'] do j:=j+1; k:=StrToInt(copy(sym,1,j-1));
            temp4:=copy(Memo2.Lines[i],14,length(Memo2.Lines[i]));
            j:=1; while temp4[j]<>'[' do j:=j+1; temp4:=copy(temp4,1,j-5);
            sym:='';
            if (temp4[1] in ['a'..'z']+['A'..'Z']) and (temp4[2] in ['a'..'z']+['A'..'Z']) then sym:=temp4[1];
            for j:=2 to length(temp4)-1 do
            if (temp4[j] in ['a'..'z']+['A'..'Z']) and ((temp4[j-1] in ['a'..'z']+['A'..'Z']) or
            (temp4[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp4[j];
            if (temp4[j] in ['a'..'z']+['A'..'Z']) and (temp4[j-1] in ['a'..'z']+['A'..'Z'])
              then sym:=sym+temp4[j];
            if (temp4[j] in ['0'..'9']) and (temp4[j-1]=' ') then sym:=sym+temp4[j];
            if sym=temp2 then
            begin
              while pos('===',Memo2.Lines[i])=0 do
              begin
                i:=i+1;
                if pos('K2S DOWNLOAD',Memo2.Lines[i])<>0 then
                begin
                  if (pos('НЕТ',Memo2.Lines[i])=0) and (Part='') then
                  begin
                    Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD [/url][/b][/u]9*3*';
                    break;
                  end
                  else
                  begin
                    if Part='' then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD [/url][/b][/u]9*3*';
                      break;
                    end;
                    if Part='1' then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part1 [/url][/b][/u]9*3*';
                      if pos('9*3*',Memo2.Lines[i+1])<>0 then
                      begin
                        Part:=Memo2.Lines[i]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                        Memo2.Lines[i]:=Part;
                      end;
                      if pos('9*3*',Memo2.Lines[i+2])<>0 then
                      begin
                        Part:=Memo2.Lines[i]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                        Memo2.Lines[i]:=Part;
                      end;
                      break;
                    end;
                    if (pos('K2S DOWNLOAD Part2',Memo2.Lines[i])<>0) and (Part='2') then
                    begin
                      if pos('9*3*',Memo2.Lines[i+1])<>0 then
                      begin
                        Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part2 [/url][/b][/u]';
                      end
                      else
                      begin
                        Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part2 [/url][/b][/u]9*3*';
                      end;
                      Part:=Memo2.Lines[i-1]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                      Memo2.Lines[i-1]:=Part; break;
                    end;
                    if (pos('K2S DOWNLOAD Part3',Memo2.Lines[i])<>0) and (Part='3') then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part3 [/url][/b][/u]9*3*';
                      Part:=Memo2.Lines[i-1]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                      Memo2.Lines[i-1]:=Part; break;
                    end;
                  end;
                end;
              end;
              report:=report+1; break;
            end;
          end;
          i:=i+1;
        end;
      end;
      if h>0 then
      begin
        temp2:=OpenTextFileDialog1.FileName;
        i:=length(temp2);
        while temp2[i]<>'\' do i:=i-1; insert('[tf]',temp2,i+1);
        Memo2.Lines.SaveToFile(temp2);
      end;
      Memo3.Clear; Description:=''; MemoUpdate; Memo3.WordWrap:=true;
      if report=h then PlaySound('sound\link.wav', 0, SND_ASYNC)
      else PlaySound('sound\notAll.wav', 0, SND_ASYNC);
      check:='Подано ссылок - '+IntToStr(h)+#13#10+'Вставлено - '+IntToStr(report)+#13#10#13#10;
      i:=0; j:=0; k:=0; q:=0;
      temp:=Memo2.Lines[0]; delete(temp,1,7); c:=StrToInt(temp);
      while i<=Memo2.Lines.Count do
      begin
        if pos('НЕТ ССЫЛКИ',Memo2.Lines[i])<>0 then j:=j+1; if pos('НЕТ_ССЫЛКИ',Memo2.Lines[i])<>0 then k:=k+1;
        if pos('9*3*',Memo2.Lines[i])<>0 then q:=q+1;
        i:=i+1;
      end;
      check:=check+'Невставленных картинок - '+IntToStr(j)+#13#10+'Невставленных ссылок загрузки - '+IntToStr(k);
      if c<>q then check:=check+#13#10+'!Ссылки вставлены неправильно!';
      case MessageDlg(check,mtInformation,[mbOk],0) of IDOk: end;
    end;
    //florenfile.com
    if Copy(temp,1,23)='[URL=https://florenfile' then if OpenTextFileDialog1.Execute then
    begin
      Memo3.WordWrap:=False; Memo3.Text:=temp; report:=0;
      Memo2.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
      for h:=0 to Memo3.Lines.Count-1 do
      begin
        //Name & Link
        temp:=dis(Memo3.Lines[h]); Part:=''; Size:='';
        i:=pos(#9,temp); if i<>0 then delete(temp,i,length(temp)-i+1);
        i:=pos('part1.rar',temp); if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
        else begin i:=pos('part2.rar',temp);
          if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
          else begin i:=pos('part3.rar',temp);
            if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
            else begin i:=pos('part4.rar',temp);
              if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end;
            end;
          end;
        end;
        i:=length(temp); while temp[i]<>'-' do i:=i-1; Size:=copy(temp,i+1,length(temp)-i-6); delete(temp,i-1,length(temp)-i+2);
        i:=pos(']',temp); temp2:=copy(temp,i+1,length(temp)-i); temp:=copy(temp,6,i-6);
        i:=length(temp2); while temp2[i]<>'.' do i:=i-1; delete(temp2,i,length(temp2)-i+1);
        temp3:=''; i:=1; while not (temp2[i] in ['a'..'z']+['A'..'Z']) do i:=i+1;
        while (temp2[i] in ['a'..'z']+['A'..'Z']) do begin temp3:=temp3+temp2[i]; i:=i+1; end;
        sym:='';
        if (temp2[1] in ['a'..'z']+['A'..'Z']) and (temp2[2] in ['a'..'z']+['A'..'Z']) then sym:=temp2[1];
        for j:=2 to length(temp2)-1 do
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and ((temp2[j-1] in ['a'..'z']+['A'..'Z']) or
        (temp2[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp2[j];
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and (temp2[j-1] in ['a'..'z']+['A'..'Z']) then sym:=sym+temp2[j];
        if (temp2[j] in ['0'..'9']) and (temp2[j-1]='_') then sym:=sym+temp2[j]; temp2:=sym;
        //Paste
        i:=1; while i<=Memo2.Lines.Count do
        begin
          if (pos('[u]FileName:',Memo2.Lines[i])<>0) and (pos(temp3,Memo2.Lines[i])<>0) then
          begin
            sym:=Memo2.Lines[i-1]; j:=1; while sym[j] in ['0'..'9'] do j:=j+1; k:=StrToInt(copy(sym,1,j-1));
            temp4:=copy(Memo2.Lines[i],14,length(Memo2.Lines[i]));
            j:=1; while temp4[j]<>'[' do j:=j+1; temp4:=copy(temp4,1,j-5);
            sym:='';
            if (temp4[1] in ['a'..'z']+['A'..'Z']) and (temp4[2] in ['a'..'z']+['A'..'Z']) then sym:=temp4[1];
            for j:=2 to length(temp4)-1 do
            if (temp4[j] in ['a'..'z']+['A'..'Z']) and ((temp4[j-1] in ['a'..'z']+['A'..'Z']) or
            (temp4[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp4[j];
            if (temp4[j] in ['a'..'z']+['A'..'Z']) and (temp4[j-1] in ['a'..'z']+['A'..'Z'])
              then sym:=sym+temp4[j];
            if (temp4[j] in ['0'..'9']) and (temp4[j-1]=' ') then sym:=sym+temp4[j];
            if sym=temp2 then
            begin
              while pos('===',Memo2.Lines[i])=0 do
              begin
                i:=i+1;
                if pos('K2S DOWNLOAD',Memo2.Lines[i])<>0 then
                begin
                  if (pos('НЕТ',Memo2.Lines[i])=0) and (Part='') then
                  begin
                    Memo2.Lines[i]:='[u][b][url='+temp+']DOWNLOAD - '+Size+'[/url][/b][/u]9*3*';
                    break;
                  end
                  else
                  begin
                    if Part='' then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']DOWNLOAD - '+Size+'[/url][/b][/u]9*3*';
                      break;
                    end;
                    if Part='1' then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part1 [/url][/b][/u]9*3*';
                      if pos('9*3*',Memo2.Lines[i+1])<>0 then
                      begin
                        Part:=Memo2.Lines[i]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                        Memo2.Lines[i]:=Part;
                      end;
                      if pos('9*3*',Memo2.Lines[i+2])<>0 then
                      begin
                        Part:=Memo2.Lines[i]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                        Memo2.Lines[i]:=Part;
                      end;
                      break;
                    end;
                    if (pos('K2S DOWNLOAD Part2',Memo2.Lines[i])<>0) and (Part='2') then
                    begin
                      if pos('9*3*',Memo2.Lines[i+1])<>0 then
                      begin
                        Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part2 [/url][/b][/u]';
                      end
                      else
                      begin
                        Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part2 [/url][/b][/u]9*3*';
                      end;
                      Part:=Memo2.Lines[i-1]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                      Memo2.Lines[i-1]:=Part; break;
                    end;
                    if (pos('K2S DOWNLOAD Part3',Memo2.Lines[i])<>0) and (Part='3') then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part3 [/url][/b][/u]9*3*';
                      Part:=Memo2.Lines[i-1]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                      Memo2.Lines[i-1]:=Part; break;
                    end;
                  end;
                end;
              end;
              report:=report+1; break;
            end;
          end;
          i:=i+1;
        end;
      end;
      if h>0 then
      begin
        Memo1.Clear; scr:=0; ban:=0; des:=0;
        for i:=0 to Memo2.Lines.Count-1 do
        begin
          temp:=Memo2.Lines[i];
          if (temp='') or (pos('Total',temp)<>0) or (pos('======',temp)<>0) then ban:=1;
          if pos('[u]FileName',temp)<>0 then
          begin
            nm:=Memo2.Lines[i+1]; j:=pos('[b]',nm); if j<>0 then delete(nm,j,3);
            j:=pos('[/b]',nm); if j<>0 then delete(nm,j,4); ban:=1; tags:='';
            if (pos('JerkOffInstruction',OpenTextFileDialog1.FileName)<>0) or (pos('CEI',OpenTextFileDialog1.FileName)<>0) then
              tags:='JOI, jerk off instructions, dirty talk, jerkoff instructions,' else
              if pos('Blowjob',OpenTextFileDialog1.FileName)<>0 then tags:='Blowjob,' else
                if pos('FemDom',OpenTextFileDialog1.FileName)<>0 then tags:='FemDom,' else
                  if pos('LezDom',OpenTextFileDialog1.FileName)<>0 then tags:='LezDom,';
            if tags<>'' then if tags[1]=' ' then delete(tags,1,1);
            k:=1000; 
            j:=pos(' — ',nm); if (j<>0) and (k>j) then k:=j;
            j:=pos(' - ',nm); if (j<>0) and (k>j) then k:=j;
            j:=pos(' – ',nm); if (j<>0) and (k>j) then k:=j;
            j:=pos(' − ',nm); if (j<>0) and (k>j) then k:=j;
            if k<>1000 then tags:=copy(nm,1, j-1)+', '+tags;
            if tags<>'' then for j:=0 to length(tags)-1 do if (tags[j]=',') and (tags[j+1]<>' ') then insert(' ',tags,j);
          end;
          j:=pos('[b]Tags[/b]',temp); if j<>0 then
          begin
            delete(temp,j,13); for j:=1 to length(temp) do if temp[j]='#' then delete(temp,j,1); ban:=1; tags:=tags+temp;
            if tags<>'' then for j:=0 to length(tags)-1 do if (tags[j]=',') and (tags[j+1]<>' ') then insert(' ',tags,j+1);
          end;
          if (temp='') and ((pos('[b]Tags[/b]',Memo2.Lines[i+1])<>0) or (pos('florenfile.com',Memo2.Lines[i+1])<>0)) then ban:=1;
          if pos('[b]Length[/b]',temp)<>0 then if pos('[b]Description[/b]',Memo2.Lines[i+1])<>0 then temp:=temp+#13;
          if pos('[b]Description[/b]',temp)<>0 then des:=1;
          if (pos('[b]Format[/b]',Memo2.Lines[i+2])<>0) and (des=1) then
            if copy(temp,length(temp),1)=',' then delete(temp,length(temp),1);
          if (pos('[b]Format[/b]',temp)<>0) and (des=1) then begin temp:=#13+temp; des:=0; end;
          if pos('florenfile.com',temp)<>0 then
          begin
            j:=pos('Studio: ',Memo2.Lines[i+3]);
            if j<>0 then begin st:=copy(Memo2.Lines[i+3],j+8,length(Memo2.Lines[i+3])-j-7); tags:=st+', '+tags; end;
            if pos(st,nm)<>0 then nm:=st+' - '+nm;
            delete(temp,length(temp)-3,4); temp:=#13+'[center]'+temp+'[/center]9*3*'+nm+'9*3*'+tags+#13;
          end;
          if (pos('K2S DOWNLOAD',temp)<>0) or (pos('keywords: ',temp)<>0) or (pos('[u]FileName',Memo2.Lines[i-1])<>0) then ban:=1;
          if pos('picstate.com',temp)<>0 then
          begin
            j:=pos('1.jpg[/img]',temp); if j<>0 then
            begin
              temp:='9*3*'+temp+#13+'9*3*[center]'+temp;
              scr:=1;
            end
            else if pos('2.jpg[/img]',temp)<>0 then Memo2.Lines.Delete(i) else
              begin
                if scr=0 then temp:='9*3*'+temp+#13+'9*3*[center]'+temp
                else
                begin
                  temp:=#13+temp+'[/center]'+#10;
                  Memo1.Lines[Memo1.Lines.Count-1]:=Memo1.Lines[Memo1.Lines.Count-1]+temp; ban:=1;
                end;
                scr:=0;
              end;
          end;
          if ban=0 then Memo1.Lines.Add(temp) else ban:=0;
        end;
        temp2:=OpenTextFileDialog1.FileName;
        i:=length(temp2);
        while temp2[i]<>'\' do i:=i-1; insert('[ff]',temp2,i+1);
        Memo1.Lines.SaveToFile(temp2,TEncoding.UTF8); Memo1.Clear;
      end;
      Memo3.Clear; Description:=''; MemoUpdate; Memo3.WordWrap:=true;
      if report=h then PlaySound('sound\link.wav', 0, SND_ASYNC)
      else PlaySound('sound\notAll.wav', 0, SND_ASYNC);
      check:='Подано ссылок - '+IntToStr(h)+#13#10+'Вставлено - '+IntToStr(report)+#13#10#13#10;
      i:=0; j:=0; k:=0; q:=0;
      temp:=Memo2.Lines[0]; delete(temp,1,7); c:=StrToInt(temp);
      while i<=Memo2.Lines.Count do
      begin
        if pos('НЕТ ССЫЛКИ',Memo2.Lines[i])<>0 then j:=j+1; if pos('НЕТ_ССЫЛКИ',Memo2.Lines[i])<>0 then k:=k+1;
        if pos('9*3*',Memo2.Lines[i])<>0 then q:=q+1;
        i:=i+1;
      end;
      check:=check+'Невставленных картинок - '+IntToStr(j)+#13#10+'Невставленных ссылок загрузки - '+IntToStr(k);
      if c<>q then check:=check+#13#10+'!Ссылки вставлены неправильно!';
      case MessageDlg(check,mtInformation,[mbOk],0) of IDOk: end;
    end;
    //Download Link
    if (Copy(temp,1,14)='http://k2s.cc/') or (Copy(ClipBoard.AsText,1,14)='https://k2s.cc') or
    (Copy(ClipBoard.AsText,1,20)='https://tezfiles.com') then
    begin
      Memo3.WordWrap:=False; Memo3.Text:=temp; report:=0;
      if (Copy(temp,1,14)='http://k2s.cc/') or (Copy(ClipBoard.AsText,1,14)='https://k2s.cc') then sh:=1
      else sh:=2;
      for h:=0 to Memo3.Lines.Count-1 do
      begin
        //Name & Link
        temp:=dis(Memo3.Lines[h]); Part:=''; Size:='';
        i:=pos('||',temp); if i<>0 then
          begin Size:=copy(temp,i+2,length(temp)-i-1); delete(temp,i,length(temp)-i+1); end;
        i:=pos('part1.rar',temp); if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
        else begin i:=pos('part2.rar',temp);
          if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
          else begin i:=pos('part3.rar',temp);
            if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end
            else begin i:=pos('part4.rar',temp);
              if i<>0 then begin Part:=copy(temp,i+4,1); delete(temp,i,6); end;
            end;
          end;
        end;
        i:=length(temp); while temp[i]<>'/' do i:=i-1;
        temp2:=copy(temp,i+1,length(temp)-i); delete(temp,i,length(temp)-i+1);
        i:=length(temp2); while temp2[i]<>'.' do i:=i-1; delete(temp2,i,length(temp2)-i+1);
        temp3:=''; i:=1; while not (temp2[i] in ['a'..'z']+['A'..'Z']) do i:=i+1;
        while (temp2[i] in ['a'..'z']+['A'..'Z']) do begin temp3:=temp3+temp2[i]; i:=i+1; end;
        sym:='';
        if (temp2[1] in ['a'..'z']+['A'..'Z']) and (temp2[2] in ['a'..'z']+['A'..'Z']) then sym:=temp2[1];
        for j:=2 to length(temp2)-1 do
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and ((temp2[j-1] in ['a'..'z']+['A'..'Z']) or
        (temp2[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp2[j];
        if (temp2[j] in ['a'..'z']+['A'..'Z']) and (temp2[j-1] in ['a'..'z']+['A'..'Z']) then sym:=sym+temp2[j];
        if (temp2[j] in ['0'..'9']) and (temp2[j-1]='_') then sym:=sym+temp2[j]; temp2:=sym;
        //Paste
        if CheckBox7.Checked=True then ph:=1 else ph:=mtx;
        for tx:=0 to ph do
        begin
          if ph=1 then Memo2.Lines.LoadFromFile('Phun.org.txt')
          else Memo2.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt'); i:=1;
          while i<=Memo2.Lines.Count do
          begin
            if (pos('[u]FileName:',Memo2.Lines[i])<>0) and (pos(temp3,Memo2.Lines[i])<>0) then
            begin
              sym:=Memo2.Lines[i-1]; j:=1; while sym[j] in ['0'..'9'] do j:=j+1; k:=StrToInt(copy(sym,1,j-1));
              temp4:=copy(Memo2.Lines[i],14,length(Memo2.Lines[i]));
              j:=1; while temp4[j]<>'[' do j:=j+1; temp4:=copy(temp4,1,j-5);
              sym:='';
              if (temp4[1] in ['a'..'z']+['A'..'Z']) and (temp4[2] in ['a'..'z']+['A'..'Z']) then sym:=temp4[1];
              for j:=2 to length(temp4)-1 do
              if (temp4[j] in ['a'..'z']+['A'..'Z']) and ((temp4[j-1] in ['a'..'z']+['A'..'Z']) or
              (temp4[j+1] in ['a'..'z']+['A'..'Z']))  then sym:=sym+temp4[j];
              if (temp4[j] in ['a'..'z']+['A'..'Z']) and (temp4[j-1] in ['a'..'z']+['A'..'Z'])
                then sym:=sym+temp4[j];
              if (temp4[j] in ['0'..'9']) and (temp4[j-1]=' ') then sym:=sym+temp4[j];
              if sym=temp2 then
              begin
                while pos('===',Memo2.Lines[i])=0 do
                begin
                  i:=i+1;
                  if sh=1 then
                  begin
                    if (pos('K2S DOWNLOAD',Memo2.Lines[i])<>0) and (Part='') then
                    begin
                      if Size='' then Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD[/url][/b][/u]9*3*'
                      else Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD - '+Size+'[/url][/b][/u]9*3*';
                      break;
                    end;
                    if (pos('K2S DOWNLOAD',Memo2.Lines[i])<>0) and (Part='1') then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part1 - '+Size+'[/url][/b][/u]9*3*';
                      if pos('9*3*',Memo2.Lines[i+1])<>0 then
                      begin
                        Part:=Memo2.Lines[i]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                        Memo2.Lines[i]:=Part;
                      end;
                      if pos('9*3*',Memo2.Lines[i+2])<>0 then
                      begin
                        Part:=Memo2.Lines[i]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                        Memo2.Lines[i]:=Part;
                      end;
                      break;
                    end;
                    if (pos('K2S DOWNLOAD Part2',Memo2.Lines[i])<>0) and (Part='2') then
                    begin
                      if pos('9*3*',Memo2.Lines[i+1])<>0 then
                      begin
                        Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part2 - '+Size+'[/url][/b][/u]';
                      end
                      else
                      begin
                        Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part2 - '+Size+'[/url][/b][/u]9*3*';
                      end;
                      Part:=Memo2.Lines[i-1]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                      Memo2.Lines[i-1]:=Part; break;
                    end;
                    if (pos('K2S DOWNLOAD Part3',Memo2.Lines[i])<>0) and (Part='3') then
                    begin
                      Memo2.Lines[i]:='[u][b][url='+temp+']K2S DOWNLOAD Part3 - '+Size+'[/url][/b][/u]9*3*';
                      Part:=Memo2.Lines[i-1]; q:=pos('9*3*',Part); if q<>0 then delete(Part,q,4);
                      Memo2.Lines[i-1]:=Part; break;
                    end;
                  end
                  else
                  begin
                    if pos('RG.TO',Memo2.Lines[i])<>0 then
                      begin Memo2.Lines[i]:='[u][b][url='+temp+']RG.TO DOWNLOAD[/url][/b][/u]'; break; end;
                    if (pos('K2S DOWNLOAD',Memo2.Lines[i])<>0) then
                    begin
                      if Size='' then Memo2.Lines[i]:='[u][b][url='+temp+']TEZFILES DOWNLOAD[/url][/b][/u]9*3*'
                      else Memo2.Lines[i]:='[u][b][url='+temp+']TEZFILES DOWNLOAD - '+Size+'[/url][/b][/u]9*3*';
                      break;
                    end;
                  end;
                end;
                report:=report+1; j:=-5; break;
              end;
            end;
            i:=i+1;
          end;
          if j=-5 then
          begin
            if ph=1 then Memo2.Lines.SaveToFile('Phun.org.txt')
            else Memo2.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\Topics\'+topicX[tx]+'.txt');
            break;
          end;
        end;
      end;
      Memo3.Clear; Description:=''; MemoUpdate; Memo3.WordWrap:=true; CheckBox7.Checked:=False;
      if report=h then PlaySound('sound\link.wav', 0, SND_ASYNC)
      else PlaySound('sound\notAll.wav', 0, SND_ASYNC);
      ShowMessage('Подано ссылок - '+IntToStr(h)+#13#10+'Вставлено - '+IntToStr(report));
    end
    else
    begin
    //Format
      if (pos('avi',temp)<>0) or (pos('AVI',temp)<>0) then
        begin Format:='AVI'; Edit5.Text:=Format; MemoUpdate; end;
      if (pos('mp4',temp)<>0) or (pos('MP4',temp)<>0) then
        begin Format:='MP4'; Edit5.Text:=Format; MemoUpdate; end
      else if (pos('wmv',temp)<>0) or (pos('WMV',temp)<>0) then
        begin Format:='WMV'; Edit5.Text:=Format; MemoUpdate; end
      else if (pos('mkv',temp)<>0) or (pos('MKV',temp)<>0) then
        begin Format:='MKV'; Edit5.Text:=Format; MemoUpdate; end
      else if (pos('flv',temp)<>0) or (pos('FLV',temp)<>0) then
        begin Format:='FLV'; Edit5.Text:=Format; MemoUpdate; end
      else if (pos('m4v',temp)<>0) or (pos('M4V',temp)<>0) then
        begin Format:='M4V'; Edit5.Text:=Format; MemoUpdate; end
      else if (pos('mov',temp)<>0) or (pos('MOV',temp)<>0) then
        begin Format:='MOV'; Edit5.Text:=Format; MemoUpdate; end
      else if (pos('mpg',temp)<>0) or (pos('MPG',temp)<>0) then
        begin Format:='MPG'; Edit5.Text:=Format; MemoUpdate; end;
    end;
    //Description
    if pos('Описание', temp)<>0 then
    begin
      Memo3.Clear; Description:='';
      temp2:=temp; i:=pos('Описание',temp2); repeat i:=i+1; until (temp2[i]=':'); i:=i+1; k:=1;
      while i<=length(temp) do
      begin
        for j:= 1 to length(rus) do if temp[i]=rus[j] then k:=0; if k=0 then break;
        Description:=Description+temp2[i]; i:=i+1;
      end;
      Description:=StringReplace(Description, #13, '', [rfReplaceAll, rfIgnoreCase]);
      Description:=StringReplace(Description, #10, '', [rfReplaceAll, rfIgnoreCase]);
      Description:=dis(Description); if Description<>'' then if Description[1]='_' then Description:='';
      Memo3.Text:=Description;
    end;
    if pos('Description', temp)<>0 then
    begin
      Memo3.Clear; Description:='';
      temp2:=temp; i:=pos('Description',temp2); repeat i:=i+1; until (temp2[i]=':'); i:=i+1; k:=1;
      while i<=length(temp) do
      begin
        for j:= 1 to length(rus) do if temp[i]=rus[j] then k:=0; if k=0 then break;
        Description:=Description+temp2[i]; i:=i+1;
      end;
      Description:=StringReplace(Description, #13, '', [rfReplaceAll, rfIgnoreCase]);
      Description:=StringReplace(Description, #10, '', [rfReplaceAll, rfIgnoreCase]);
      Description:=dis(Description); if Description<>'' then if Description[1]='_' then Description:='';
      Memo3.Text:=Description;
    end;
    //Name
    if (pos('Имя актрисы', temp)<>0) and (pos('Название ролика', temp)<>0) then
    begin
      temp2:=temp; i:=pos('Имя актрисы',temp2); repeat i:=i+1; until (temp2[i]=':'); i:=i+1;
      fn:=''; while not (temp2[i] in [#13]+[#10]) do begin fn:=fn+temp2[i]; i:=i+1; end;
      i:=pos('Название ролика',temp2); repeat i:=i+1; until (temp2[i]=':'); i:=i+1;
      fn:=fn+' -'; while not (temp2[i] in [#13]+[#10]) do begin fn:=fn+temp2[i]; i:=i+1; end;
      CheckName; Edit1.Text:=fn; n:=fn; Edit8.Text:=n;
    end;
    //TagsPost
    if pos('Жанр', temp)<>0 then
    begin
      temp2:=temp; i:=pos('Жанр',temp2); repeat i:=i+1; until (temp2[i]=':'); i:=i+1;
      TagsPost:=''; while not (temp2[i] in [#13]+[#10]) do begin TagsPost:=TagsPost+temp2[i]; i:=i+1; end;
      i:=pos('Gonzo, ',TagsPost); if i<>0 then delete(TagsPost,i,7);
      i:=pos('Gonzo,',TagsPost); if i<>0 then delete(TagsPost,i,6);
      i:=pos('Gonzo',TagsPost); if i<>0 then delete(TagsPost,i,5);
      i:=pos('esbi',TagsPost); if (i<>0) and ((TagsPost[i+4]=',') or (TagsPost[i+4]=' ')) then insert('an',TagsPost,i+4);
      i:=pos('esbo',TagsPost); if i<>0 then begin delete(TagsPost,i+3,1); insert('ian',TagsPost,i+3); end;
      TagsPost:=dis(TagsPost); Edit2.Text:=TagsPost;
    end;
    //Video
    Memo2.Text:=temp;
    for i:=0 to Memo2.Lines.Count-1 do
    begin
      if pos('Видео',Memo2.Lines[i])<>0 then
        begin
          temp2:=Memo2.Lines[i]; if (temp2[1]='В') and (temp2[6]=':') then
          begin
            Video:=copy(temp2,7,length(temp2)-6); Video:=dis(Video);
            if (pos('Кбит/сек',Video)<>0) or (pos('Mбит/сек',Video)<>0) or (pos('Мбит/сек',Video)<>0) then
              begin j:=pos('бит/сек',Video); delete(Video,j,7); Insert('bps',Video,j); end;
            if pos('кадров/сек',Video)<>0 then
              begin j:=pos('кадров/сек',Video); delete(Video,j,10); Insert('fps',Video,j); end;
            for j:=1 to length(Video) do if Video[j]='[' then delete(Video,j,length(Video)-j+1);
            if pos('MPEG4',Video)<>0 then Format:='MP4';
            Edit6.Text:=Video;
          end;
        end;
      if pos('Video:',Memo2.Lines[i])<>0 then
        begin
          temp2:=Memo2.Lines[i]; if (temp2[1]='V') and (temp2[6]=':') then
          begin
            Video:=copy(temp2,7,length(temp2)-6); Video:=dis(Video);
            if (pos('Кбит/сек',Video)<>0) or (pos('Mбит/сек',Video)<>0) or (pos('Мбит/сек',Video)<>0) then
              begin j:=pos('бит/сек',Video); delete(Video,j,7); Insert('bps',Video,j); end;
            if pos('кадров/сек',Video)<>0 then
              begin j:=pos('кадров/сек',Video); delete(Video,j,10); Insert('fps',Video,j); end;
            for j:=1 to length(Video) do if Video[j]='[' then delete(Video,j,length(Video)-j+1);
            if pos('MPEG4',Video)<>0 then Format:='MP4';
            Edit6.Text:=Video;
          end;
        end;
    end;
    //Duration
    if pos('Продолжительность', temp)<>0 then
    begin
      temp2:=temp; i:=pos('Продолжительность',temp2); repeat i:=i+1; until (temp2[i]=':'); i:=i+1;
      Duration:=''; while not (temp2[i] in [#13]+[#10]) do begin Duration:=Duration+temp2[i]; i:=i+1; end;
      Duration:=dis(Duration); Edit4.Text:=Duration;
    end;
    if pos('Студия', temp)<>0 then
    begin
      temp2:=temp; i:=pos('Студия',temp2); repeat i:=i+1; until (temp2[i]=':'); i:=i+1;
      temp3:=''; while not (temp2[i] in [#13]+[#10]) do begin temp3:=temp3+temp2[i]; i:=i+1; end;
      temp3:=dis(temp3); Edit7.Text:=temp3;
    end;
    if (pos('Продолжительность', temp)<>0) or (pos('Аудио', temp)<>0) or (pos('Формат', temp)<>0)
    or (pos('Аудио', temp)<>0) or (pos('Видео',temp)<>0) or (pos('Жанр', temp)<>0)
    or (pos('Описание', temp)<>0) then begin PlaySound('sound\info.wav', 0, SND_ASYNC); autocopy:=1; end;
    //Size
    for j:=0 to 9 do if Copy(temp,1,1)=IntToStr(j) then if (pos('GB',temp)<>0) or (pos('MB',temp)<>0) then
      begin
        Size:=dis(temp); MemoUpdate; PlaySound('sound\info.wav', 0, SND_ASYNC);
      end;
    if Copy(temp,1,1)=' ' then for j:=0 to 9 do if Copy(temp,2,1)=IntToStr(j) then
      if (pos('GB',temp)<>0) or (pos('MB',temp)<>0) then
      begin
        Size:=dis(temp); MemoUpdate; PlaySound('sound\info.wav', 0, SND_ASYNC);
      end;
    // femdomcc
    if Copy(temp,1,20)='https://femdomcc.net' then
      begin
        Memo3.Clear; IdHTTP := TIdHTTP.Create(Nil);
        Id_HandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(IdHTTP);
        try
          IdHTTP.Request.BasicAuthentication := False;
          IdHTTP.Request.UserAgent := 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0';
          Id_HandlerSocket.SSLOptions.Mode := sslmClient;
          Id_HandlerSocket.SSLOptions.Method := sslvSSLv23;
          IdHTTP.IOHandler := Id_HandlerSocket;
          temp2:=IdHTTP.Get(temp);
          if not Button7.Visible then
          begin
            i:=pos('blank"><img src',temp2)+17; temp3:='https://femdomcc.net';
            while temp2[i]<>'"' do begin temp3:=temp3+temp2[i]; i:=i+1; end;
            Button7.Visible:=true; autocopy:=1;
            MS:= TMemoryStream.Create; IdHTTP.Get(temp3,MS); MS.Seek(0,soFromBeginning);
            Jpeg:= TJpegImage.Create; bmp:= TBitMap.Create;
            Jpeg.PixelFormat:= jf24Bit; Jpeg.LoadFromStream(MS); image1.Picture.Assign(jpeg);
            bmp.Assign(Jpeg); wh:=Round(1000/bmp.Width*bmp.Height);
            if bmp.Width>1000 then
            begin
              SetStretchBltMode(bmp.canvas.handle,4);
              StretchBlt(bmp.canvas.handle,0,0,1000,wh,bmp.canvas.handle, 0,0,bmp.width,bmp.height,SRCCOPY);
              bmp.SetSize(1000,wh);
            end;
            Jpeg.CompressionQuality:=cq; Jpeg.Assign(bmp);
            Jpeg.SaveToFile(Folder+'\'+sym+'_1.jpg'); Jpeg.Free; bmp.Free; MS.Free;
            Image1.Picture.LoadFromFile(Folder+'\'+sym+'_1.jpg'); shoot1:='1'; MemoUpdate;
          end
        Finally
          Id_HandlerSocket.Free;
          IdHTTP.Free;
      end;
      i:=pos('<h1>',temp2); j:=pos('</h1>',temp2); temp3:=copy(temp2,i+4,j-i-4);
      i:=pos('&#039;',temp3); if i<>0 then begin delete(temp3,i,6); Insert('''',temp3,i); end;
      i:=pos('&amp;',temp3); if i<>0 then begin delete(temp3,i,5); Insert('&',temp3,i); end; Edit8.Text:=temp3;
      i:=pos('<div><strong>',temp2)+14; while temp2[i]<>'>' do i:=i+1; j:=i; while temp2[j]<>'<' do j:=j+1;
      TagsPost:=copy(temp2,i+1,j-i-1); if Pos('Dirty Talk, JerkOff',TagsPost)<>0 then
      TagsPost:='JOI, Dirty Talk, Jerk Off Instruction'; Edit2.Text:=TagsPost;
      i:=pos('TEnd--><br><br>',temp2)+15;
      if copy(temp2,i,9)<>'File Name' then
      begin
        j:=pos('<br><br>File Name',temp2); temp3:=copy(temp2,i,j-i); temp3:=dis(temp3);
        for i:=1 to length(temp3)-4 do if copy(temp3,i,4)='<br>' then begin delete(temp3,i,4); Insert(#13,temp3,i); end;
        i:=pos('&#039;',temp3); if i<>0 then begin delete(temp3,i,6); Insert('''',temp3,i); end;
        i:=pos('&amp;',temp3); if i<>0 then begin delete(temp3,i,5); Insert('&',temp3,i); end;
        Memo3.Lines.Text:=temp3;
      end;
      PlaySound('sound\info.wav', 0, SND_ASYNC);
    end;
    //Pornolab
    if (Copy(temp,1,19)='http://pornolab.net') or (Copy(temp,1,20)='https://pornolab.net') then
    begin
      temp3:=temp; fn:=''; temp2:=IdHTTP1.Get(temp); IdHTTP1.Disconnect;
      i:=pos('торрент',temp2); i:=i+8; while temp2[i]<>'"' do begin fn:=fn+temp2[i]; i:=i+1; end;
      j:=length(fn);
      while fn[j]<>')' do
      begin
        if fn[j]='(' then begin delete(fn,j,1); insert('[',fn,j); end;
        j:=j-1; if j=1 then break;
      end;
      while (fn[length(fn)]<>'[') do delete(fn,length(fn),1); delete(fn,length(fn),1);
      if fn[1]='[' then begin while fn[1]<>']' do delete(fn,1,1); delete(fn,1,1); end;
      CheckName; Edit1.Text:=fn; n:=fn; Edit8.Text:=n;
      PlaySound('sound\info.wav', 0, SND_ASYNC);
    end;
    //Video Info
    {if Copy(temp,1,4)='9756' then
    begin
      Memo2.Text:=temp;
      //Name
      fn:=copy(Memo2.Lines[0],5,length(Memo2.Lines[0])-4); n:=fn; Edit8.Text:=n; Edit1.Text:=fn;
      //Size
      Size:=Memo2.Lines[1];
      for i:=1 to length(Size) do if Size[i]='i' then begin Delete(Size,i,1); break; end;
      //Length
      Duration:=Memo2.Lines[2]; delete(Duration,length(Duration)-3,4);
      Edit4.Text:=Duration;
      //Format
      Format:=Memo2.Lines[3]; Format:=AnsiUpperCase(copy(Format,1,i))+copy(Format,i+1,length(Format)-i);
      Edit5.Text:=Format;
      //Video
      Video:=Memo2.Lines[4]; Edit6.Text:=Video;
      MemoUpdate;
      if CheckBox8.Checked=True then
      begin
        if (Size='') then
        case MessageDlg('Вы не указали Размер. Продолжить?',mtInformation,[mbYes, mbNo],0) of
          IDYes: AddVideo;
        end
        else if Duration='' then
        case MessageDlg('Вы не указали Продолжительность. Продолжить?',mtInformation,[mbYes, mbNo],0) of
          IDYes: AddVideo;
        end
        else if Format='' then
        case MessageDlg('Вы не указали Формат. Продолжить?',mtInformation,[mbYes, mbNo],0) of
          IDYes: AddVideo;
        end
        else if Video='' then
        case MessageDlg('Вы не указали Видео. Продолжить?',mtInformation,[mbYes, mbNo],0) of
          IDYes: AddVideo;
        end
        else if Audio='' then
        case MessageDlg('Вы не указали Аудио. Продолжить?',mtInformation,[mbYes, mbNo],0) of
          IDYes: AddVideo;
        end
        else begin AddVideo; Count; PlaySound('sound\info.wav', 0, SND_ASYNC); autocopy:=1; end;
      end else PlaySound('sound\info.wav', 0, SND_ASYNC); autocopy:=1;
    end;}
  end;
  if Clipboard.HasFormat(CF_BITMAP) then if not Button7.Visible then
  begin
    Button7.Visible:=true; PlaySound('sound\poster.wav', 0, SND_ASYNC); autocopy:=1;
    Jpeg:= TJpegImage.Create; bmp:= TBitMap.Create;
    Jpeg.PixelFormat:= jf24Bit; bmp.Assign(Clipboard); wh:=Round(1000/bmp.Width*bmp.Height);
    if bmp.Width>1000 then
    begin
      SetStretchBltMode(bmp.canvas.handle,4);
      StretchBlt(bmp.canvas.handle,0,0,1000,wh,bmp.canvas.handle, 0,0,bmp.width,bmp.height,SRCCOPY);
      bmp.SetSize(1000,wh);
    end;
    Jpeg.CompressionQuality:=cq; Jpeg.Assign(bmp);
    Jpeg.SaveToFile(Folder+'\'+sym+'_1.jpg'); Jpeg.Free; bmp.Free;
    Image1.Picture.LoadFromFile(Folder+'\'+sym+'_1.jpg'); shoot1:='1'; MemoUpdate;
  end
  else if not Button8.Visible then
  begin
    Button8.Visible:=true; PlaySound('sound\poster.wav', 0, SND_ASYNC); autocopy:=1;
    Jpeg:= TJpegImage.Create; bmp:= TBitMap.Create;
    Jpeg.PixelFormat:= jf24Bit; bmp.Assign(Clipboard); wh:=Round(1000/bmp.Width*bmp.Height);
    if bmp.Width>1000 then
    begin
      SetStretchBltMode(bmp.canvas.handle,4);
      StretchBlt(bmp.canvas.handle,0,0,1000,wh,bmp.canvas.handle, 0,0,bmp.width,bmp.height,SRCCOPY);
      bmp.SetSize(1000,wh);
    end;
    Jpeg.CompressionQuality:=cq; Jpeg.Assign(bmp);
    Jpeg.SaveToFile(Folder+'\'+sym+'_2.jpg'); Jpeg.Free; bmp.Free;
    Image2.Picture.LoadFromFile(Folder+'\'+sym+'_2.jpg'); shoot2:='2'; MemoUpdate;
  end;
  if autocopy=1 then begin Clipboard.AsText:=sym + '.'+ AnsiLowerCase(Format); end; autocopy:=0;
  Clipboard.Close;
end;


end.
