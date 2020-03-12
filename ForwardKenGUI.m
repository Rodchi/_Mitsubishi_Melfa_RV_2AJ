function varargout = ForwardKenGUI(varargin)
% FORWARDKENGUI MATLAB code for ForwardKenGUI.fig
%      FORWARDKENGUI, by itself, creates a new FORWARDKENGUI or raises the existing
%      singleton*.
%
%      H = FORWARDKENGUI returns the handle to a new FORWARDKENGUI or the handle to
%      the existing singleton*.
%
%      FORWARDKENGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORWARDKENGUI.M with the given input arguments.
%
%      FORWARDKENGUI('Property','Value',...) creates a new FORWARDKENGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ForwardKenGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ForwardKenGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ForwardKenGUI

% Last Modified by GUIDE v2.5 15-May-2018 17:53:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ForwardKenGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ForwardKenGUI_OutputFcn, ...
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

% --- Executes just before ForwardKenGUI is made visible.
function ForwardKenGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ForwardKenGUI (see VARARGIN)

% Choose default command line output for ForwardKenGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%se crean las variables globales y empezamos abriendo el robot
global world Velocidad fig Rango1 Rango2 Rango3 
axis off 
i=0.19;
world=vrworld('rv2ajfinal.WRL','new');
open(world);
close(fig);
fig=vrfigure(world);%cargando Mundo VRML
set(fig,'Viewpoint','frontal');
Velocidad =0.005;
%%set(handles.Edit_GradoA,'String','');
 Rango1=0; 
 Rango2=0;
 Rango3=0; 
 Rango5=0;
 Rango6=0; 



% UIWAIT makes ForwardKenGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ForwardKenGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function theta1_Callback(hObject, eventdata, handles)
% hObject    handle to theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta1 as text
%        str2double(get(hObject,'String')) returns contents of theta1 as a double
global theta1 Rango_A1
theta1 = str2double(get(hObject,'String'));
if isnan(theta1)
errordlg('ERROR','El valor debe ser numerico');
set(handles.theta1,'String','');
return
end
% Identificando rango
if(theta1<-150 || theta1>150)
errordlg('ERROR','El Rango es incorrecto (-150,150)');
set(handles.theta1,'String','');
return
end
theta1=((theta1*pi)/180);
set(handles.edit8,'Value',theta1);
Rango_A1=(theta1*180/pi);
set(handles.edit8,'String',Rango_A1);

% --- Executes during object creation, after setting all properties.
function theta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta2_Callback(hObject, eventdata, handles)
% hObject    handle to theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta2 as text
%        str2double(get(hObject,'String')) returns contents of theta2 as a double
global theta2 Rango_A2
theta2=str2double(get(hObject,'String'));
if isnan(theta2)
errordlg('ERROR','El valor debe ser numerico');
set(handles.theta2,'String','');
return
end
% Identificando rango
if(theta2<-60 ||theta2>120)
errordlg('ERROR','El Rango es incorrecto (-60,120)');
set(handles.theta2,'String','');
return
end
theta2=((theta2*pi)/180);
set(handles.edit9,'Value',theta2);
Rango_A2=(theta2*180/pi);
set(handles.edit9,'String',Rango_A2);

