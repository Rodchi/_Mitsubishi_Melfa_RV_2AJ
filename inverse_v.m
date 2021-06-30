function varargout = inverse_v(varargin)
% INVERSE_V MATLAB code for inverse_v.fig
%      INVERSE_V, by itself, creates a new INVERSE_V or raises the existing
%      singleton*.
%
%      H = INVERSE_V returns the handle to a new INVERSE_V or the handle to
%      the existing singleton*.
%
%      INVERSE_V('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVERSE_V.M with the given input arguments.
%
%      INVERSE_V('Property','Value',...) creates a new INVERSE_V or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before inverse_v_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to inverse_v_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help inverse_v

% Last Modified by GUIDE v2.5 16-May-2018 02:36:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @inverse_v_OpeningFcn, ...
                   'gui_OutputFcn',  @inverse_v_OutputFcn, ...
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


% --- Executes just before inverse_v is made visible.
function inverse_v_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to inverse_v (see VARARGIN)

% Choose default command line output for inverse_v
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes inverse_v wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = inverse_v_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function q1tag_Callback(hObject, eventdata, handles)
% hObject    handle to q1tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q1tag as text
%        str2double(get(hObject,'String')) returns contents of q1tag as a double


% --- Executes during object creation, after setting all properties.
function q1tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q1tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q2tag_Callback(hObject, eventdata, handles)
% hObject    handle to q2tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q2tag as text
%        str2double(get(hObject,'String')) returns contents of q2tag as a double


% --- Executes during object creation, after setting all properties.
function q2tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q2tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q3tag_Callback(hObject, eventdata, handles)
% hObject    handle to q3tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q3tag as text
%        str2double(get(hObject,'String')) returns contents of q3tag as a double


% --- Executes during object creation, after setting all properties.
function q3tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q3tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q4tag_Callback(hObject, eventdata, handles)
% hObject    handle to q4tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q4tag as text
%        str2double(get(hObject,'String')) returns contents of q4tag as a double


% --- Executes during object creation, after setting all properties.
function q4tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q4tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q5tag_Callback(hObject, eventdata, handles)
% hObject    handle to q5tag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q5tag as text
%        str2double(get(hObject,'String')) returns contents of q5tag as a double


% --- Executes during object creation, after setting all properties.
function q5tag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q5tag (see GCBO)
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


% --- Executes on button press in ivcompute.
function ivcompute_Callback(hObject, eventdata, handles)
% hObject    handle to ivcompute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ivclear.
function ivclear_Callback(hObject, eventdata, handles)
% hObject    handle to ivclear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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
