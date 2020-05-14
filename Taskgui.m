function varargout = Taskgui(varargin)
% TASKGUI MATLAB code for Taskgui.fig
%      TASKGUI, by itself, creates a new TASKGUI or raises the existing
%      singleton*.
%
%      H = TASKGUI returns the handle to a new TASKGUI or the handle to
%      the existing singleton*.
%
%      TASKGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TASKGUI.M with the given input arguments.
%
%      TASKGUI('Property','Value',...) creates a new TASKGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Taskgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Taskgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Taskgui

% Last Modified by GUIDE v2.5 15-May-2020 00:35:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Taskgui_OpeningFcn, ...
                   'gui_OutputFcn',  @Taskgui_OutputFcn, ...
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


% --- Executes just before Taskgui is made visible.
function Taskgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Taskgui (see VARARGIN)

% Choose default command line output for Taskgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Taskgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Taskgui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in but1.
function but1_Callback(hObject, eventdata, handles)
% hObject    handle to but1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val=get(handles.pop,'Value');
T=readtable('data.xlsx');
T=flipud(T);

if val==2
   a=T{2:121,5};
   
  comet(a)
 title('Statistics for COVID-19 affected in USA')
 xlabel('Day count')
 ylabel('People affected')  
 
   
elseif val==3
   a=T{123:243,5};
  
  
  comet(a)
 title('Statistics for COVID-19 affected in Italy')
 xlabel('Day count')
 ylabel('People affected')  
   
elseif val==4
   a=T{245:364,5};
   
  comet(a)
  title('Statistics for COVID-19 affected in India')
 xlabel('Day count')
 ylabel('People affected')

elseif val==5
   a=T{366:486,5};
   
  comet(a)
 title('Statistics for COVID-19 affected in China')
 xlabel('Day count')
 ylabel('People affected')
   
   
elseif val==6
   a=T{488:608,5};
    comet(a)
  title('Statistics for COVID-19 affected in Germany')
 xlabel('Day count')
 ylabel('People affected')
 
else
 
end

% --- Executes on button press in but3.
function but3_Callback(hObject, eventdata, handles)
% hObject    handle to but3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val=get(handles.pop,'Value');
T=readtable('data.xlsx');
T=flipud(T);
if val==2
   a=T{2:121,5};
   b=T{2:121,6};
 figure()
 subplot(2,1,1)
 comet(a)
 title('Statistics for COVID-19 affected in USA')
 xlabel('Day count')
 ylabel('People affected')
 subplot(2,1,2)
 comet(b)
 title('Statistics for COVID-19 deaths in USA')
 xlabel('Day count')
 ylabel('People died')
   
   
elseif val==3
   a=T{123:243,5};
   b=T{123:243,6};
   figure()
 subplot(2,1,1)
 comet(a)
 title('Statistics for COVID-19 affected in Italy')
 xlabel('Day count')
 ylabel('People affected')
 subplot(2,1,2)
 comet(b)
 title('Statistics for COVID-19 deaths in Italy')
 xlabel('Day count')
 ylabel('People died')
   
elseif val==4
   a={245:364,5};
   b={245:364,6};
  figure()
 subplot(2,1,1)
 comet(a)
 title('Statistics for COVID-19 affected in India')
 xlabel('Day count')
 ylabel('People affected')
 subplot(2,1,2)
 comet(b)
 title('Statistics for COVID-19 deaths in India')
 xlabel('Day count')
 ylabel('People died')
   
elseif val==5
   a=T{366:486,5};
   b=T{366:486,6};
   figure()
 subplot(2,1,1)
 comet(a)
 title('Statistics for COVID-19 affected in China')
 xlabel('Day count')
 ylabel('People affected')
 subplot(2,1,2)
 comet(b)
 title('Statistics for COVID-19 deaths in China')
 xlabel('Day count')
 ylabel('People died')
  
   
elseif v==6
   a=T{488:608,5};
   b=T{488:608,6};
   figure()
 subplot(2,1,1)
 comet(a)
 title('Statistics for COVID-19 affected in Germany')
 xlabel('Day count')
 ylabel('People affected')
 subplot(2,1,2)
 comet(b)
 title('Statistics for COVID-19 deaths in Germany')
 xlabel('Day count')
 ylabel('People died')
 
else


 end
% --- Executes on button press in but2.
function but2_Callback(hObject, eventdata, handles)
% hObject    handle to but2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

val=get(handles.pop,'Value');
T=readtable('data.xlsx');
T=flipud(T)

if val==2
   
 b=T{2:121,6};
   
 comet(b)
 title('Statistics for COVID-19 deaths in USA')
 xlabel('Day count')
 ylabel('People died')
     
  
   
elseif val==3
   
   b=T{123:243,6};
  comet(b)
 title('Statistics for COVID-19 deaths in Italy')
 xlabel('Day count')
 ylabel('People died')
    
   
   
elseif val==4
   
   b=T{245:364,6};
   
  comet(b)
 title('Statistics for COVID-19 deaths in India')
 xlabel('Day count')
 ylabel('People died')
    
   
elseif val==5
  
   b=T{366:486,6};
 comet(b)
 title('Statistics for COVID-19 deaths in China')
 xlabel('Day count')
 ylabel('People died')
   
   
elseif val==6 
   
  b=T{488:608,6};
   comet(b)
 title('Statistics for COVID-19 deaths in Germany')
 xlabel('Day count')
 ylabel('People died')
  
else

    
   
end

function out1_Callback(hObject, eventdata, handles)
% hObject    handle to out1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of out1 as text
%        str2double(get(hObject,'String')) returns contents of out1 as a double


% --- Executes during object creation, after setting all properties.
function out1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to out1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function out2_Callback(hObject, eventdata, handles)
% hObject    handle to out2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of out2 as text
%        str2double(get(hObject,'String')) returns contents of out2 as a double


% --- Executes during object creation, after setting all properties.
function out2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to out2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in but4.
function but4_Callback(hObject, eventdata, handles)
% hObject    handle to but4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.out1,'string','')
set(handles.out2,'string','')
cla reset
set(handles.pop,'Value',1)

% --- Executes on selection change in pop.
function pop_Callback(hObject, eventdata, handles)
% hObject    handle to pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pop
val=get(handles.pop,'Value');
T=readtable('data.xlsx');
T=flipud(T)

if val==2
   a=sum(T{2:121,5});
   b=sum(T{2:121,6});
   set(handles.out1,'String',num2str(a))
   set(handles.out2,'String',num2str(b))
   
elseif val==3
   a=sum(T{123:243,5});
   b=sum(T{123:243,6});
   set(handles.out1,'String',num2str(a))
   set(handles.out2,'String',num2str(b))
   
elseif val==4
   a=sum(T{245:364,5});
   b=sum(T{245:364,6});
   set(handles.out1,'String',num2str(a))
   set(handles.out2,'String',num2str(b))
   
elseif val==5
   a=sum(T{366:486,5});
   b=sum(T{366:486,6});
   set(handles.out1,'String',num2str(a))
   set(handles.out2,'String',num2str(b))
   
elseif val==6 
   a=sum(T{488:608,5});
   b=sum(T{488:608,6});
   set(handles.out1,'String',num2str(a))
   set(handles.out2,'String',num2str(b))
   
else
    
    
   
end
% --- Executes during object creation, after setting all properties.
function pop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