% --- Executes during object creation, after setting all properties.
function theta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta3_Callback(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta3 as text
%        str2double(get(hObject,'String')) returns contents of theta3 as a double
global theta3 Rango_A3
theta3=str2double(get(hObject,'String'));
if isnan(theta3)
errordlg('ERROR','El valor debe ser numerico');
set(handles.theta3,'String','');
return
end
% Identificando rango
if(theta3<-110 ||theta3>120)
errordlg('ERROR','El Rango es incorrecto (-110,120)');
set(handles.theta3,'String','');
return
end
theta3=((theta3*pi)/180);
set(handles.edit10,'Value',theta3);
Rango_A3=(theta3*180/pi);
set(handles.edit10,'String',Rango_A3);

% --- Executes during object creation, after setting all properties.
function theta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function theta5_Callback(hObject, eventdata, handles)
% hObject    handle to theta5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta5 as text
%        str2double(get(hObject,'String')) returns contents of theta5 as a double
global theta5 Rango_A4
theta5=str2double(get(hObject,'String'));
if isnan(theta5)
errordlg('ERROR','El valor debe ser numerico');
set(handles.theta5,'String','');
return
end
% Identificando rango
if(theta5<-90 ||theta5>90)
errordlg('ERROR','El Rango es incorrecto (-90,90)');
set(handles.theta5,'String','');
% set(handles.edit11,'Value','');
return
end
theta5=((theta5*pi)/180);
% set(handles.grado3,'Value',theta1);
% Rango_A1=(Edit_grado3*180/pi);
set(handles.edit11,'Value',theta5);
Rango_A4=(theta5*180/pi);
set(handles.edit11,'String',Rango_A4);

% --- Executes during object creation, after setting all properties.
function theta5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta6_Callback(hObject, eventdata, handles)
% hObject    handle to theta6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta6 as text
%        str2double(get(hObject,'String')) returns contents of theta6 as a double
global theta6 Rango_A5
theta6=str2double(get(hObject,'String'));
if isnan(theta6)
errordlg('ERROR','El valor debe ser numerico');
set(handles.theta6,'String','');
return
end
% Identificando rango
if(theta6<-200 ||theta6>200)
errordlg('ERROR','El Rango es incorrecto (-200,200)');
set(handles.theta6,'String','');
return
end
theta6=((theta6*pi)/180);
set(handles.edit12,'Value',theta6);
Rango_A5=(theta6*180/pi);
set(handles.edit12,'String',Rango_A5);

% --- Executes during object creation, after setting all properties.
function theta6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta6 (see GCBO)
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

handles=guidata(hObject);
A1 = str2double(get(handles.theta1,'String'));
Movimentos_Callback(hObject, eventdata, handles)
AA1=A_Matrix(A1,      300, 0, -90);
A2 = str2double(get(handles.theta2,'String'));
Movimentos_Callback(hObject, eventdata, handles)
AA2 = A_Matrix(A2-90,   0, 250, 0);
A3 = str2double(get(handles.theta3,'String'));
Movimentos_Callback(hObject, eventdata, handles)
AA3 = A_Matrix(A3,      0, 160, 0);
A4 = str2double(get(handles.theta5,'String'));
Movimentos_Callback(hObject, eventdata, handles)
AA4 = A_Matrix(A4-90,   0, 0, -90);
A5 = str2double(get(handles.theta6,'String'));
Movimentos_Callback(hObject, eventdata, handles)
AA5 = A_Matrix(A5,      72, 0, 0);

if A1<-150 || A1>150 
    error('El valor de theta1 esta fuera de los limites');
    return;
end

if A2<-60 || A2>120 
    error('El valor de theta2 esta fuera de los limites');
    return;
end

if A3<-110 || A3>120 
    error('El valor de theta3 esta fuera de los limites');
    return;
end

if A4<-90 || A4>90 
    error('El valor de theta5 esta fuera de los limites');
    return;
end

if A5<-200 || A5>200
    error('El valor de theta6 esta fuera de los limites');
    return;
end


T05 = [AA1*AA2*AA3*AA4*AA5];

set(handles.A01,'Data',AA1);
set(handles.A02,'Data',AA2);
set(handles.A03,'Data',AA3);
set(handles.A04,'Data',AA4);
set(handles.A05,'Data',AA5);
set(handles.TA,'Data',T05);

x = T05(1,4); %position (1,4) in Matrix T05
y = T05(2,4);
z = T05(3,4);

set(handles.x11,'String',x);
set(handles.y11,'String',y);
set(handles.z11,'String',z);

beta= str2double(get(handles.theta2,'String'))+str2double(get(handles.theta3,'String'))+str2double(get(handles.theta5,'String'));

set(handles.beta11,'String',beta);

alpha= A1*cos(deg2rad(beta))+A5;
set(handles.alpha11,'String',alpha);

% FKen(x,y,z,alpha,beta);

function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double
global Rango1 world Velocidad
Rango1=get(hObject,'Value');
edit8=vrnode(world,'_1_DOF');%cargando nodo de VRML
edit8.rotation=[0 1 0 Rango1];
Rango11=(Rango1*180/pi);
set(handles.edit8,'SliderStep',[Velocidad 0]);%Velocidad
set(handles.edit8,'String',Rango11); %Escribe el valor de
vrdrawnow;

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
global Rango2 world Velocidad
Rango2=get(hObject,'Value'); %Carga en handles.slider1
edit9manual=vrnode(world,'_2_DOF');%cargando nodo de VRML
edit9manual.rotation=[1 0 0 Rango2];
Rango22=(Rango2*180/pi);
set(handles.edit9,'SliderStep',[Velocidad 0]);%Velocidad
set(handles.edit9,'String',Rango22);


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
global Rango3 world Velocidad
Rango3=get(hObject,'Value'); %Carga en handles.slider1
edit10manual=vrnode(world,'_3_DOF');%cargando nodo de VRML
edit10manual.rotation=[1 0 0 Rango3];
Rango33=(Rango3*180/pi);
set(handles.edit10,'SliderStep',[Velocidad 0]);%Velocidad
set(handles.edit10,'String',Rango33);

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
global Rango5 world Velocidad
Rango5=get(hObject,'Value'); %Carga en handles.slider1
edit11manual=vrnode(world,'_4_DOF');%cargando nodo de VRML
edit11manual.rotation=[1 0 0 Rango5];
Rango55=(Rango5*180/pi);
set(handles.edit11,'SliderStep',[Velocidad 0]);%Velocidad
set(handles.edit11,'String',Rango55);

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



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double
global Rango6 world Velocidad
Rango6=get(hObject,'Value'); %Carga en handles.slider1
edit12manual=vrnode(world,'_5_DOF');%cargando nodo de VRML
edit12manual.rotation=[1 0 0 Rango6];
Rango66=(Rango6*180/pi);
set(handles.edit12,'SliderStep',[Velocidad 0]);%Velocidad
set(handles.edit12,'String',Rango66);

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

function A01_Callback(hObject, eventdata, handles)
% hObject    handle to A01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A01 as text
%        str2double(get(hObject,'String')) returns contents of A01 as a double


% --- Executes during object creation, after setting all properties.
function A01_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A01 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A02_Callback(hObject, eventdata, handles)
% hObject    handle to A02 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A02 as text
%        str2double(get(hObject,'String')) returns contents of A02 as a double


% --- Executes during object creation, after setting all properties.
function A02_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A02 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A03_Callback(hObject, eventdata, handles)
% hObject    handle to A03 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A03 as text
%        str2double(get(hObject,'String')) returns contents of A03 as a double


% --- Executes during object creation, after setting all properties.
function A03_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A03 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A04_Callback(hObject, eventdata, handles)
% hObject    handle to A04 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A04 as text
%        str2double(get(hObject,'String')) returns contents of A04 as a double


% --- Executes during object creation, after setting all properties.
function A04_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A04 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A05_Callback(hObject, eventdata, handles)
% hObject    handle to A05 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A05 as text
%        str2double(get(hObject,'String')) returns contents of A05 as a double


% --- Executes during object creation, after setting all properties.
function A05_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A05 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TA_Callback(hObject, eventdata, handles)
% hObject    handle to TA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TA as text
%        str2double(get(hObject,'String')) returns contents of TA as a double


% --- Executes during object creation, after setting all properties.
function TA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

P1=get(handles.x11,'String');
P2=get(handles.y11,'String');
P3=get(handles.z11,'String');
P6=get(handles.beta11,'String');
P5=get(handles.alpha11,'String');

Puntos = strcat(P1,',',P2,',',P3,',',P5,',',P6)
instrfind({'port'},{'COM7'}); %eliminando rastros de conexiones pasadas
puerto_melfa = serial('COM7'); %declarando el puerto
 
%configurando puerto
puerto_melfa.BaudRate = 9600;
puerto_melfa.Terminator = 'CR';
puerto_melfa.DataBits = 8;
puerto_melfa.Parity = 'none';
puerto_melfa.StopBits = 1;

fopen(puerto_melfa);%abriendo puerto

fprintf (puerto_melfa, '1;1;CNTLON'); %inicia soft-control.. creo
fprintf (puerto_melfa, '');

fprintf (puerto_melfa, '1;1;SRVON'); %enciende el servox (debe sonar)
fprintf (puerto_melfa, '');

 inicio = '1;1;EXECP1=(';
 fin =  ',0.00)(6,0)';
 P = strcat(inicio,Puntos,fin)
 fprintf(puerto_melfa,P);
 fprintf(puerto_melfa,'');
 
 fprintf(puerto_melfa,'1;1;EXECMOV P1');
 fprintf(puerto_melfa,'');



fclose(puerto_melfa);
msgbox('!El archivo POS de Foward Kinectatics se ha guardo!')

% --- Executes on button press in clear_FK.
function clear_FK_Callback(hObject, eventdata, handles)
% hObject    handle to clear_FK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.edit8,'String','----');
set(handles.edit9,'String','----');
set(handles.edit10,'String','----');
set(handles.edit12,'String','----');
set(handles.edit11,'String','----');

