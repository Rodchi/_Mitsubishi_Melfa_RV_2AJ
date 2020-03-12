function varargout = InverseKinGUI(varargin)
% INVERSEKINGUI MATLAB code for InverseKinGUI.fig
%      INVERSEKINGUI, by itself, creates a new INVERSEKINGUI or raises the existing
%      singleton*.
%
%      H = INVERSEKINGUI returns the handle to a new INVERSEKINGUI or the handle to
%      the existing singleton*.
%
%      INVERSEKINGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVERSEKINGUI.M with the given input arguments.
%
%      INVERSEKINGUI('Property','Value',...) creates a new INVERSEKINGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InverseKinGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InverseKinGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InverseKinGUI

% Last Modified by GUIDE v2.5 20-May-2018 15:57:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InverseKinGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @InverseKinGUI_OutputFcn, ...
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


% --- Executes just before InverseKinGUI is made visible.
function InverseKinGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InverseKinGUI (see VARARGIN)

% Choose default command line output for InverseKinGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global world Velocidad fig Rango_A Rango_B Rango_C %%Rango_G_P Edit_GradoA Edit_GradoB Edit_GradoC Edit_Giro_P AntiguoA AntiguoB AntiguoC AntiguoP
axis off %%checar-----
i=0.19;
world=vrworld('rv2ajfinal.WRL','new');
open(world);
close(fig);
fig=vrfigure(world);%cargando Mundo VRML
set(fig,'Viewpoint','frontal');
Velocidad =0.005;
%%set(handles.Edit_GradoA,'String','');
 Rango_A=0; 
 Rango_B=0;
 Rango_C=0; 
 Rango_D=0;
 Rango_E=0; 
