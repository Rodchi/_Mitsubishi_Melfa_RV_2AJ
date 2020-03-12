function varargout = GeometricFormsGUI(varargin)
% GEOMETRICFORMSGUI MATLAB code for GeometricFormsGUI.fig
%      GEOMETRICFORMSGUI, by itself, creates a new GEOMETRICFORMSGUI or raises the existing
%      singleton*.
%
%      H = GEOMETRICFORMSGUI returns the handle to a new GEOMETRICFORMSGUI or the handle to
%      the existing singleton*.
%
%      GEOMETRICFORMSGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GEOMETRICFORMSGUI.M with the given input arguments.
%
%      GEOMETRICFORMSGUI('Property','Value',...) creates a new GEOMETRICFORMSGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GeometricFormsGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GeometricFormsGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GeometricFormsGUI

% Last Modified by GUIDE v2.5 20-May-2018 16:36:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GeometricFormsGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GeometricFormsGUI_OutputFcn, ...
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


% --- Executes just before GeometricFormsGUI is made visible.
function GeometricFormsGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GeometricFormsGUI (see VARARGIN)

% Choose default command line output for GeometricFormsGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GeometricFormsGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GeometricFormsGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in circulo.
function circulo_Callback(hObject, eventdata, handles)
% hObject    handle to circulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Radio 
handles=guidata(hObject);
Radio=str2double(get(handles.radio,'String'));
display(Radio);
[P1,P2,P3]=CirculoPos(Radio);
disp(P1)
disp(P2)
disp(P3)
% Puntos = strcat(P1,',',P2,',',P3,',',P5,',',P6)
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

%  inicio = '1;1;EXECP1=(';
%  fin =  ',0.00)(6,0)';
%  P = strcat(inicio,Puntos,fin)
 fprintf(puerto_melfa,P1);
 fprintf(puerto_melfa,'');
 

fprintf(puerto_melfa,P2);
 fprintf(puerto_melfa,'');

fprintf(puerto_melfa,P3);
 fprintf(puerto_melfa,'');
 
 fprintf(puerto_melfa,'1;1;EXECMVC P1, P2, P3');
 fprintf(puerto_melfa,'');
 pause(5);
% 
%  fprintf(puerto_melfa,'1;1;EXECMOV P2');
%  fprintf(puerto_melfa,'');
%  pause(5);
% 
%  fprintf(puerto_melfa,'1;1;EXECMOV P3');
%  fprintf(puerto_melfa,'');
%  pause(5);

fclose(puerto_melfa);
msgbox('¡Archivo POS del Circulo creado!');


function radio_Callback(hObject, eventdata, handles)
% hObject    handle to radio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of radio as text
%        str2double(get(hObject,'String')) returns contents of radio as a double


% --- Executes during object creation, after setting all properties.
function radio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in triangulo.
function triangulo_Callback(hObject, eventdata, handles)
% hObject    handle to triangulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global L
handles=guidata(hObject);
L=str2double(get(handles.largo,'String'));
display(L);
[P1,P2,P3,P4]=trianguloPos(L);
disp(P1)
disp(P2)
disp(P3)
disp(P4)
% % Puntos = strcat(P1,',',P2,',',P3,',',P5,',',P6)
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

%  inicio = '1;1;EXECP1=(';
%  fin =  ',0.00)(6,0)';
%  P = strcat(inicio,Puntos,fin)
 fprintf(puerto_melfa,P1);
 fprintf(puerto_melfa,'');
 

fprintf(puerto_melfa,P2);
 fprintf(puerto_melfa,'');

fprintf(puerto_melfa,P3);
 fprintf(puerto_melfa,'');
 
 fprintf(puerto_melfa,P4);
 fprintf(puerto_melfa,'');
 
 fprintf(puerto_melfa,'1;1;EXECMVS P1');
 fprintf(puerto_melfa,'');
 pause(2);

 fprintf(puerto_melfa,'1;1;EXECMVS P2');
 fprintf(puerto_melfa,'');
 pause(2);

 fprintf(puerto_melfa,'1;1;EXECMVS P3');
 fprintf(puerto_melfa,'');
 pause(2);
 
  fprintf(puerto_melfa,'1;1;EXECMVS P4');
 fprintf(puerto_melfa,'');
 pause(2);

fclose(puerto_melfa);
msgbox('¡Archivo POS del Triangulo creado!');


function largo_Callback(hObject, eventdata, handles)
% hObject    handle to largo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of largo as text
%        str2double(get(hObject,'String')) returns contents of largo as a double


% --- Executes during object creation, after setting all properties.
function largo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to largo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rectangulo.
function rectangulo_Callback(hObject, eventdata, handles)
% hObject    handle to rectangulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global H W
handles=guidata(hObject);
H=str2double(get(handles.height,'String'));
display(H);
W=str2double(get(handles.width,'String'));
display(W);
[P1,P2,P3,P4]=RectanguloPos(H,W);
disp(P1)
disp(P2)
disp(P3)
disp(P4)
% % Puntos = strcat(P1,',',P2,',',P3,',',P5,',',P6)
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

%  inicio = '1;1;EXECP1=(';
%  fin =  ',0.00)(6,0)';
%  P = strcat(inicio,Puntos,fin)
 fprintf(puerto_melfa,P1);
 fprintf(puerto_melfa,'');
 

fprintf(puerto_melfa,P2);
 fprintf(puerto_melfa,'');

fprintf(puerto_melfa,P3);
 fprintf(puerto_melfa,'');
 
 fprintf(puerto_melfa,P4);
 fprintf(puerto_melfa,'');
 
 fprintf(puerto_melfa,'1;1;EXECMVS P1');
 fprintf(puerto_melfa,'');
 pause(2);

 fprintf(puerto_melfa,'1;1;EXECMVS P2');
 fprintf(puerto_melfa,'');
 pause(2);

 fprintf(puerto_melfa,'1;1;EXECMVS P3');
 fprintf(puerto_melfa,'');
 pause(2);
 
  fprintf(puerto_melfa,'1;1;EXECMVS P4');
 fprintf(puerto_melfa,'');
 pause(2);

fclose(puerto_melfa);
msgbox('¡Archivo POS del Rectangulo creado!');

function width_Callback(hObject, eventdata, handles)
% hObject    handle to width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of width as text
%        str2double(get(hObject,'String')) returns contents of width as a double


% --- Executes during object creation, after setting all properties.
function width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function height_Callback(hObject, eventdata, handles)
% hObject    handle to height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of height as text
%        str2double(get(hObject,'String')) returns contents of height as a double


% --- Executes during object creation, after setting all properties.
function height_CreateFcn(hObject, eventdata, handles)
% hObject    handle to height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clearcirc.
function clearcirc_Callback(hObject, eventdata, handles)
% hObject    handle to clearcirc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radio,'String','');

% --- Executes on button press in cleartriang.
function cleartriang_Callback(hObject, eventdata, handles)
% hObject    handle to cleartriang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.largo,'String','');

% --- Executes on button press in clearrect.
function clearrect_Callback(hObject, eventdata, handles)
% hObject    handle to clearrect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.height,'String','');
set(handles.width,'String','');