set(handles.theta1,'String', '');
set(handles.theta2,'String', '');
set(handles.theta3,'String', '');
set(handles.theta5,'String', '');
set(handles.theta6,'String', '');

set(handles.x11,'String', '---');
set(handles.y11,'String', '---');
set(handles.z11,'String', '---');
set(handles.alpha11,'String', '---');
set(handles.beta11,'String', '---');

set(handles.A01,'Data', '');
set(handles.A02,'Data', '');
set(handles.A03,'Data', '');
set(handles.A04,'Data', '');
set(handles.A05,'Data', '');
set(handles.TA,'Data', '');

function Movimentos_Callback(hObject, eventdata, handles)
global   world Velocidad  Rango1 Rango2 Rango3 Rango5 Rango6 A B C D E P  theta1 theta2 theta3 theta5 AntiguoA AntiguoB AntiguoC  
global AntiguoD AntiguoE theta6
A=0;
B=0;
C=0;
D=0;
E=0;
P=0;
a0=AntiguoA;
b=AntiguoB;
c=AntiguoC;
d=AntiguoD;
e=AntiguoE;

for a=-pi:Velocidad:pi
%Retorno GradoA
if(AntiguoA~=theta1)
if(theta1<0)
%decremento de barra   
if(AntiguoA>theta1)
if(a<=AntiguoA && a>=theta1)
a0=a0-Velocidad;
Rango1=theta1;
edit8=vrnode(world,'_1_DOF');%cargando nodo de VRML
edit8.rotation=[0 1 0 a0];
set(handles.edit8,'Value',a0);
A=radtodeg(a0);
set(handles.edit8,'String',A); %Escribe el valor de
vrdrawnow;
drawnow
end   
else
%incremento de barra
if(a>=AntiguoA && a<=theta1)
a0=a;
Rango1=theta1;
edit8=vrnode(world,'_1_DOF');%cargando nodo de VRML
edit8.rotation=[0 1 0 a0];
set(handles.edit8,'Value',a0);
A=radtodeg(a0);
set(handles.edit8,'String',A); %Escribe el valor de   
vrdrawnow;
drawnow
end    
end  

