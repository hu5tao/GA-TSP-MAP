function varargout = guiyichuanyingyong(varargin)
% GUIYICHUANYINGYONG MATLAB code for guiyichuanyingyong.fig
%      GUIYICHUANYINGYONG, by itself, creates a new GUIYICHUANYINGYONG or raises the existing
%      singleton*.
%
%      H = GUIYICHUANYINGYONG returns the handle to a new GUIYICHUANYINGYONG or the handle to
%      the existing singleton*.
%
%      GUIYICHUANYINGYONG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIYICHUANYINGYONG.M with the given input arguments.
%
%      GUIYICHUANYINGYONG('Property','Value',...) creates a new GUIYICHUANYINGYONG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiyichuanyingyong_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiyichuanyingyong_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiyichuanyingyong

% Last Modified by GUIDE v2.5 12-Oct-2016 15:58:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiyichuanyingyong_OpeningFcn, ...
                   'gui_OutputFcn',  @guiyichuanyingyong_OutputFcn, ...
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


% --- Executes just before guiyichuanyingyong is made visible.
function guiyichuanyingyong_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiyichuanyingyong (see VARARGIN)

% Choose default command line output for guiyichuanyingyong
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiyichuanyingyong wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiyichuanyingyong_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num=50;
termOps=500;
pc=0.25;
cxops=3;
pm=0.3;
alpha=0.1;
set(handles.edit1,'string',num2str(termOps));
set(handles.edit2,'string',num2str(num));
set(handles.edit3,'string',num2str(pc));
set(handles.edit4,'string',num2str(pm));
% set(handles.edit5,'string',num2str(alpha));
set(handles.edit12,'string',num2str(cxops));



