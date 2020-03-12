function varargout = ForwardVelocitiesGUI(varargin)
% FORWARDVELOCITIESGUI MATLAB code for ForwardVelocitiesGUI.fig
%      FORWARDVELOCITIESGUI, by itself, creates a new FORWARDVELOCITIESGUI or raises the existing
%      singleton*.
%
%      H = FORWARDVELOCITIESGUI returns the handle to a new FORWARDVELOCITIESGUI or the handle to
%      the existing singleton*.
%
%      FORWARDVELOCITIESGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORWARDVELOCITIESGUI.M with the given input arguments.
%
%      FORWARDVELOCITIESGUI('Property','Value',...) creates a new FORWARDVELOCITIESGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ForwardVelocitiesGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ForwardVelocitiesGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ForwardVelocitiesGUI

% Last Modified by GUIDE v2.5 13-May-2018 19:38:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ForwardVelocitiesGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ForwardVelocitiesGUI_OutputFcn, ...
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


% --- Executes just before ForwardVelocitiesGUI is made visible.
function ForwardVelocitiesGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ForwardVelocitiesGUI (see VARARGIN)

% Choose default command line output for ForwardVelocitiesGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ForwardVelocitiesGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ForwardVelocitiesGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function q11_Callback(hObject, eventdata, handles)
% hObject    handle to q11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q11 as text
%        str2double(get(hObject,'String')) returns contents of q11 as a double


% --- Executes during object creation, after setting all properties.
function q11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q22_Callback(hObject, eventdata, handles)
% hObject    handle to q22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q22 as text
%        str2double(get(hObject,'String')) returns contents of q22 as a double


% --- Executes during object creation, after setting all properties.
function q22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q33_Callback(hObject, eventdata, handles)
% hObject    handle to q33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q33 as text
%        str2double(get(hObject,'String')) returns contents of q33 as a double


% --- Executes during object creation, after setting all properties.
function q33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q44_Callback(hObject, eventdata, handles)
% hObject    handle to q44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q44 as text
%        str2double(get(hObject,'String')) returns contents of q44 as a double


% --- Executes during object creation, after setting all properties.
function q44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q55_Callback(hObject, eventdata, handles)
% hObject    handle to q55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q55 as text
%        str2double(get(hObject,'String')) returns contents of q55 as a double


% --- Executes during object creation, after setting all properties.
function q55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vx1_Callback(hObject, eventdata, handles)
% hObject    handle to vx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vx1 as text
%        str2double(get(hObject,'String')) returns contents of vx1 as a double


% --- Executes during object creation, after setting all properties.
function vx1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vy1_Callback(hObject, eventdata, handles)
% hObject    handle to vy1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vy1 as text
%        str2double(get(hObject,'String')) returns contents of vy1 as a double


% --- Executes during object creation, after setting all properties.
function vy1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vy1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vz1_Callback(hObject, eventdata, handles)
% hObject    handle to vz1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vz1 as text
%        str2double(get(hObject,'String')) returns contents of vz1 as a double


% --- Executes during object creation, after setting all properties.
function vz1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vz1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wx1_Callback(hObject, eventdata, handles)
% hObject    handle to wx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wx1 as text
%        str2double(get(hObject,'String')) returns contents of wx1 as a double


% --- Executes during object creation, after setting all properties.
function wx1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wy1_Callback(hObject, eventdata, handles)
% hObject    handle to wy1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wy1 as text
%        str2double(get(hObject,'String')) returns contents of wy1 as a double


% --- Executes during object creation, after setting all properties.
function wy1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wy1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wz1_Callback(hObject, eventdata, handles)
% hObject    handle to wz1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wz1 as text
%        str2double(get(hObject,'String')) returns contents of wz1 as a double


% --- Executes during object creation, after setting all properties.
function wz1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wz1 (see GCBO)
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

A1 = str2double(get(handles.q11,'String'));
A2 = str2double(get(handles.q22,'String'));
A3 = str2double(get(handles.q33,'String'));
A4 = str2double(get(handles.q44,'String'));
A5 = str2double(get(handles.q55,'String'));

Ap1 = str2double(get(handles.qp1,'String'));
Ap2 = str2double(get(handles.qp2,'String'));
Ap3 = str2double(get(handles.qp3,'String'));
Ap4 = str2double(get(handles.qp4,'String'));
Ap5 = str2double(get(handles.qp5,'String'));

AA1 = A_Matrix(A1,      (5*pi)/3, 0, -(pi/2));
AA2 = A_Matrix(A2-(pi/2),   0, (25*pi)/18, 0);
AA3 = A_Matrix(A3,      0, (8*pi)/9, 0);
AA4 = A_Matrix(A4-(pi/2),   0, 0, -(pi/2));
AA5 = A_Matrix(A5,      (2*pi)/5, 0, 0);

T02=AA1*AA2;
T03=T02*AA3;
T04=T03*AA4;
T05=T04*AA5;