else
if(AntiguoA>theta1)
%decremento de barra
if(a<=AntiguoA && a>=theta1)
Rango1=theta1;
a0=a0-Velocidad;
edit8=vrnode(world,'_1_DOF');%cargando nodo de VRML
edit8.rotation=[0 1 0 a0];
set(handles.edit8,'Value',a0);
A=radtodeg(a0);
set(handles.edit8,'String',A); %Escribe el valor de
vrdrawnow;
drawnow
end   
else
%incremento de barra
if(a<=theta1 && a>=AntiguoA)
a0=a;
Rango1=theta1;
edit8=vrnode(world,'_1_DOF');%cargando nodo de VRML
edit8.rotation=[0 1 0 a0];
set(handles.edit8,'Value',a0);
A=radtodeg(a0);
set(handles.edit8,'String',A); %Escribe el valor de   
vrdrawnow;
drawnow
end    
end
end
end

%Retorno GradoB
if(AntiguoB~=theta2)
if(AntiguoB>theta2)
if(a<=AntiguoB && a>=theta2)    
Rango2=theta2;
b=b-Velocidad;
edit9=vrnode(world,'_2_DOF');%cargando nodo de VRML
edit9.rotation=[1 0 0 b];
set(handles.edit9,'Value',b);
B=radtodeg(b);
set(handles.edit9,'String',B); %Escribe el valor de
vrdrawnow;
drawnow
end
else    
if(a<=theta2 && a>=AntiguoB)
Rango2=theta2;
b=a;
edit9=vrnode(world,'_2_DOF');%cargando nodo de VRML
edit9.rotation=[1 0 0 b];
set(handles.edit9,'Value',b);
B=radtodeg(b);
set(handles.edit9,'String',B); %Escribe el valor de
vrdrawnow;
drawnow
end
end
end
%Retorno GradoC
if(AntiguoC~=theta3)
if(AntiguoC>theta3)
if(a<=AntiguoC && a>=theta3)    
Rango3=theta3;
c=c-Velocidad;
edit10=vrnode(world,'_3_DOF');%cargando nodo de VRML
edit10.rotation=[1 0 0 c];
set(handles.edit10,'Value',c);
C=radtodeg(c);
set(handles.edit10,'String',C); %Escribe el valor de
vrdrawnow;
drawnow
end
else  
if(a<=theta3 && a>=0)
Rango3=theta3;
c=a;
edit10=vrnode(world,'_3_DOF');%cargando nodo de VRML
edit10.rotation=[1 0 0 c];
set(handles.edit10,'Value',c);
C=radtodeg(c);
set(handles.edit10,'String',C); %Escribe el valor de
vrdrawnow;
drawnow
end
end
end
%Grado 4
if(AntiguoD~=theta5)
if(AntiguoD>theta5)
if(a<=AntiguoD && a>=theta5)    
Rango5=theta5;
d=d-Velocidad;
edit11=vrnode(world,'_4_DOF');%cargando nodo de VRML
edit11.rotation=[1 0 0 d];
set(handles.edit11,'Value',d);
D=radtodeg(d);
set(handles.edit11,'String',D); %Escribe el valor de
vrdrawnow;
drawnow
end
else    
if(a<=theta5 && a>=AntiguoB)
Rango5=theta5;
d=a;
edit11=vrnode(world,'_4_DOF');%cargando nodo de VRML
edit11.rotation=[1 0 0 d];
set(handles.edit11,'Value',d);
D=radtodeg(d);
set(handles.edit11,'String',D); %Escribe el valor de
vrdrawnow;
drawnow
end
end
end

