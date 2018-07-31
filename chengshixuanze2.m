function varargout = chengshixuanze2(varargin)
% CHENGSHIXUANZE2 MATLAB code for chengshixuanze2.fig
%      CHENGSHIXUANZE2, by itself, creates a new CHENGSHIXUANZE2 or raises the existing
%      singleton*.
%
%      H = CHENGSHIXUANZE2 returns the handle to a new CHENGSHIXUANZE2 or the handle to
%      the existing singleton*.
%
%      CHENGSHIXUANZE2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHENGSHIXUANZE2.M with the given input arguments.
%
%      CHENGSHIXUANZE2('Property','Value',...) creates a new CHENGSHIXUANZE2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before chengshixuanze2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to chengshixuanze2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help chengshixuanze2

% Last Modified by GUIDE v2.5 11-Oct-2016 09:40:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @chengshixuanze2_OpeningFcn, ...
                   'gui_OutputFcn',  @chengshixuanze2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before chengshixuanze2 is made visible.
function chengshixuanze2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to chengshixuanze2 (see VARARGIN)

% Choose default command line output for chengshixuanze2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% handles.cnt=0;
% handles.st1='';
global jj ; 
 global mapObj; 
 global s;
 s='';
  global squyu;
 squyu='';
mapObj = containers.Map;
jj=0; 


% UIWAIT makes chengshixuanze2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = chengshixuanze2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value7 = get(handles.popupmenu1, 'value');

switch value7
    case 1
        set(handles.popupmenu2,'String',{'北京';'上海';'西安';'南京';'香港';'台北';'深圳'});    
    case 2       
        set(handles.popupmenu2,'String',{'柏林';'巴黎';'米兰';'伦敦';'罗马';'莫斯科';'哥本哈根'})
    case 3
        set(handles.popupmenu2,'String',{'洛杉矶';'华盛顿';'西雅图';'纽约';'波士顿';'休斯顿';'拉斯维加斯'})
    case 4
        set(handles.popupmenu2,'String',{'曼谷';'新加坡';'吉隆坡';'雅加达';'金边';'万象';'迪拜'})
    case 5
        set(handles.popupmenu2,'String',{'悉尼';'墨尔本';'堪培拉';'惠灵顿';'巴西利亚';'里约日内卢';'圣保罗'})
end

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value4 = get(handles.popupmenu2, 'value');
value3 = get(handles.popupmenu1, 'value');
if(value3==1)
switch value4
    case 1
       jpgDir='beijing\';
       
    case 2
        jpgDir='shanghai\';
        
    case 3
       jpgDir='xian\';
       
    case 4
       jpgDir='nanjing\';
    case 5
       jpgDir='xianggang\';
    case 6
       jpgDir='taibei\';
    case 7
       jpgDir='shenzhen\';
end
end
if(value3==2)
switch value4
    case 1
       jpgDir='bolin\';
       
    case 2
        jpgDir='bali\';
        
    case 3
       jpgDir='milan\';
       
    case 4
       jpgDir='lundun\';
    case 5
       jpgDir='luoma\';
    case 6
       jpgDir='mosike\';
    case 7
       jpgDir='gebenhagen\';
end
end
if(value3==3)
switch value4
    case 1
       jpgDir='luoshanji\';
       
    case 2
        jpgDir='huashengdun\';
        
    case 3
       jpgDir='xiyatu\';
       
    case 4
       jpgDir='niuyue\';
    case 5
       jpgDir='boshidun\';
    case 6
       jpgDir='lasiweijiasi\';
end
end
if(value3==4)
switch value4
    case 1
       jpgDir='mangu\';
       
    case 2
        jpgDir='xinjiapo\';
        
    case 3
       jpgDir='jilongpo\';
       
    case 4
       jpgDir='yajiada\';
    case 5
       jpgDir='jinbian\';
    case 6
       jpgDir='wanxiang\';
       case 7
       jpgDir='dibai\';
end
end
if(value3==5)
switch value4
    case 1
       jpgDir='xini\';
       
    case 2
        jpgDir='moerben\';
        
    case 3
       jpgDir='kanpeila\';
    case 4
       jpgDir='huilingdun\';
    case 5
       jpgDir='baxiliya\';
    case 6
       jpgDir='liyuereneilu\';
    case 7
       jpgDir='shengbaoluo\';
    
end
end
        Data1 = dir(jpgDir);
        Data1(1:2) = [];
        testNum=length(Data1);%speakerNum:人数
        
        for i = 1:testNum
            jpg_file = [jpgDir Data1(i).name];
            handles.pic=imread(jpg_file);
            handles.savepic=image(handles.pic,'Parent',handles.axes1);
%             handles.savepic=image(handles.pic,handles.axes1);
            set(handles.axes1,'xTick',[]);
            set(handles.axes1,'ytick',[]);
            set(handles.axes1,'box','off');
            pause(3);
        end
     




% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

value = get(handles.popupmenu2, 'value');
st = get(handles.popupmenu2, 'string');
% char *a[10];
setappdata(0,'A',{value,st(value)});
% set('handles','UserData',value);
% D=strvcat('',st(value));

global jj ;global s;
jj=jj+1;
% mapObj(st(value)) = jj;
n1=length(s);
if(n1==0)
     
     
         s=[s st(value)];
         
end
    
if(n1>0)
  
     for i2=1:n1
         equet=strcmp(st(value),s(i2));
         if(equet ==1)
          
               msgbox('该城市您已经选择！', '提示')
              s(i2)=s(i2);
              break;
          
         end
        if(equet ==0)
              s(i2)=s(i2);
              if(i2==n1)
              s(i2+1)=st(value);
              end
         end
      end

end
%  s=[s st(value)];
set(handles.listbox1,'string',s);
value2 = get(handles.popupmenu1, 'value');
stquyu = get(handles.popupmenu1, 'string');
global squyu;
n2=length(squyu);
if(n2==0)
  squyu=[squyu stquyu(value2)];
end
if(n2>0)
  
     for i3=1:n2
         equet2=strcmp(stquyu(value2),squyu(i3));
         if(equet2 ==1)
          
%                msgbox('该区域您已经选择！', '提示')
              squyu(i3)=squyu(i3);
              break;
          
         end
        if(equet2 ==0)
              squyu(i3)=squyu(i3);
              if(i3==n2)
              squyu(i3+1)=stquyu(value2);
              end
         end
      end

end
save dataquyu squyu


% mapObj.KeyType=st(value);
% mapObj
% rainFeb = mapObj('广州');
% rainFeb
% mapObj = containers.Map(st(value),value,jj);
% mapObj('st(value+1)') = 5;

% weekmap = containers.Map(st(value));
% handles.st1=[handles.st1 st(value)];
% handles.cnt=handles.cnt+1;




% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% set(hObject,'visible','off')
set(hObject,'xTick',[]);
set(hObject,'ytick',[]);
set(hObject,'box','off');

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
save dataxuanzechengshi s;
%  h=findobj(gcf)
close (handles.figure1)
