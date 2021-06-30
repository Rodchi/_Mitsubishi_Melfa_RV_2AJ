function varargout = forward_v(varargin)
% FORWARD_V MATLAB code for forward_v.fig
%      FORWARD_V, by itself, creates a new FORWARD_V or raises the existing
%      singleton*.
%
%      H = FORWARD_V returns the handle to a new FORWARD_V or the handle to
%      the existing singleton*.
%
%      FORWARD_V('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORWARD_V.M with the given input arguments.
%
%      FORWARD_V('Property','Value',...) creates a new FORWARD_V or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before forward_v_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to forward_v_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help forward_v

% Last Modified by GUIDE v2.5 16-May-2018 01:36:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @forward_v_OpeningFcn, ...
                   'gui_OutputFcn',  @forward_v_OutputFcn, ...
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


% --- Executes just before forward_v is made visible.
function forward_v_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to forward_v (see VARARGIN)

% Choose default command line output for forward_v
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes forward_v wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = forward_v_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function qtheta1_Callback(hObject, eventdata, handles)
% hObject    handle to qtheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qtheta1 as text
%        str2double(get(hObject,'String')) returns contents of qtheta1 as a double


% --- Executes during object creation, after setting all properties.
function qtheta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qtheta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qtheta2_Callback(hObject, eventdata, handles)
% hObject    handle to qtheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qtheta2 as text
%        str2double(get(hObject,'String')) returns contents of qtheta2 as a double


% --- Executes during object creation, after setting all properties.
function qtheta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qtheta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qtheta3_Callback(hObject, eventdata, handles)
% hObject    handle to qtheta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qtheta3 as text
%        str2double(get(hObject,'String')) returns contents of qtheta3 as a double


% --- Executes during object creation, after setting all properties.
function qtheta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qtheta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qtheta4_Callback(hObject, eventdata, handles)
% hObject    handle to qtheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qtheta4 as text
%        str2double(get(hObject,'String')) returns contents of qtheta4 as a double


% --- Executes during object creation, after setting all properties.
function qtheta4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qtheta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qtheta5_Callback(hObject, eventdata, handles)
% hObject    handle to qtheta5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qtheta5 as text
%        str2double(get(hObject,'String')) returns contents of qtheta5 as a double


% --- Executes during object creation, after setting all properties.
function qtheta5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qtheta5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Vxtag_Callback(hObject, eventdata, handles)
% hObject    handle to Vxtag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Vxtag as text
%        str2double(get(hObject,'String')) returns contents of Vxtag as a double


% --- Executes during object creation, after setting all properties.
function Vxtag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vxtag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Vytag_Callback(hObject, eventdata, handles)
% hObject    handle to Vytag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Vytag as text
%        str2double(get(hObject,'String')) returns contents of Vytag as a double


% --- Executes during object creation, after setting all properties.
function Vytag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vytag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Vztag_Callback(hObject, eventdata, handles)
% hObject    handle to Vztag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Vztag as text
%        str2double(get(hObject,'String')) returns contents of Vztag as a double


% --- Executes during object creation, after setting all properties.
function Vztag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vztag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Wxtag_Callback(hObject, eventdata, handles)
% hObject    handle to Wxtag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Wxtag as text
%        str2double(get(hObject,'String')) returns contents of Wxtag as a double


% --- Executes during object creation, after setting all properties.
function Wxtag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Wxtag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Wytag_Callback(hObject, eventdata, handles)
% hObject    handle to Wytag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Wytag as text
%        str2double(get(hObject,'String')) returns contents of Wytag as a double


% --- Executes during object creation, after setting all properties.
function Wytag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Wytag (see GCBO)
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
forwardvelocities(handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
forwardvelocities(handles);




function Wztag_Callback(hObject, eventdata, handles)
% hObject    handle to Wztag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Wztag as text
%        str2double(get(hObject,'String')) returns contents of Wztag as a double


% --- Executes during object creation, after setting all properties.
function Wztag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Wztag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