O0 = [0;0;0]; %position (1,4) in Matrix T05
O11 = AA1(1,4);
O12 =AA1(2,4);
O13=AA1(3,4);
O1=[O11;O12;O13];
O21 = T02(1,4);
O22 =T02(2,4);
O23=T02(3,4);
O2=[O21;O22;O23];
O31 = T03(1,4);
O32 =T03(2,4);
O33=T03(3,4);
O3=[O31;O32;O33];
O41 = T04(1,4);
O42 =T04(2,4);
O43=T04(3,4);
O4=[O41;O42;O43];
O51 = T05(1,4);
O52 =T05(2,4);
O53=T05(3,4);
O5=[O51;O52;O53];

Z0 = [0;0;1]; %position (1,4) in Matrix T05
Z11 = AA1(1,3);
Z12 =AA1(2,3);
Z13=AA1(3,3);
Z1=[Z11;Z12;Z13];
Z21 = T02(1,3);
Z22 =T02(2,3);
Z23=T02(3,3);
Z2=[Z21;Z22;Z23];
Z31 = T03(1,3);
Z32 =T03(2,3);
Z33=T03(3,3);
Z3=[Z31;Z32;Z33];
Z41 = T04(1,3);
Z42 =T04(2,3);
Z43=T04(3,3);
Z4=[Z41;Z42;Z43];


% O50=O5-O0;
J1= [(cross(Z0,(O5-O0))); Z0];
J2= [(cross(Z1,(O5-O1))); Z1];
J3= [(cross(Z2,(O5-O2))); Z2];
J4= [(cross(Z3,(O5-O3))); Z3];
J5= [(cross(Z4,(O5-O4))); Z4];


J=[J1,J2,J3,J4,J5];

J6=[Ap1;Ap2;Ap3;Ap4;Ap5];

J11=J(1,1);
J12=J(1,2);
J13=J(1,3);
J14=J(1,4);
J15=J(1,5);
J111=[J11,J12,J13,J14,J15]*J6;

J21=J(2,1);
J22=J(2,2);
J23=J(2,3);
J24=J(2,4);
J25=J(2,5);
J222=[J21,J22,J23,J24,J25]*J6;

J31=J(3,1);
J32=J(3,2);
J33=J(3,3);
J34=J(3,4);
J35=J(3,5);
J333=[J31,J32,J33,J34,J35]*J6;

J41=J(4,1);
J42=J(4,2);
J43=J(4,3);
J44=J(4,4);
J45=J(4,5);
J444=[J41,J42,J43,J44,J45]*J6;

J51=J(5,1);
J52=J(5,2);
J53=J(5,3);
J54=J(5,4);
J55=J(5,5);
J555=[J51,J52,J53,J54,J55]*J6;

J61=J(6,1);
J62=J(6,2);
J63=J(6,3);
J64=J(6,4);
J65=J(6,5);
J661=[J61,J62,J63,J64,J65]*J6;

set(handles.jacobian,'Data',J);

vx11=J111;
vy11=J222;
vz11=J333;
wx11=J444;
wy11=J555;
wz11=J661;


set(handles.vx1,'String',vx11);
set(handles.vy1,'String',vy11);
set(handles.vz1,'String',vz11);
set(handles.wx1,'String',wx11);
set(handles.wy1,'String',wy11);
set(handles.wz1,'String',wz11);



function qp1_Callback(hObject, eventdata, handles)
% hObject    handle to qp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qp1 as text
%        str2double(get(hObject,'String')) returns contents of qp1 as a double


% --- Executes during object creation, after setting all properties.
function qp1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qp2_Callback(hObject, eventdata, handles)
% hObject    handle to qp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qp2 as text
%        str2double(get(hObject,'String')) returns contents of qp2 as a double


% --- Executes during object creation, after setting all properties.
function qp2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qp3_Callback(hObject, eventdata, handles)
% hObject    handle to qp3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qp3 as text
%        str2double(get(hObject,'String')) returns contents of qp3 as a double


% --- Executes during object creation, after setting all properties.
function qp3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qp3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qp4_Callback(hObject, eventdata, handles)
% hObject    handle to qp4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qp4 as text
%        str2double(get(hObject,'String')) returns contents of qp4 as a double


% --- Executes during object creation, after setting all properties.
function qp4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qp4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qp5_Callback(hObject, eventdata, handles)
% hObject    handle to qp5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qp5 as text
%        str2double(get(hObject,'String')) returns contents of qp5 as a double


% --- Executes during object creation, after setting all properties.
function qp5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qp5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qp6_Callback(hObject, eventdata, handles)
% hObject    handle to qp6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qp6 as text
%        str2double(get(hObject,'String')) returns contents of qp6 as a double


% --- Executes during object creation, after setting all properties.
function qp6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qp6 (see GCBO)
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
set(handles.vx1,'String','----');
set(handles.vy1,'String','----');
set(handles.vz1,'String','----');
set(handles.wx1,'String','----');
set(handles.wy1,'String','----');
set(handles.wz1,'String','----');

set(handles.jacobian,'Data','');

set(handles.q11,'String', '');
set(handles.q22,'String', '');
set(handles.q33,'String', '');
set(handles.q44,'String', '');
set(handles.q55,'String', '');

set(handles.qp1,'String', '');
set(handles.qp2,'String', '');
set(handles.qp3,'String', '');
set(handles.qp4,'String', '');
set(handles.qp5,'String', '');