% --------------------------------------------------------------------
function diquxuanze_1_Callback(hObject, eventdata, handles)
% hObject    handle to diquxuanze_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ouzhou_Callback(hObject, eventdata, handles)
% hObject    handle to ouzhou (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function zhongguo_Callback(hObject, eventdata, handles)
% hObject    handle to zhongguo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function meiguo_Callback(hObject, eventdata, handles)
% hObject    handle to meiguo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function dongnanyajinanya_Callback(hObject, eventdata, handles)
% hObject    handle to dongnanyajinanya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function xuanzechengshi_dongnanyajinanya_Callback(hObject, eventdata, handles)
% hObject    handle to xuanzechengshi_dongnanyajinanya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function xuanzechengshi_meiguo_Callback(hObject, eventdata, handles)
% hObject    handle to xuanzechengshi_meiguo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function xuanzechengshi_zhongguo_Callback(hObject, eventdata, handles)
% hObject    handle to xuanzechengshi_zhongguo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function xuanzechengshi_ouzhou_Callback(hObject, eventdata, handles)
% hObject    handle to xuanzechengshi_ouzhou (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function guanyu_Callback(hObject, eventdata, handles)
% hObject    handle to guanyu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

input1 = str2num(get(handles.edit1,'String')); 
input2 = str2num(get(handles.edit2,'String')); 
input3 = str2num(get(handles.edit3,'String')); 
input4 = str2num(get(handles.edit4,'String')); 
% input5 = str2num(get(handles.edit5,'String')); 
input6 = str2num(get(handles.edit12,'String'));
q1=size(input1,1);q2=size(input2,1);q3=size(input3,1);q4=size(input4,1);
% q5=size(input5,1);
q6=size(input6,1);

if(q1==0&&q2==0&&q3==0&&q4==0&&q6==0)
     msgbox('没有设置好参数，请先写入遗传算法参数！！', '提示')
            return
              
end
load dataquyu
n5=length(squyu);
if(n5>0)
for i5=1:n5
    if(i5==1)
    set(handles.edit7,'string',squyu(i5));
    end
    if(i5==2)
    set(handles.edit8,'string',squyu(i5));
    end
    if(i5==3)
    set(handles.edit9,'string',squyu(i5));
    end
    if(i5==4)
    set(handles.edit10,'string',squyu(i5));
    end
    if(i5==5)
    set(handles.edit11,'string',squyu(i5));
    end
end
end
% set(m_proj,'Parent',handles.axes1);
load datajg
load dataxuanzechengshi
maxlong=max(jg(1,:));
maxlat=max(jg(2,:));
minlong=min(jg(1,:));
minlat=min(jg(2,:));
% m_proj('oblique mercator','longitudes',[-175 100], ...
%        'latitudes',[56 -56],'direction','vertical','aspect',2.0);
hold off
m_proj('oblique mercator','longitudes',[minlong maxlong], ...
       'latitudes',[maxlat minlat],'direction','vertical','aspect',2.0);
  m_coast('linewidth',2,'color','r');
  m_coast('patch',[.7 .7 .7],'edgecolor','none');
  m_grid get
  [X,Y]=m_ll2xy(-129,48.5);
  line(X,Y,'marker','pentagram','markersize',8,'color','r');
% text(X,Y,' M5','vertical','top');
% m_line(139.46,39.9,'marker','pentagram','markersize',8,'color','r');
% m_text(139.46,39.9,' M4','vertical','top');
% clf
%  m_coast('patch',[.7 .7 .7],'edgecolor','none');
 m_grid('xlabeldir','end','fontsize',10);

n10=size(a,2);
% for i10=1:n10
%     m_line(jg(1,i10),jg(2,i10),'marker','pentagram','markersize',8,'color','g');
%     strxianshi=strcat('M',num2str(i10),'-',s(i10));
%     m_text(jg(1,i10),jg(2,i10),strxianshi','vertical','top','color','g','FontWeight','bold');
% end
for i10=1:n10
    m_line(a(i10).x2(1,1),a(i10).x2(1,2),'marker','pentagram','markersize',10,'color','g');
%     strxianshi=strcat('M',num2str(i10),'-',a(i10).x1);
%     m_text(a(i10).x2(1,1),a(i10).x2(1,2),strxianshi','vertical','top','color','g','FontWeight','bold');
end
load datajulijuzhen
[b,t1]=gac(RANGENEW,input1,input2,input3,input6,input4);
set(handles.edit13,'string',num2str(t1(1)));
% s2=blanks(length(b));%生成一个n长的空字符串数组
for i12=1:length(b)
    s2(i12)=s(b(i12));
    if(i12<length(b))
    s2(i12)=strcat(s2(i12),'->');
    end
    if(i12==length(b))
% s2(i12)=strcat(s(i12));
    end
    
end
c=cell2mat(s2);
set(handles.edit14,'string',c);
n12=size(jg,2);
for i10=1:n12
    pause(1)
    m_line(jg(1,i10),jg(2,i10),'marker','pentagram','markersize',8,'color','r');
    strxianshi=strcat('M',num2str(i10),'-',s(i10));
    m_text(jg(1,i10),jg(2,i10),strxianshi','vertical','top','color','r','FontWeight','bold');
    
end

%  handles.pic=imread(jpg_file);
%             handles.savepic=image(handles.pic,'Parent',handles.axes1);
          


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
julijuzhen
set(handles.uitable1,'Data',RANGENEW);
set(handles.uitable1, 'ColumnName', s);      
set(handles.uitable1, 'RowName', s);
backgroundColor = [.8 .8 .8;.6 .6 .6];
set(handles.uitable1, 'BackgroundColor', backgroundColor);

% f = figure('Position', [200 200 550 250]);
% t = uitable('Parent', f, 'Position', [25 25 520 200]);
% 
% set(t, 'Data',RANGENEW)
% set(t, 'ColumnName', s);      
% set(t, 'RowName', s);
% backgroundColor = [.8 .8 .8;.6 .6 .6];
% set(t, 'BackgroundColor', backgroundColor);


% --------------------------------------------------------------------
function xuanzechengshi_Callback(hObject, eventdata, handles)
% hObject    handle to xuanzechengshi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% delete dataquyu
% delete dataxuanzechengshi
run chengshixuanze2




% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% m_proj('oblique mercator','longitudes',[-155 120], ...
%        'latitudes',[35 0],'direction','vertical','aspect',2.0);
%   m_coast('linewidth',2,'color','r');
%   m_coast('patch',[.7 .7 .7],'edgecolor','none');
%   m_grid get
%   [X,Y]=m_ll2xy(-129,48.5);
%   line(X,Y,'marker','pentagram','markersize',8,'color','r');
% text(X,Y,' M5','vertical','top');
% m_line(139.46,39.9,'marker','pentagram','markersize',8,'color','r');
% m_text(139.46,39.9,' M4','vertical','top');
% clf
% gcf
% m_coast('patch',[.7 .7 .7],'edgecolor','none');
% m_grid('xlabeldir','end','fontsize',10);
% set(hObject,'Tag',handles.axes1);
set(hObject,'xTick',[]);
set(hObject,'ytick',[]);
set(hObject,'box','off');

% Hint: place code in OpeningFcn to populate axes1



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
