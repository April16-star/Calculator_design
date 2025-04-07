function varargout = calculatorf(varargin)
% CALCULATORF MATLAB code for calculatorf.fig
%      CALCULATORF, by itself, creates a new CALCULATORF or raises the existing
%      singleton*.
%
%      H = CALCULATORF returns the handle to a new CALCULATORF or the handle to
%      the existing singleton*.
%
%      CALCULATORF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATORF.M with the given input arguments.
%
%      CALCULATORF('Property','Value',...) creates a new CALCULATORF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculatorf_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculatorf_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculatorf

% Last Modified by GUIDE v2.5 12-Feb-2025 13:25:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculatorf_OpeningFcn, ...
                   'gui_OutputFcn',  @calculatorf_OutputFcn, ...
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


% --- Executes just before calculatorf is made visible.
function calculatorf_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculatorf (see VARARGIN)

% Choose default command line output for calculatorf
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculatorf wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculatorf_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in number1.
function number1_Callback(~, ~, handles)
% hObject    handle to number1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'1');
set(handles.text1,'String',str);


% --- Executes on button press in exit.
function exit_Callback(~, ~, ~)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close calculatorf

% --- Executes on button press in reciprocal.
function reciprocal_Callback(~, ~, handles)
% hObject    handle to reciprocal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
s=str2double(str);
div=(1/s);                                 %For reciprocal
t=num2str(div);
set(handles.text1,'String',t);

% --- Executes on button press in zero.
function zero_Callback(~, ~, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'0');
set(handles.text1,'String',str);


% --- Executes on button press in number7.
function number7_Callback(~, ~, handles)
% hObject    handle to number7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'7');
set(handles.text1,'String',str);


% --- Executes on button press in number4.
function number4_Callback(~, ~, handles)
% hObject    handle to number4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'4');
set(handles.text1,'String',str);


% --- Executes on button press in number2.
function number2_Callback(~, ~, handles)
% hObject    handle to number2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'2');
set(handles.text1,'String',str);


% --- Executes on button press in equal.
function equal_Callback(~, ~, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=eval(str);
set(handles.text1,'String',str);


% --- Executes on button press in squareroot.
function squareroot_Callback(~, ~, handles)
% hObject    handle to squareroot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
s=str2double(str);
sqr=sqrt(s);                      %For sqrt.
t=num2str(sqr);
set(handles.text1,'String',t);

% --- Executes on button press in plus.
function plus_Callback(~, ~, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'+');
set(handles.text1,'String',str);


% --- Executes on button press in number8.
function number8_Callback(~, ~, handles)
% hObject    handle to number8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'8');
set(handles.text1,'String',str);


% --- Executes on button press in number5.
function number5_Callback(~, ~, handles)
% hObject    handle to number5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'5');
set(handles.text1,'String',str);


% --- Executes on button press in number3.
function number3_Callback(~, ~, handles)
% hObject    handle to number3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'3');
set(handles.text1,'String',str);


% --- Executes on button press in percentage.
function percentage_Callback(~, ~, handles)
% hObject    handle to percentage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
s=str2double(str);
percent=s/100;                           %For percentage
t=num2str(percent);
set(handles.text1,'String',t);


% --- Executes on button press in minus.
function minus_Callback(~, ~, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'-');
set(handles.text1,'String',str);


% --- Executes on button press in number9.
function number9_Callback(~, ~, handles)
% hObject    handle to number9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'9');
set(handles.text1,'String',str);


% --- Executes on button press in number6.
function number6_Callback(~, ~, handles)
% hObject    handle to number6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'6');
set(handles.text1,'String',str);



% --- Executes on button press in sign.
function sign_Callback(~, ~, handles)
% hObject    handle to sign (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
s=str2double(str);
e=-(s);                         %For +/-.
t=num2str(e);
set(handles.text1,'String',t);

% --- Executes on button press in clear.
function clear_Callback(~, ~, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text1,'String','');
set(handles.text1,'String','');

% --- Executes on button press in decimal.
function decimal_Callback(~, ~, handles)
% hObject    handle to decimal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'.');
set(handles.text1,'String',str);


% --- Executes on button press in division.
function division_Callback(~, ~, handles)
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'/');
set(handles.text1,'String',str);

% --- Executes on button press in multiply.
function multiply_Callback(~, ~, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'*');
set(handles.text1,'String',str);


function text2_Callback(~, ~, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text1 as text
%        str2double(get(hObject,'String')) returns contents of text1 as a double
str=get(handles.text1,'String');
n= length(str);
offset=1;
len=-1;
% Calculate starting index of substring:

if offset < 0
   lb= offset + n + 1;   % offset from end of string
   lb= max(lb, 1);
elseif offset == 0
   lb= 1;
else
   lb= offset;
end

% Calculate ending index of substring:
 if len >= 0                      %substr(string name,offset,len)
      ub = lb + len - 1;
   else
      ub = n + len;
   
 end
 
 % Extract substring:

outstr= str(lb : ub);
set(handles.text1,'String',outstr);

% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, ~, ~)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
