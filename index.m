function varargout = index(varargin)
% INDEX MATLAB code for index.fig
%      INDEX, by itself, creates a new INDEX or raises the existing
%      singleton*.
%
%      H = INDEX returns the handle to a new INDEX or the handle to
%      the existing singleton*.
%
%      INDEX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDEX.M with the given input arguments.
%
%      INDEX('Property','Value',...) creates a new INDEX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before index_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to index_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help index

% Last Modified by GUIDE v2.5 21-Mar-2023 14:17:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @index_OpeningFcn, ...
                   'gui_OutputFcn',  @index_OutputFcn, ...
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


% --- Executes just before index is made visible.
function index_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to index (see VARARGIN)

% Choose default command line output for index
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

visible(handles, 2);

% UIWAIT makes index wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = index_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function reel_Callback(hObject, eventdata, handles)
% hObject    handle to reel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reel as text
%        str2double(get(hObject,'String')) returns contents of reel as a double


% --- Executes during object creation, after setting all properties.
function reel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fermer.
function fermer_Callback(hObject, eventdata, handles)
% hObject    handle to fermer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;


% --- Executes on selection change in virgule.
function virgule_Callback(hObject, eventdata, handles)
% hObject    handle to virgule (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns virgule contents as cell array
%        contents{get(hObject,'Value')} returns selected item from virgule

Enable_precision = get(handles.virgule,'Value');    %Pour rendre visible ou non la case de precision

switch  Enable_precision
    case 1
        set(handles.precision, 'Visible', 'off');
        set(handles.precision_1, 'Visible', 'on');

    case 2
        set(handles.precision, 'Visible', 'on');
        set(handles.precision_1, 'Visible', 'off');
end

% --- Executes during object creation, after setting all properties.
function virgule_CreateFcn(hObject, eventdata, handles)
% hObject    handle to virgule (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: signe controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in precision.
function precision_Callback(hObject, eventdata, handles)
% hObject    handle to precision (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns precision contents as cell array
%        contents{get(hObject,'Value')} returns selected item from precision


% --- Executes during object creation, after setting all properties.
function precision_CreateFcn(hObject, eventdata, handles)
% hObject    handle to precision (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: signe controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in signe.
function signe_Callback(hObject, eventdata, handles)
% hObject    handle to signe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns signe contents as cell array
%        contents{get(hObject,'Value')} returns selected item from signe


% --- Executes during object creation, after setting all properties.
function signe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to signe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: signe controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in precision_1.
function precision_1_Callback(hObject, eventdata, handles)
% hObject    handle to precision_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns precision_1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from precision_1


% --- Executes during object creation, after setting all properties.
function precision_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to precision_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function binaire_Callback(hObject, eventdata, handles)
% hObject    handle to binaire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of binaire as text
%        str2double(get(hObject,'String')) returns contents of binaire as a double


% --- Executes during object creation, after setting all properties.
function binaire_CreateFcn(hObject, eventdata, handles)
% hObject    handle to binaire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');

end


% --- Executes on button press in entrer.
function entrer_Callback(hObject, eventdata, handles)
% hObject    handle to entrer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

virgule = get(handles.virgule, 'Value');   % Determine the selected comma: fixed or floating
precision = get(handles.precision, 'Value');   % Determine the selected precision for floating comma
precision_1 = get(handles.precision_1, 'Value');   % Determine the selected precision for fixed comma
val = str2num(get(handles.reel, 'String'));   % Get the input value

switch virgule
    case 1                              % Fixed comma
        if(precision_1 == 1)
            N = 16;                      % Fixed precision of 16 bits
        elseif (precision_1 == 2)
            N = 24;                       % Fixed precision of 16 bits
        end
        
                        %In the case where a value is larger than the max of 16 bits (An overflow),Then we return to 
                        %the negative value                                   
        if (val > ((2^15) - 1))                   
           resultat = ("Can not stock this value <<Overflow>> max = 32767");
        
        else
            if(abs(val) < 1 && abs(val) > 0)
                n = 2;
            else
                n = (round(log2(abs(val)) + 0.5) + 1);                  % Determine format: format(N, n, m)
            end
            
            m = N - n ;                                           % m is the number of bits in the mantissa
               
            bin_int0 = dec2bin(floor(abs(val)));                    % Convert to binary
            bin_int = ['0', bin_int0];
            frac = abs(val) - floor(abs(val));                      % Get the fractional part

                        % Convert the value to binary
            frac_bin = frac_to_bin(frac, (m));
            resultat = [bin_int, '.', frac_bin];
        
                        % If the input value is negative, obtain the binary representation using two's complement
            if (val < 0) 
                        % To obtain the one's complement (inverse):
                resultat = neg_bin_to_pos_bin(bin_int, frac_bin, m);
            end
        end
                        % Combine the binary parts to obtain the final result
        
    
    case 2                                                      % Floating comma
        switch precision 
            case 1
                Exponent = 8;
                Shift = 2^(Exponent - 1) - 1;                   % For signed values, this gives 127
                Mantissa = 23;
                Exposant_val = 0;  
            case 2
                Exponent = 11;
                Shift = 2^(Exponent - 1) - 1;
                Mantissa = 52;
                Exposant_val = 0;       
        end
        
                        % Get the binary representation of the integer part
        bin_int = dec2bin(floor(abs(val)));

                        % Get the binary representation of the fractional part
        frac = abs(val) - floor(abs(val));
        frac_bin = frac_to_bin(frac, (Mantissa + Exponent));
        
                        % Check the sign of the value
        if (val < 0)
            sign = '1';
        else
            sign = '0';
        end

                        % Shift the decimal point in case the integer part exceeds one bit
        Int_length = length(bin_int);                           % Length of the integer part
        frac_length = length(frac_bin);                         % Length of the fractional part
        if (Int_length > 1)
            Int_msb = bin_int(1);                               % Get the most significant bit (MSB) of the integer part
            Mantisse_val = bin_int(2);                          % Assign the value of the 2nd column to the mantissa
            Exposant_val = 1;                                   % Set the exponent value to 1
    
                        % A loop that shifts all bits except the first from bin_int to the mantissa 
                        % and increments the exponent value
            for i = 3:(Int_length)
                Mantisse_val = [Mantisse_val , bin_int(i)];
                Exposant_val = Exposant_val + 1;
            end
            Mantisse_val = [Mantisse_val, frac_bin];            % Append the fractional part to the mantissa
    
                        % If the MSB is 0, we need to perform the opposite operation, i.e., 
                        % shift the MSB of the mantissa back to bin_int until we find a 1. 
                        % In the loop, we decrement the exponent value.
    
        elseif bin_int == '0'                                   % If the integer part is 0
            Exposant_val = 0;
            for i = 1:frac_length
                if(frac_bin(i) == '1')
                    Exposant_val = Exposant_val - 1 ;
                    Mantisse_val = frac_bin(i+1);
                    for j = i+2:frac_length
                        Mantisse_val = [Mantisse_val, frac_bin(j)];
                    end
                    break;
                end
                Exposant_val = Exposant_val - 1 ;
            end
    
                            % If it's a single bit, it becomes simple
        else
            Int_msb = bin_int;
            Mantisse_val = frac_bin;
        end

                            % Extract the value of the exponent, taking into account the shift value 
                            % and the position of the decimal point
        Exposant_val = dec2bin((Shift + Exposant_val), Exponent);

                            % To redefine the number of bits for the mantissa, add '0's at the end to reach 
                            % the specified number of bits
        Mantisse_val_end = Mantisse_val(1);        
        for i = 2 : Mantissa
            Mantisse_val_end = [ Mantisse_val_end, Mantisse_val(i)];
        end

        resultat = [sign,' ',Exposant_val,' ',Mantisse_val_end];
end
                        % Update the GUI with the resulting binary number
set(handles.binaire,'String',(resultat));




%*************************************************%




% --- Executes on button press in bin_to_reel.
function bin_to_reel_Callback(hObject, eventdata, handles)
% hObject    handle to bin_to_reel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles, 1);

% --- Executes on button press in reel_to_bin.
function reel_to_bin_Callback(hObject, eventdata, handles)
% hObject    handle to reel_to_bin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
visible(handles, 2);



%********************************************************%




function binaire_2_Callback(hObject, eventdata, handles)
% hObject    handle to binaire_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of binaire_2 as text
%        str2double(get(hObject,'String')) returns contents of binaire_2 as a double


% --- Executes on button press in fermer_2.
function fermer_2_Callback(hObject, eventdata, handles)
% hObject    handle to fermer_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close gcf;

% --- Executes during object creation, after setting all properties.
function binaire_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to binaire_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reel_2_Callback(hObject, eventdata, handles)
% hObject    handle to reel_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reel_2 as text
%        str2double(get(hObject,'String')) returns contents of reel_2 as a double


% --- Executes during object creation, after setting all properties.
function reel_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reel_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in entrer_2.
function entrer_2_Callback(hObject, eventdata, handles)
% hObject    handle to entrer_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

bin_val = get(handles.binaire_2, 'String');
bin_val_length = length(bin_val);
over = 0;
switch bin_val_length                                                       % The length of the entered value
        
        case 32
                Exposant = 8;
                Mantisse = 23;
                resultat =  bin_float_to_dec(Exposant, Mantisse,bin_val);   % Call the function bin_float_to_dec, which converts bin_val to decimal
        case 64
                Exposant = 11;
                Mantisse = 52;
                resultat = bin_float_to_dec(Exposant, Mantisse,bin_val);  
        otherwise
                
                if  ((bin_val_length == 17) || (bin_val_length == 16))                                % This means that it is for a fixed point with precision 16. The plus 1 corresponds to the decimal point
                    resultat = bin_fixed_to_dec(bin_val, 17);
                   
                elseif  ((bin_val_length == 25) ||  (bin_val_length == 24))                                                       % This means that it is for a fixed point with precision 16. The plus 1 corresponds to the decimal point
                    resultat = bin_fixed_to_dec(bin_val, 25);
                   
                else
                    resultat = "Vous avez depassé ou n'avez pas mis le nombre de bit exact";
                    over = 1;
                end
           
end
 if(over == 0)
    resultat = sprintf('%.15f', resultat);
    resultat = num2str(resultat, '%.15f');
 end
 
set(handles.reel_2,'String',resultat);     



%*************************************************************%