% UIWAIT makes InverseKinGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InverseKinGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function x1_Callback(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1 as text
%        str2double(get(hObject,'String')) returns contents of x1 as a double
global x1 
x1=str2double(get(hObject,'String')); %Almacenar valor ingresado y Transformar a formato double
%identifica valor no numerico
if isnan(x1)
errordlg('El valor debe ser numerico','ERROR');
return
end

set(handles.theta11,'String',x1);


% --- Executes during object creation, after setting all properties.
function x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y1_Callback(hObject, eventdata, handles)
% hObject    handle to y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y1 as text
%        str2double(get(hObject,'String')) returns contents of y1 as a double
global y1 
y1=str2double(get(hObject,'String')); %Almacenar valor ingresado y Transformar a formato double
%identifica valor no numerico
if isnan(y1)
errordlg('El valor debe ser numerico','ERROR');
return
end

set(handles.theta22,'String',y1);



% --- Executes during object creation, after setting all properties.
function y1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z1_Callback(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z1 as text
%        str2double(get(hObject,'String')) returns contents of z1 as a double
global z1 
z1=str2double(get(hObject,'String')); %Almacenar valor ingresado y Transformar a formato double
%identifica valor no numerico
if isnan(z1)
errordlg('El valor debe ser numerico','ERROR');
return
end

set(handles.theta33,'String',z1);



% --- Executes during object creation, after setting all properties.
function z1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha1_Callback(hObject, eventdata, handles)
% hObject    handle to alpha1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha1 as text
%        str2double(get(hObject,'String')) returns contents of alpha1 as a double

global alpha1 
alpha1=str2double(get(hObject,'String')); %Almacenar valor ingresado y Transformar a formato double
%identifica valor no numerico
if isnan(alpha1)
errordlg('El valor debe ser numerico','ERROR');
return
end

set(handles.theta55,'String',alpha1);


% --- Executes during object creation, after setting all properties.
function alpha1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beta1_Callback(hObject, eventdata, handles)
% hObject    handle to beta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beta1 as text
%        str2double(get(hObject,'String')) returns contents of beta1 as a double

global beta1 
beta1=str2double(get(hObject,'String')); %Almacenar valor ingresado y Transformar a formato double
%identifica valor no numerico
if isnan(beta1)
errordlg('El valor debe ser numerico','ERROR');
return
end

set(handles.theta66,'String',beta1);


% --- Executes during object creation, after setting all properties.
function beta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in generate.
function generate_Callback(hObject, eventdata, handles)
% hObject    handle to generate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global X Y Z Alpha Beta invken Rango_AA1 Rango_AA2 Rango_AA3 Rango_AA6 Rango_AA5 thet1 thet2 thet3 thet5 thet6 error  gettheta22 gettheta33 gettheta55 gettheta66 tet1 tet2 tet3 tet5 tet6

handles=guidata(hObject);
X = str2double(get(handles.theta11,'String'));
Y = str2double(get(handles.theta22,'String'));
Z = str2double(get(handles.theta33,'String'));
Alpha = str2double(get(handles.theta55,'String'));
Beta = str2double(get(handles.theta66,'String'));

[invken] = inverseken(X,Y,Z,Alpha,Beta);

tet1=invken(1,1);
tet2=invken(1,2);
tet3=invken(1,3);
tet5=invken(1,4);
tet6=invken(1,5);

handles=guidata(hObject);
thet1=tet1;
thet1=((thet1*pi)/180);
Rango_AA1=radtodeg(thet1);
if(Rango_AA1<-150 || Rango_AA1>150)
    errordlg('ERROR: Introducir una posición correcta q1!');
    return
end
Movimentos_Callback2(hObject, eventdata, handles)

thet2=tet2;
thet2=((thet2*pi)/180);
Rango_AA2=radtodeg(thet2);
if(Rango_AA2<-60 || Rango_AA2>120)
    errordlg('ERROR: Introducir una posición correcta q2!');
    return
end
Movimentos_Callback2(hObject, eventdata, handles)

thet3=tet3;
thet3=((thet3*pi)/180);
Rango_AA3=radtodeg(thet3);
if(Rango_AA3<-110 || Rango_AA3>120)
    errordlg('ERROR: Introducir una posición correcta q3!');
    return
end
Movimentos_Callback2(hObject, eventdata, handles)

thet5=tet5;
thet5=((thet5*pi)/180);
Rango_AA5=radtodeg(thet5);
if(Rango_AA5<-90 || Rango_AA5>90)
    errordlg('ERROR: Introducir una posición correcta q4!');
    return
end
Movimentos_Callback2(hObject, eventdata, handles)

thet6=tet6;
thet6=((thet6*pi)/180);
Rango_AA6=radtodeg(thet6);
if(Rango_AA6<-200 || Rango_AA6>200)
    errordlg('ERROR: Introducir una posición correcta q5!');
    return
end
Movimentos_Callback2(hObject, eventdata, handles)

Movimentos_Callback2(hObject, eventdata, handles)
gettheta22=(get(handles.inv2,'Value'));

Movimentos_Callback2(hObject, eventdata, handles)
gettheta33=(get(handles.inv3,'Value'));

Movimentos_Callback2(hObject, eventdata, handles)
gettheta55=(get(handles.inv5,'Value'));

Movimentos_Callback2(hObject, eventdata, handles)
gettheta66=(get(handles.inv6,'Value'));


% invFinal(Rango_AA1,Rango_AA2,Rango_AA3,Rango_AA5,Rango_AA6);

set(handles.theta111,'String',Rango_AA1);
set(handles.theta222,'String',Rango_AA2);
set(handles.theta333,'String',Rango_AA3);
set(handles.theta555,'String',Rango_AA5);
set(handles.theta661,'String',Rango_AA6);

AA1 = A_Matrix(Rango_AA1,      300, 0, -90);
AA2 = A_Matrix(Rango_AA2-90,   0, 250, 0);
AA3 = A_Matrix(Rango_AA3,      0, 160, 0);
AA4 = A_Matrix(Rango_AA5-90,   0, 0, -90);
AA5 = A_Matrix(Rango_AA6,      72, 0, 0);

T05 = [AA1*AA2*AA3*AA4*AA5];

set(handles.A01,'Data',AA1);
set(handles.A02,'Data',AA2);
set(handles.A03,'Data',AA3);
set(handles.A04,'Data',AA4);
set(handles.A05,'Data',AA5);
set(handles.TA,'Data',T05);



function theta11_Callback(hObject, eventdata, handles)
% hObject    handle to theta11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta11 as text
%        str2double(get(hObject,'String')) returns contents of theta11 as a double


% --- Executes during object creation, after setting all properties.
function theta11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta22_Callback(hObject, eventdata, handles)
% hObject    handle to theta22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta22 as text
%        str2double(get(hObject,'String')) returns contents of theta22 as a double


% --- Executes during object creation, after setting all properties.
function theta22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta33_Callback(hObject, eventdata, handles)
% hObject    handle to theta33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta33 as text
%        str2double(get(hObject,'String')) returns contents of theta33 as a double


% --- Executes during object creation, after setting all properties.
function theta33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta55_Callback(hObject, eventdata, handles)
% hObject    handle to theta55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta55 as text
%        str2double(get(hObject,'String')) returns contents of theta55 as a double


% --- Executes during object creation, after setting all properties.
function theta55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta66_Callback(hObject, eventdata, handles)
% hObject    handle to theta66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta66 as text
%        str2double(get(hObject,'String')) returns contents of theta66 as a double


% --- Executes during object creation, after setting all properties.
function theta66_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error1_Callback(hObject, eventdata, handles)
% hObject    handle to error1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error1 as text
%        str2double(get(hObject,'String')) returns contents of error1 as a double


% --- Executes during object creation, after setting all properties.
function error1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.A01,'Data','');
set(handles.A02,'Data','');
set(handles.A03,'Data','');
set(handles.A04,'Data','');
set(handles.A05,'Data','');
set(handles.TA,'Data','');

set(handles.theta11,'String','----');
set(handles.theta22,'String','----');
set(handles.theta33,'String','----');
set(handles.theta55,'String','----');
set(handles.theta66,'String','----');

set(handles.theta111,'String','----');
set(handles.theta222,'String','----');
set(handles.theta333,'String','----');
set(handles.theta555,'String','----');
set(handles.theta661,'String','----');


set(handles.x1,'String', '');
set(handles.y1,'String', '');
set(handles.z1,'String', '');
set(handles.alpha1,'String', '');
set(handles.beta1,'String', '');

function Movimentos_Callback2(hObject, eventdata, handles)
global   world Velocidad  Rango_AA Rango_BB  Rango_CC Rango_DD Rango_EE AA BB CC DD EE P  thet1 thet2 thet3 thet5 thet6 AntiguoAA AntiguoBB AntiguoCC AntiguoDD AntiguoEE
AA=0;
BB=0;
CC=0;
DD=0;
EE=0;
P=0;
a0=AntiguoAA;
b=AntiguoBB;
c=AntiguoCC;
d=AntiguoDD;
e=AntiguoEE;

for a=-pi:Velocidad:pi
%Retorno GradoA
if(AntiguoAA~=thet1)
if(thet1<0)
  
if(AntiguoAA>thet1)
if(a<=AntiguoAA && a>=thet1)
a0=a0-Velocidad;
Rango_AA=thet1;
qinv1=vrnode(world,'_1_DOF');%cargando nodo de VRML
qinv1.rotation=[0 1 0 a0];
set(handles.inv1,'Value',a0);
AA=round(a0*180/pi);
set(handles.inv1,'String',AA); %Escribe el valor de
vrdrawnow;
drawnow
end   
else

if(a>=AntiguoAA && a<=thet1)
a0=a;
Rango_AA=thet1;
qinv1=vrnode(world,'_1_DOF');%cargando nodo de VRML
qinv1.rotation=[0 1 0 a0];
set(handles.inv1,'Value',a0);
AA= round(a0*180/pi);
set(handles.inv1,'String',AA); %Escribe el valor de   
vrdrawnow;
drawnow
end    
end  



else
if(AntiguoAA>thet1)

if(a<=AntiguoAA && a>=thet1)
Rango_AA=thet1;
a0=a0-Velocidad;
qinv1=vrnode(world,'_1_DOF');%cargando nodo de VRML
qinv1.rotation=[0 1 0 a0];
set(handles.inv1,'Value',a0);
AA=round(a0*180/pi);
set(handles.inv1,'String',AA); %Escribe el valor de
vrdrawnow;
drawnow
end   
else

if(a<=thet1 && a>=AntiguoAA)
a0=a;
Rango_AA=thet1;
qinv1=vrnode(world,'_1_DOF');%cargando nodo de VRML
qinv1.rotation=[0 1 0 a0];
set(handles.inv1,'Value',a0);
AA= round(a0*180/pi);
set(handles.inv1,'String',AA); %Escribe el valor de   
vrdrawnow;
drawnow
end    
end
end
end

%Retorno GradoB
if(AntiguoBB~=thet2)
if(AntiguoBB>thet2)
if(a<=AntiguoBB && a>=thet2)    
Rango_BB=thet2;
b=b-Velocidad;
qinv2=vrnode(world,'_2_DOF');%cargando nodo de VRML
qinv2.rotation=[1 0 0 b];
set(handles.inv2,'Value',b);
BB=round(b*180/pi);
set(handles.inv2,'String',BB); %Escribe el valor de
vrdrawnow;
drawnow
end
else    
if(a<=thet2 && a>=AntiguoBB)
Rango_BB=thet2;
b=a;
qinv2=vrnode(world,'_2_DOF');%cargando nodo de VRML
qinv2.rotation=[1 0 0 b];
set(handles.inv2,'Value',b);
BB=round(b*180/pi);
set(handles.inv2,'String',BB); %Escribe el valor de
vrdrawnow;
drawnow
end
end
end

%GradoC
if(AntiguoCC~=thet3)
if(AntiguoCC>thet3)
if(a<=AntiguoCC && a>=thet3)    
Rango_CC=thet3;
c=c-Velocidad;
qinv3=vrnode(world,'_3_DOF');%cargando nodo de VRML
qinv3.rotation=[1 0 0 c];
set(handles.inv3,'Value',c);
CC=round(c*180/pi);
set(handles.inv3,'String',CC); %Escribe el valor de
vrdrawnow;
drawnow
end
else  
if(a<=thet3 && a>=0)
Rango_CC=thet3;
c=a;
qinv3=vrnode(world,'_3_DOF');%cargando nodo de VRML
qinv3.rotation=[1 0 0 c];
set(handles.inv3,'Value',c);
CC=round(c*180/pi);
set(handles.inv3,'String',CC); %Escribe el valor de
vrdrawnow;
drawnow
end
end
end
%Grado 5
if(AntiguoDD~=thet5)
if(AntiguoDD>thet5)
if(a<=AntiguoDD && a>=thet5)    
Rango_DD=thet5;
d=d-Velocidad;
qinv5=vrnode(world,'_4_DOF');%cargando nodo de VRML
qinv5.rotation=[1 0 0 d];
set(handles.inv5,'Value',d);
DD=round(d*180/pi);
set(handles.inv5,'String',DD); %Escribe el valor de
vrdrawnow;
drawnow
end
else    
if(a<=thet5 && a>=AntiguoBB)
Rango_DD=thet5;
d=a;
qinv5=vrnode(world,'_4_DOF');%cargando nodo de VRML
qinv5.rotation=[1 0 0 d];
set(handles.inv5,'Value',d);
DD=round(d*180/pi);
set(handles.inv5,'String',DD); %Escribe el valor de
vrdrawnow;
drawnow
end
end
end

%GRADO 6
if(AntiguoEE~=thet6)
if(AntiguoEE>thet6)
if(a<=AntiguoEE && a>=thet6)    
Rango_EE=thet6;
e=e-Velocidad;
qinv6=vrnode(world,'_5_DOF');%cargando nodo de VRML
qinv6.rotation=[0 1 0 e];
set(handles.inv6,'Value',e);
EE=round(e*200/pi);
set(handles.inv6,'String',EE); %Escribe el valor de
vrdrawnow;
drawnow
end
else 
if(a<=thet6&& a>=0)
Rango_EE=thet6;
e=a;
qinv6=vrnode(world,'_5_DOF');%cargando nodo de VRML
qinv6.rotation=[0 1 0 e];
set(handles.inv6,'Value',e);
EE=round(e*200/pi);
set(handles.inv6,'String',EE); %Escribe el valor de
vrdrawnow;
drawnow
end
end
end

end
AntiguoAA=thet1;
AntiguoBB=thet2;
AntiguoCC=thet3;
AntiguoDD=thet5;
AntiguoEE=thet6;



function theta111_Callback(hObject, eventdata, handles)
% hObject    handle to theta111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta111 as text
%        str2double(get(hObject,'String')) returns contents of theta111 as a double



% --- Executes during object creation, after setting all properties.
function theta111_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta222_Callback(hObject, eventdata, handles)
% hObject    handle to theta222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta222 as text
%        str2double(get(hObject,'String')) returns contents of theta222 as a double



% --- Executes during object creation, after setting all properties.
function theta222_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta333_Callback(hObject, eventdata, handles)
% hObject    handle to theta333 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta333 as text
%        str2double(get(hObject,'String')) returns contents of theta333 as a double



% --- Executes during object creation, after setting all properties.
function theta333_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta333 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta555_Callback(hObject, eventdata, handles)
% hObject    handle to theta555 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta555 as text
%        str2double(get(hObject,'String')) returns contents of theta555 as a double



% --- Executes during object creation, after setting all properties.
function theta555_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta555 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta661_Callback(hObject, eventdata, handles)
% hObject    handle to theta661 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta661 as text
%        str2double(get(hObject,'String')) returns contents of theta661 as a double


% --- Executes during object creation, after setting all properties.
function theta661_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta661 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Rango_AA1 Rango_AA2 Rango_AA3 Rango_AA5 Rango_AA6
J1=(get(handles.theta111,'String'));
J2=(get(handles.theta222,'String'));
J3=(get(handles.theta333,'String'));
J4='0.0';
J5=(get(handles.theta555,'String'));
J6=(get(handles.theta661,'String'));

Angulos = strcat(J1,',',J2,',',J3,',',J4,',',J5,',',J6)
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

 inicio = '1;1;EXECJ1=(';
 fin =  ')';
 P = strcat(inicio,Angulos,fin)
 fprintf(puerto_melfa,P);
 fprintf(puerto_melfa,'');
 
 fprintf(puerto_melfa,'1;1;EXECMOV J1');
 fprintf(puerto_melfa,'');



fclose(puerto_melfa);

msgbox('!El Robot se movera, ATENTO con el STOP!')

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



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit36_Callback(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit36 as text
%        str2double(get(hObject,'String')) returns contents of edit36 as a double


% --- Executes during object creation, after setting all properties.
function edit36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