%GRADO 5
if(AntiguoE~=theta6)
if(AntiguoE>theta6)
if(a<=AntiguoE && a>=theta6)    
Rango6=theta6;
e=e-Velocidad;
edit12=vrnode(world,'_5_DOF');%cargando nodo de VRML
edit12.rotation=[0 1 0 e];
set(handles.edit12,'Value',e);
E=radtodeg(e);
set(handles.edit12,'String',E); %Escribe el valor de
vrdrawnow;
drawnow
end
else 
if(a<=theta6&& a>=0)
Rango6=theta6;
e=a;
edit12=vrnode(world,'_5_DOF');%cargando nodo de VRML
edit12.rotation=[0 1 0 e];
set(handles.edit12,'Value',e);
E=radtodeg(e);
set(handles.edit12,'String',E); %Escribe el valor de
vrdrawnow;
drawnow
end
end
end

end
AntiguoA=theta1;
AntiguoB=theta2;
AntiguoC=theta3;
AntiguoD=theta5;
AntiguoE=theta6;



function x11_Callback(hObject, eventdata, handles)
% hObject    handle to x11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x11 as text
%        str2double(get(hObject,'String')) returns contents of x11 as a double


% --- Executes during object creation, after setting all properties.
function x11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y11_Callback(hObject, eventdata, handles)
% hObject    handle to y11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y11 as text
%        str2double(get(hObject,'String')) returns contents of y11 as a double


% --- Executes during object creation, after setting all properties.
function y11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z11_Callback(hObject, eventdata, handles)
% hObject    handle to z11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z11 as text
%        str2double(get(hObject,'String')) returns contents of z11 as a double


% --- Executes during object creation, after setting all properties.
function z11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha11_Callback(hObject, eventdata, handles)
% hObject    handle to alpha11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha11 as text
%        str2double(get(hObject,'String')) returns contents of alpha11 as a double


% --- Executes during object creation, after setting all properties.
function alpha11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beta11_Callback(hObject, eventdata, handles)
% hObject    handle to beta11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beta11 as text
%        str2double(get(hObject,'String')) returns contents of beta11 as a double


% --- Executes during object creation, after setting all properties.
function beta11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beta11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double


% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
