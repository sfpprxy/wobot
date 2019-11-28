Unit obj;

Interface

Uses
  Comobj,Variants;

Type
  dmsoft=Class(TObject)
    Private
      obj : Variant;
    Public
      Constructor Create();
      Destructor Destroy();Override;

      Function Ver():WideString;Virtual;
      Function SetPath(path:WideString):Integer;Virtual;
      Function Ocr(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):WideString;Virtual;
      Function FindStr(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function GetResultCount(str:WideString):Integer;Virtual;
      Function GetResultPos(str:WideString;index:Integer;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function StrStr(s:WideString;str:WideString):Integer;Virtual;
      Function SendCommand(cmd:WideString):Integer;Virtual;
      Function UseDict(index:Integer):Integer;Virtual;
      Function GetBasePath():WideString;Virtual;
      Function SetDictPwd(pwd:WideString):Integer;Virtual;
      Function OcrInFile(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;color:WideString;sim:Double):WideString;Virtual;
      Function Capture(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString):Integer;Virtual;
      Function KeyPress(vk:Integer):Integer;Virtual;
      Function KeyDown(vk:Integer):Integer;Virtual;
      Function KeyUp(vk:Integer):Integer;Virtual;
      Function LeftClick():Integer;Virtual;
      Function RightClick():Integer;Virtual;
      Function MiddleClick():Integer;Virtual;
      Function LeftDoubleClick():Integer;Virtual;
      Function LeftDown():Integer;Virtual;
      Function LeftUp():Integer;Virtual;
      Function RightDown():Integer;Virtual;
      Function RightUp():Integer;Virtual;
      Function MoveTo(x:Integer;y:Integer):Integer;Virtual;
      Function MoveR(rx:Integer;ry:Integer):Integer;Virtual;
      Function GetColor(x:Integer;y:Integer):WideString;Virtual;
      Function GetColorBGR(x:Integer;y:Integer):WideString;Virtual;
      Function RGB2BGR(rgb_color:WideString):WideString;Virtual;
      Function BGR2RGB(bgr_color:WideString):WideString;Virtual;
      Function UnBindWindow():Integer;Virtual;
      Function CmpColor(x:Integer;y:Integer;color:WideString;sim:Double):Integer;Virtual;
      Function ClientToScreen(hwnd:Integer;var x:OleVariant;var y:OleVariant):Integer;Virtual;
      Function ScreenToClient(hwnd:Integer;var x:OleVariant;var y:OleVariant):Integer;Virtual;
      Function ShowScrMsg(x1:Integer;y1:Integer;x2:Integer;y2:Integer;msg:WideString;color:WideString):Integer;Virtual;
      Function SetMinRowGap(row_gap:Integer):Integer;Virtual;
      Function SetMinColGap(col_gap:Integer):Integer;Virtual;
      Function FindColor(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function FindColorEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function SetWordLineHeight(line_height:Integer):Integer;Virtual;
      Function SetWordGap(word_gap:Integer):Integer;Virtual;
      Function SetRowGapNoDict(row_gap:Integer):Integer;Virtual;
      Function SetColGapNoDict(col_gap:Integer):Integer;Virtual;
      Function SetWordLineHeightNoDict(line_height:Integer):Integer;Virtual;
      Function SetWordGapNoDict(word_gap:Integer):Integer;Virtual;
      Function GetWordResultCount(str:WideString):Integer;Virtual;
      Function GetWordResultPos(str:WideString;index:Integer;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function GetWordResultStr(str:WideString;index:Integer):WideString;Virtual;
      Function GetWords(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):WideString;Virtual;
      Function GetWordsNoDict(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString):WideString;Virtual;
      Function SetShowErrorMsg(show:Integer):Integer;Virtual;
      Function GetClientSize(hwnd:Integer;out width:OleVariant;out height:OleVariant):Integer;Virtual;
      Function MoveWindow(hwnd:Integer;x:Integer;y:Integer):Integer;Virtual;
      Function GetColorHSV(x:Integer;y:Integer):WideString;Virtual;
      Function GetAveRGB(x1:Integer;y1:Integer;x2:Integer;y2:Integer):WideString;Virtual;
      Function GetAveHSV(x1:Integer;y1:Integer;x2:Integer;y2:Integer):WideString;Virtual;
      Function GetForegroundWindow():Integer;Virtual;
      Function GetForegroundFocus():Integer;Virtual;
      Function GetMousePointWindow():Integer;Virtual;
      Function GetPointWindow(x:Integer;y:Integer):Integer;Virtual;
      Function EnumWindow(parent:Integer;title:WideString;class_name:WideString;filter:Integer):WideString;Virtual;
      Function GetWindowState(hwnd:Integer;flag:Integer):Integer;Virtual;
      Function GetWindow(hwnd:Integer;flag:Integer):Integer;Virtual;
      Function GetSpecialWindow(flag:Integer):Integer;Virtual;
      Function SetWindowText(hwnd:Integer;text:WideString):Integer;Virtual;
      Function SetWindowSize(hwnd:Integer;width:Integer;height:Integer):Integer;Virtual;
      Function GetWindowRect(hwnd:Integer;out x1:OleVariant;out y1:OleVariant;out x2:OleVariant;out y2:OleVariant):Integer;Virtual;
      Function GetWindowTitle(hwnd:Integer):WideString;Virtual;
      Function GetWindowClass(hwnd:Integer):WideString;Virtual;
      Function SetWindowState(hwnd:Integer;flag:Integer):Integer;Virtual;
      Function CreateFoobarRect(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer):Integer;Virtual;
      Function CreateFoobarRoundRect(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer;rw:Integer;rh:Integer):Integer;Virtual;
      Function CreateFoobarEllipse(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer):Integer;Virtual;
      Function CreateFoobarCustom(hwnd:Integer;x:Integer;y:Integer;pic:WideString;trans_color:WideString;sim:Double):Integer;Virtual;
      Function FoobarFillRect(hwnd:Integer;x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString):Integer;Virtual;
      Function FoobarDrawText(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer;text:WideString;color:WideString;align:Integer):Integer;Virtual;
      Function FoobarDrawPic(hwnd:Integer;x:Integer;y:Integer;pic:WideString;trans_color:WideString):Integer;Virtual;
      Function FoobarUpdate(hwnd:Integer):Integer;Virtual;
      Function FoobarLock(hwnd:Integer):Integer;Virtual;
      Function FoobarUnlock(hwnd:Integer):Integer;Virtual;
      Function FoobarSetFont(hwnd:Integer;font_name:WideString;size:Integer;flag:Integer):Integer;Virtual;
      Function FoobarTextRect(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer):Integer;Virtual;
      Function FoobarPrintText(hwnd:Integer;text:WideString;color:WideString):Integer;Virtual;
      Function FoobarClearText(hwnd:Integer):Integer;Virtual;
      Function FoobarTextLineGap(hwnd:Integer;gap:Integer):Integer;Virtual;
      Function Play(file_name:WideString):Integer;Virtual;
      Function FaqCapture(x1:Integer;y1:Integer;x2:Integer;y2:Integer;quality:Integer;delay:Integer;time:Integer):Integer;Virtual;
      Function FaqRelease(handle:Integer):Integer;Virtual;
      Function FaqSend(server:WideString;handle:Integer;request_type:Integer;time_out:Integer):WideString;Virtual;
      Function Beep(fre:Integer;delay:Integer):Integer;Virtual;
      Function FoobarClose(hwnd:Integer):Integer;Virtual;
      Function MoveDD(dx:Integer;dy:Integer):Integer;Virtual;
      Function FaqGetSize(handle:Integer):Integer;Virtual;
      Function LoadPic(pic_name:WideString):Integer;Virtual;
      Function FreePic(pic_name:WideString):Integer;Virtual;
      Function GetScreenData(x1:Integer;y1:Integer;x2:Integer;y2:Integer):Integer;Virtual;
      Function FreeScreenData(handle:Integer):Integer;Virtual;
      Function WheelUp():Integer;Virtual;
      Function WheelDown():Integer;Virtual;
      Function SetMouseDelay(tpe:WideString;delay:Integer):Integer;Virtual;
      Function SetKeypadDelay(tpe:WideString;delay:Integer):Integer;Virtual;
      Function GetEnv(index:Integer;name:WideString):WideString;Virtual;
      Function SetEnv(index:Integer;name:WideString;value:WideString):Integer;Virtual;
      Function SendString(hwnd:Integer;str:WideString):Integer;Virtual;
      Function DelEnv(index:Integer;name:WideString):Integer;Virtual;
      Function GetPath():WideString;Virtual;
      Function SetDict(index:Integer;dict_name:WideString):Integer;Virtual;
      Function FindPic(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function FindPicEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function SetClientSize(hwnd:Integer;width:Integer;height:Integer):Integer;Virtual;
      Function ReadInt(hwnd:Integer;addr:WideString;tpe:Integer):Int64;Virtual;
      Function ReadFloat(hwnd:Integer;addr:WideString):Single;Virtual;
      Function ReadDouble(hwnd:Integer;addr:WideString):Double;Virtual;
      Function FindInt(hwnd:Integer;addr_range:WideString;int_value_min:Int64;int_value_max:Int64;tpe:Integer):WideString;Virtual;
      Function FindFloat(hwnd:Integer;addr_range:WideString;float_value_min:Single;float_value_max:Single):WideString;Virtual;
      Function FindDouble(hwnd:Integer;addr_range:WideString;double_value_min:Double;double_value_max:Double):WideString;Virtual;
      Function FindString(hwnd:Integer;addr_range:WideString;string_value:WideString;tpe:Integer):WideString;Virtual;
      Function GetModuleBaseAddr(hwnd:Integer;module_name:WideString):Int64;Virtual;
      Function MoveToEx(x:Integer;y:Integer;w:Integer;h:Integer):WideString;Virtual;
      Function MatchPicName(pic_name:WideString):WideString;Virtual;
      Function AddDict(index:Integer;dict_info:WideString):Integer;Virtual;
      Function EnterCri():Integer;Virtual;
      Function LeaveCri():Integer;Virtual;
      Function WriteInt(hwnd:Integer;addr:WideString;tpe:Integer;v:Int64):Integer;Virtual;
      Function WriteFloat(hwnd:Integer;addr:WideString;v:Single):Integer;Virtual;
      Function WriteDouble(hwnd:Integer;addr:WideString;v:Double):Integer;Virtual;
      Function WriteString(hwnd:Integer;addr:WideString;tpe:Integer;v:WideString):Integer;Virtual;
      Function AsmAdd(asm_ins:WideString):Integer;Virtual;
      Function AsmClear():Integer;Virtual;
      Function AsmCall(hwnd:Integer;mode:Integer):Int64;Virtual;
      Function FindMultiColor(x1:Integer;y1:Integer;x2:Integer;y2:Integer;first_color:WideString;offset_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function FindMultiColorEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;first_color:WideString;offset_color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function Assemble(base_addr:Int64;is_64bit:Integer):WideString;Virtual;
      Function DisAssemble(asm_code:WideString;base_addr:Int64;is_64bit:Integer):WideString;Virtual;
      Function SetWindowTransparent(hwnd:Integer;v:Integer):Integer;Virtual;
      Function ReadData(hwnd:Integer;addr:WideString;length:Integer):WideString;Virtual;
      Function WriteData(hwnd:Integer;addr:WideString;data:WideString):Integer;Virtual;
      Function FindData(hwnd:Integer;addr_range:WideString;data:WideString):WideString;Virtual;
      Function SetPicPwd(pwd:WideString):Integer;Virtual;
      Function Log(info:WideString):Integer;Virtual;
      Function FindStrE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;Virtual;
      Function FindColorE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function FindPicE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function FindMultiColorE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;first_color:WideString;offset_color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function SetExactOcr(exact_ocr:Integer):Integer;Virtual;
      Function ReadString(hwnd:Integer;addr:WideString;tpe:Integer;length:Integer):WideString;Virtual;
      Function FoobarTextPrintDir(hwnd:Integer;dir:Integer):Integer;Virtual;
      Function OcrEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):WideString;Virtual;
      Function SetDisplayInput(mode:WideString):Integer;Virtual;
      Function GetTime():Integer;Virtual;
      Function GetScreenWidth():Integer;Virtual;
      Function GetScreenHeight():Integer;Virtual;
      Function BindWindowEx(hwnd:Integer;display:WideString;mouse:WideString;keypad:WideString;public_desc:WideString;mode:Integer):Integer;Virtual;
      Function GetDiskSerial():WideString;Virtual;
      Function Md5(str:WideString):WideString;Virtual;
      Function GetMac():WideString;Virtual;
      Function ActiveInputMethod(hwnd:Integer;id:WideString):Integer;Virtual;
      Function CheckInputMethod(hwnd:Integer;id:WideString):Integer;Virtual;
      Function FindInputMethod(id:WideString):Integer;Virtual;
      Function GetCursorPos(out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function BindWindow(hwnd:Integer;display:WideString;mouse:WideString;keypad:WideString;mode:Integer):Integer;Virtual;
      Function FindWindow(class_name:WideString;title_name:WideString):Integer;Virtual;
      Function GetScreenDepth():Integer;Virtual;
      Function SetScreen(width:Integer;height:Integer;depth:Integer):Integer;Virtual;
      Function ExitOs(tpe:Integer):Integer;Virtual;
      Function GetDir(tpe:Integer):WideString;Virtual;
      Function GetOsType():Integer;Virtual;
      Function FindWindowEx(parent:Integer;class_name:WideString;title_name:WideString):Integer;Virtual;
      Function SetExportDict(index:Integer;dict_name:WideString):Integer;Virtual;
      Function GetCursorShape():WideString;Virtual;
      Function DownCpu(rate:Integer):Integer;Virtual;
      Function GetCursorSpot():WideString;Virtual;
      Function SendString2(hwnd:Integer;str:WideString):Integer;Virtual;
      Function FaqPost(server:WideString;handle:Integer;request_type:Integer;time_out:Integer):Integer;Virtual;
      Function FaqFetch():WideString;Virtual;
      Function FetchWord(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;word:WideString):WideString;Virtual;
      Function CaptureJpg(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString;quality:Integer):Integer;Virtual;
      Function FindStrWithFont(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;font_name:WideString;font_size:Integer;flag:Integer;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function FindStrWithFontE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;font_name:WideString;font_size:Integer;flag:Integer):WideString;Virtual;
      Function FindStrWithFontEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;font_name:WideString;font_size:Integer;flag:Integer):WideString;Virtual;
      Function GetDictInfo(str:WideString;font_name:WideString;font_size:Integer;flag:Integer):WideString;Virtual;
      Function SaveDict(index:Integer;file_name:WideString):Integer;Virtual;
      Function GetWindowProcessId(hwnd:Integer):Integer;Virtual;
      Function GetWindowProcessPath(hwnd:Integer):WideString;Virtual;
      Function LockInput(locks:Integer):Integer;Virtual;
      Function GetPicSize(pic_name:WideString):WideString;Virtual;
      Function GetID():Integer;Virtual;
      Function CapturePng(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString):Integer;Virtual;
      Function CaptureGif(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString;delay:Integer;time:Integer):Integer;Virtual;
      Function ImageToBmp(pic_name:WideString;bmp_name:WideString):Integer;Virtual;
      Function FindStrFast(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function FindStrFastEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;Virtual;
      Function FindStrFastE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;Virtual;
      Function EnableDisplayDebug(enable_debug:Integer):Integer;Virtual;
      Function CapturePre(file_name:WideString):Integer;Virtual;
      Function RegEx(code:WideString;Ver:WideString;ip:WideString):Integer;Virtual;
      Function GetMachineCode():WideString;Virtual;
      Function SetClipboard(data:WideString):Integer;Virtual;
      Function GetClipboard():WideString;Virtual;
      Function GetNowDict():Integer;Virtual;
      Function Is64Bit():Integer;Virtual;
      Function GetColorNum(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):Integer;Virtual;
      Function EnumWindowByProcess(process_name:WideString;title:WideString;class_name:WideString;filter:Integer):WideString;Virtual;
      Function GetDictCount(index:Integer):Integer;Virtual;
      Function GetLastError():Integer;Virtual;
      Function GetNetTime():WideString;Virtual;
      Function EnableGetColorByCapture(en:Integer):Integer;Virtual;
      Function CheckUAC():Integer;Virtual;
      Function SetUAC(uac:Integer):Integer;Virtual;
      Function DisableFontSmooth():Integer;Virtual;
      Function CheckFontSmooth():Integer;Virtual;
      Function SetDisplayAcceler(level:Integer):Integer;Virtual;
      Function FindWindowByProcess(process_name:WideString;class_name:WideString;title_name:WideString):Integer;Virtual;
      Function FindWindowByProcessId(process_id:Integer;class_name:WideString;title_name:WideString):Integer;Virtual;
      Function ReadIni(section:WideString;key:WideString;file_name:WideString):WideString;Virtual;
      Function WriteIni(section:WideString;key:WideString;v:WideString;file_name:WideString):Integer;Virtual;
      Function RunApp(path:WideString;mode:Integer):Integer;Virtual;
      Function delay(mis:Integer):Integer;Virtual;
      Function FindWindowSuper(spec1:WideString;flag1:Integer;type1:Integer;spec2:WideString;flag2:Integer;type2:Integer):Integer;Virtual;
      Function ExcludePos(all_pos:WideString;tpe:Integer;x1:Integer;y1:Integer;x2:Integer;y2:Integer):WideString;Virtual;
      Function FindNearestPos(all_pos:WideString;tpe:Integer;x:Integer;y:Integer):WideString;Virtual;
      Function SortPosDistance(all_pos:WideString;tpe:Integer;x:Integer;y:Integer):WideString;Virtual;
      Function FindPicMem(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_info:WideString;delta_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function FindPicMemEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_info:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function FindPicMemE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_info:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function AppendPicAddr(pic_info:WideString;addr:Integer;size:Integer):WideString;Virtual;
      Function WriteFile(file_name:WideString;content:WideString):Integer;Virtual;
      Function Stop(id:Integer):Integer;Virtual;
      Function SetDictMem(index:Integer;addr:Integer;size:Integer):Integer;Virtual;
      Function GetNetTimeSafe():WideString;Virtual;
      Function ForceUnBindWindow(hwnd:Integer):Integer;Virtual;
      Function ReadIniPwd(section:WideString;key:WideString;file_name:WideString;pwd:WideString):WideString;Virtual;
      Function WriteIniPwd(section:WideString;key:WideString;v:WideString;file_name:WideString;pwd:WideString):Integer;Virtual;
      Function DecodeFile(file_name:WideString;pwd:WideString):Integer;Virtual;
      Function KeyDownChar(key_str:WideString):Integer;Virtual;
      Function KeyUpChar(key_str:WideString):Integer;Virtual;
      Function KeyPressChar(key_str:WideString):Integer;Virtual;
      Function KeyPressStr(key_str:WideString;delay:Integer):Integer;Virtual;
      Function EnableKeypadPatch(en:Integer):Integer;Virtual;
      Function EnableKeypadSync(en:Integer;time_out:Integer):Integer;Virtual;
      Function EnableMouseSync(en:Integer;time_out:Integer):Integer;Virtual;
      Function DmGuard(en:Integer;tpe:WideString):Integer;Virtual;
      Function FaqCaptureFromFile(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString;quality:Integer):Integer;Virtual;
      Function FindIntEx(hwnd:Integer;addr_range:WideString;int_value_min:Int64;int_value_max:Int64;tpe:Integer;steps:Integer;multi_thread:Integer;mode:Integer):WideString;Virtual;
      Function FindFloatEx(hwnd:Integer;addr_range:WideString;float_value_min:Single;float_value_max:Single;steps:Integer;multi_thread:Integer;mode:Integer):WideString;Virtual;
      Function FindDoubleEx(hwnd:Integer;addr_range:WideString;double_value_min:Double;double_value_max:Double;steps:Integer;multi_thread:Integer;mode:Integer):WideString;Virtual;
      Function FindStringEx(hwnd:Integer;addr_range:WideString;string_value:WideString;tpe:Integer;steps:Integer;multi_thread:Integer;mode:Integer):WideString;Virtual;
      Function FindDataEx(hwnd:Integer;addr_range:WideString;data:WideString;steps:Integer;multi_thread:Integer;mode:Integer):WideString;Virtual;
      Function EnableRealMouse(en:Integer;mousedelay:Integer;mousestep:Integer):Integer;Virtual;
      Function EnableRealKeypad(en:Integer):Integer;Virtual;
      Function SendStringIme(str:WideString):Integer;Virtual;
      Function FoobarDrawLine(hwnd:Integer;x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;style:Integer;width:Integer):Integer;Virtual;
      Function FindStrEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;Virtual;
      Function IsBind(hwnd:Integer):Integer;Virtual;
      Function SetDisplayDelay(t:Integer):Integer;Virtual;
      Function GetDmCount():Integer;Virtual;
      Function DisableScreenSave():Integer;Virtual;
      Function DisablePowerSave():Integer;Virtual;
      Function SetMemoryHwndAsProcessId(en:Integer):Integer;Virtual;
      Function FindShape(x1:Integer;y1:Integer;x2:Integer;y2:Integer;offset_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function FindShapeE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;offset_color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function FindShapeEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;offset_color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function FindStrS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;out x:OleVariant;out y:OleVariant):WideString;Virtual;
      Function FindStrExS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;Virtual;
      Function FindStrFastS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;out x:OleVariant;out y:OleVariant):WideString;Virtual;
      Function FindStrFastExS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;Virtual;
      Function FindPicS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):WideString;Virtual;
      Function FindPicExS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;Virtual;
      Function ClearDict(index:Integer):Integer;Virtual;
      Function GetMachineCodeNoMac():WideString;Virtual;
      Function GetClientRect(hwnd:Integer;out x1:OleVariant;out y1:OleVariant;out x2:OleVariant;out y2:OleVariant):Integer;Virtual;
      Function EnableFakeActive(en:Integer):Integer;Virtual;
      Function GetScreenDataBmp(x1:Integer;y1:Integer;x2:Integer;y2:Integer;out data:OleVariant;out size:OleVariant):Integer;Virtual;
      Function EncodeFile(file_name:WideString;pwd:WideString):Integer;Virtual;
      Function GetCursorShapeEx(tpe:Integer):WideString;Virtual;
      Function FaqCancel():Integer;Virtual;
      Function IntToData(int_value:Int64;tpe:Integer):WideString;Virtual;
      Function FloatToData(float_value:Single):WideString;Virtual;
      Function DoubleToData(double_value:Double):WideString;Virtual;
      Function StringToData(string_value:WideString;tpe:Integer):WideString;Virtual;
      Function SetMemoryFindResultToFile(file_name:WideString):Integer;Virtual;
      Function EnableBind(en:Integer):Integer;Virtual;
      Function SetSimMode(mode:Integer):Integer;Virtual;
      Function LockMouseRect(x1:Integer;y1:Integer;x2:Integer;y2:Integer):Integer;Virtual;
      Function SendPaste(hwnd:Integer):Integer;Virtual;
      Function IsDisplayDead(x1:Integer;y1:Integer;x2:Integer;y2:Integer;t:Integer):Integer;Virtual;
      Function GetKeyState(vk:Integer):Integer;Virtual;
      Function CopyFile(src_file:WideString;dst_file:WideString;over:Integer):Integer;Virtual;
      Function IsFileExist(file_name:WideString):Integer;Virtual;
      Function DeleteFile(file_name:WideString):Integer;Virtual;
      Function MoveFile(src_file:WideString;dst_file:WideString):Integer;Virtual;
      Function CreateFolder(folder_name:WideString):Integer;Virtual;
      Function DeleteFolder(folder_name:WideString):Integer;Virtual;
      Function GetFileLength(file_name:WideString):Integer;Virtual;
      Function ReadFile(file_name:WideString):WideString;Virtual;
      Function WaitKey(key_code:Integer;time_out:Integer):Integer;Virtual;
      Function DeleteIni(section:WideString;key:WideString;file_name:WideString):Integer;Virtual;
      Function DeleteIniPwd(section:WideString;key:WideString;file_name:WideString;pwd:WideString):Integer;Virtual;
      Function EnableSpeedDx(en:Integer):Integer;Virtual;
      Function EnableIme(en:Integer):Integer;Virtual;
      Function Reg(code:WideString;Ver:WideString):Integer;Virtual;
      Function SelectFile():WideString;Virtual;
      Function SelectDirectory():WideString;Virtual;
      Function LockDisplay(locks:Integer):Integer;Virtual;
      Function FoobarSetSave(hwnd:Integer;file_name:WideString;en:Integer;header:WideString):Integer;Virtual;
      Function EnumWindowSuper(spec1:WideString;flag1:Integer;type1:Integer;spec2:WideString;flag2:Integer;type2:Integer;sort:Integer):WideString;Virtual;
      Function DownloadFile(url:WideString;save_file:WideString;timeout:Integer):Integer;Virtual;
      Function EnableKeypadMsg(en:Integer):Integer;Virtual;
      Function EnableMouseMsg(en:Integer):Integer;Virtual;
      Function RegNoMac(code:WideString;Ver:WideString):Integer;Virtual;
      Function RegExNoMac(code:WideString;Ver:WideString;ip:WideString):Integer;Virtual;
      Function SetEnumWindowDelay(delay:Integer):Integer;Virtual;
      Function FindMulColor(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):Integer;Virtual;
      Function GetDict(index:Integer;font_index:Integer):WideString;Virtual;
      Function GetBindWindow():Integer;Virtual;
      Function FoobarStartGif(hwnd:Integer;x:Integer;y:Integer;pic_name:WideString;repeat_limit:Integer;delay:Integer):Integer;Virtual;
      Function FoobarStopGif(hwnd:Integer;x:Integer;y:Integer;pic_name:WideString):Integer;Virtual;
      Function FreeProcessMemory(hwnd:Integer):Integer;Virtual;
      Function ReadFileData(file_name:WideString;start_pos:Integer;end_pos:Integer):WideString;Virtual;
      Function VirtualAllocEx(hwnd:Integer;addr:Int64;size:Integer;tpe:Integer):Int64;Virtual;
      Function VirtualFreeEx(hwnd:Integer;addr:Int64):Integer;Virtual;
      Function GetCommandLine(hwnd:Integer):WideString;Virtual;
      Function TerminateProcess(pid:Integer):Integer;Virtual;
      Function GetNetTimeByIp(ip:WideString):WideString;Virtual;
      Function EnumProcess(name:WideString):WideString;Virtual;
      Function GetProcessInfo(pid:Integer):WideString;Virtual;
      Function ReadIntAddr(hwnd:Integer;addr:Int64;tpe:Integer):Int64;Virtual;
      Function ReadDataAddr(hwnd:Integer;addr:Int64;length:Integer):WideString;Virtual;
      Function ReadDoubleAddr(hwnd:Integer;addr:Int64):Double;Virtual;
      Function ReadFloatAddr(hwnd:Integer;addr:Int64):Single;Virtual;
      Function ReadStringAddr(hwnd:Integer;addr:Int64;tpe:Integer;length:Integer):WideString;Virtual;
      Function WriteDataAddr(hwnd:Integer;addr:Int64;data:WideString):Integer;Virtual;
      Function WriteDoubleAddr(hwnd:Integer;addr:Int64;v:Double):Integer;Virtual;
      Function WriteFloatAddr(hwnd:Integer;addr:Int64;v:Single):Integer;Virtual;
      Function WriteIntAddr(hwnd:Integer;addr:Int64;tpe:Integer;v:Int64):Integer;Virtual;
      Function WriteStringAddr(hwnd:Integer;addr:Int64;tpe:Integer;v:WideString):Integer;Virtual;
      Function Delays(min_s:Integer;max_s:Integer):Integer;Virtual;
      Function FindColorBlock(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;count:Integer;width:Integer;height:Integer;out x:OleVariant;out y:OleVariant):Integer;Virtual;
      Function FindColorBlockEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;count:Integer;width:Integer;height:Integer):WideString;Virtual;
      Function OpenProcess(pid:Integer):Integer;Virtual;
      Function EnumIniSection(file_name:WideString):WideString;Virtual;
      Function EnumIniSectionPwd(file_name:WideString;pwd:WideString):WideString;Virtual;
      Function EnumIniKey(section:WideString;file_name:WideString):WideString;Virtual;
      Function EnumIniKeyPwd(section:WideString;file_name:WideString;pwd:WideString):WideString;Virtual;
      Function SwitchBindWindow(hwnd:Integer):Integer;Virtual;
      Function InitCri():Integer;Virtual;
      Function SendStringIme2(hwnd:Integer;str:WideString;mode:Integer):Integer;Virtual;
      Function EnumWindowByProcessId(pid:Integer;title:WideString;class_name:WideString;filter:Integer):WideString;Virtual;
      Function GetDisplayInfo():WideString;Virtual;
      Function EnableFontSmooth():Integer;Virtual;
      Function OcrExOne(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):WideString;Virtual;
      Function SetAero(en:Integer):Integer;Virtual;
      Function FoobarSetTrans(hwnd:Integer;trans:Integer;color:WideString;sim:Double):Integer;Virtual;
      Function EnablePicCache(en:Integer):Integer;Virtual;
      Function FaqIsPosted():Integer;Virtual;
      Function LoadPicByte(addr:Integer;size:Integer;name:WideString):Integer;Virtual;
      Function MiddleDown():Integer;Virtual;
      Function MiddleUp():Integer;Virtual;
      Function FaqCaptureString(str:WideString):Integer;Virtual;
      Function VirtualProtectEx(hwnd:Integer;addr:Int64;size:Integer;tpe:Integer;old_protect:Integer):Integer;Virtual;
      Function SetMouseSpeed(speed:Integer):Integer;Virtual;
      Function GetMouseSpeed():Integer;Virtual;
      Function EnableMouseAccuracy(en:Integer):Integer;Virtual;
      Function SetExcludeRegion(tpe:Integer;info:WideString):Integer;Virtual;
      Function EnableShareDict(en:Integer):Integer;Virtual;
      Function DisableCloseDisplayAndSleep():Integer;Virtual;
      Function Int64ToInt32(v:Int64):Integer;Virtual;
      Function GetLocale():Integer;Virtual;
      Function SetLocale():Integer;Virtual;
      Function ReadDataToBin(hwnd:Integer;addr:WideString;length:Integer):Integer;Virtual;
      Function WriteDataFromBin(hwnd:Integer;addr:WideString;data:Integer;length:Integer):Integer;Virtual;
      Function ReadDataAddrToBin(hwnd:Integer;addr:Int64;length:Integer):Integer;Virtual;
      Function WriteDataAddrFromBin(hwnd:Integer;addr:Int64;data:Integer;length:Integer):Integer;Virtual;
      Function SetParam64ToPointer():Integer;Virtual;
      Function GetDPI():Integer;Virtual;
      Function SetDisplayRefreshDelay(t:Integer):Integer;Virtual;
      Function IsFolderExist(folder:WideString):Integer;Virtual;
      Function GetCpuType():Integer;Virtual;
      Function ReleaseRef():Integer;Virtual;
      Function SetExitThread(en:Integer):Integer;Virtual;
      Function GetFps():Integer;Virtual;
      Function VirtualQueryEx(hwnd:Integer;addr:Int64;pmbi:Integer):WideString;Virtual;
      Function AsmCallEx(hwnd:Integer;mode:Integer;base_addr:WideString):Int64;Virtual;
      Function GetRemoteApiAddress(hwnd:Integer;base_addr:Int64;fun_name:WideString):Int64;Virtual;
      Function ExecuteCmd(cmd:WideString;current_dir:WideString;time_out:Integer):WideString;Virtual;
      Function SpeedNormalGraphic(en:Integer):Integer;Virtual;
      Function UnLoadDriver():Integer;Virtual;
      Function GetOsBuildNumber():Integer;Virtual;
      Function HackSpeed(rate:Double):Integer;Virtual;
      Function GetRealPath(path:WideString):WideString;Virtual;
      Function ShowTaskBarIcon(hwnd:Integer;is_show:Integer):Integer;Virtual;
  End;

Implementation

Constructor dmsoft.Create();
Begin
  obj := CreateOleObject('dm.dmsoft');
End;

Destructor dmsoft.Destroy();
Begin
  obj := Unassigned;
End;

Function dmsoft.Ver():WideString;
Begin
  Result := obj.Ver;
End;

Function dmsoft.SetPath(path:WideString):Integer;
Begin
  Result := obj.SetPath(path);
End;

Function dmsoft.Ocr(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):WideString;
Begin
  Result := obj.Ocr(x1,y1,x2,y2,color,sim);
End;

Function dmsoft.FindStr(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.FindStr(x1,y1,x2,y2,str,color,sim,x,y);
End;

Function dmsoft.GetResultCount(str:WideString):Integer;
Begin
  Result := obj.GetResultCount(str);
End;

Function dmsoft.GetResultPos(str:WideString;index:Integer;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.GetResultPos(str,index,x,y);
End;

Function dmsoft.StrStr(s:WideString;str:WideString):Integer;
Begin
  Result := obj.StrStr(s,str);
End;

Function dmsoft.SendCommand(cmd:WideString):Integer;
Begin
  Result := obj.SendCommand(cmd);
End;

Function dmsoft.UseDict(index:Integer):Integer;
Begin
  Result := obj.UseDict(index);
End;

Function dmsoft.GetBasePath():WideString;
Begin
  Result := obj.GetBasePath;
End;

Function dmsoft.SetDictPwd(pwd:WideString):Integer;
Begin
  Result := obj.SetDictPwd(pwd);
End;

Function dmsoft.OcrInFile(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;color:WideString;sim:Double):WideString;
Begin
  Result := obj.OcrInFile(x1,y1,x2,y2,pic_name,color,sim);
End;

Function dmsoft.Capture(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString):Integer;
Begin
  Result := obj.Capture(x1,y1,x2,y2,file_name);
End;

Function dmsoft.KeyPress(vk:Integer):Integer;
Begin
  Result := obj.KeyPress(vk);
End;

Function dmsoft.KeyDown(vk:Integer):Integer;
Begin
  Result := obj.KeyDown(vk);
End;

Function dmsoft.KeyUp(vk:Integer):Integer;
Begin
  Result := obj.KeyUp(vk);
End;

Function dmsoft.LeftClick():Integer;
Begin
  Result := obj.LeftClick;
End;

Function dmsoft.RightClick():Integer;
Begin
  Result := obj.RightClick;
End;

Function dmsoft.MiddleClick():Integer;
Begin
  Result := obj.MiddleClick;
End;

Function dmsoft.LeftDoubleClick():Integer;
Begin
  Result := obj.LeftDoubleClick;
End;

Function dmsoft.LeftDown():Integer;
Begin
  Result := obj.LeftDown;
End;

Function dmsoft.LeftUp():Integer;
Begin
  Result := obj.LeftUp;
End;

Function dmsoft.RightDown():Integer;
Begin
  Result := obj.RightDown;
End;

Function dmsoft.RightUp():Integer;
Begin
  Result := obj.RightUp;
End;

Function dmsoft.MoveTo(x:Integer;y:Integer):Integer;
Begin
  Result := obj.MoveTo(x,y);
End;

Function dmsoft.MoveR(rx:Integer;ry:Integer):Integer;
Begin
  Result := obj.MoveR(rx,ry);
End;

Function dmsoft.GetColor(x:Integer;y:Integer):WideString;
Begin
  Result := obj.GetColor(x,y);
End;

Function dmsoft.GetColorBGR(x:Integer;y:Integer):WideString;
Begin
  Result := obj.GetColorBGR(x,y);
End;

Function dmsoft.RGB2BGR(rgb_color:WideString):WideString;
Begin
  Result := obj.RGB2BGR(rgb_color);
End;

Function dmsoft.BGR2RGB(bgr_color:WideString):WideString;
Begin
  Result := obj.BGR2RGB(bgr_color);
End;

Function dmsoft.UnBindWindow():Integer;
Begin
  Result := obj.UnBindWindow;
End;

Function dmsoft.CmpColor(x:Integer;y:Integer;color:WideString;sim:Double):Integer;
Begin
  Result := obj.CmpColor(x,y,color,sim);
End;

Function dmsoft.ClientToScreen(hwnd:Integer;var x:OleVariant;var y:OleVariant):Integer;
Begin
  Result := obj.ClientToScreen(hwnd,x,y);
End;

Function dmsoft.ScreenToClient(hwnd:Integer;var x:OleVariant;var y:OleVariant):Integer;
Begin
  Result := obj.ScreenToClient(hwnd,x,y);
End;

Function dmsoft.ShowScrMsg(x1:Integer;y1:Integer;x2:Integer;y2:Integer;msg:WideString;color:WideString):Integer;
Begin
  Result := obj.ShowScrMsg(x1,y1,x2,y2,msg,color);
End;

Function dmsoft.SetMinRowGap(row_gap:Integer):Integer;
Begin
  Result := obj.SetMinRowGap(row_gap);
End;

Function dmsoft.SetMinColGap(col_gap:Integer):Integer;
Begin
  Result := obj.SetMinColGap(col_gap);
End;

Function dmsoft.FindColor(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.FindColor(x1,y1,x2,y2,color,sim,dir,x,y);
End;

Function dmsoft.FindColorEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindColorEx(x1,y1,x2,y2,color,sim,dir);
End;

Function dmsoft.SetWordLineHeight(line_height:Integer):Integer;
Begin
  Result := obj.SetWordLineHeight(line_height);
End;

Function dmsoft.SetWordGap(word_gap:Integer):Integer;
Begin
  Result := obj.SetWordGap(word_gap);
End;

Function dmsoft.SetRowGapNoDict(row_gap:Integer):Integer;
Begin
  Result := obj.SetRowGapNoDict(row_gap);
End;

Function dmsoft.SetColGapNoDict(col_gap:Integer):Integer;
Begin
  Result := obj.SetColGapNoDict(col_gap);
End;

Function dmsoft.SetWordLineHeightNoDict(line_height:Integer):Integer;
Begin
  Result := obj.SetWordLineHeightNoDict(line_height);
End;

Function dmsoft.SetWordGapNoDict(word_gap:Integer):Integer;
Begin
  Result := obj.SetWordGapNoDict(word_gap);
End;

Function dmsoft.GetWordResultCount(str:WideString):Integer;
Begin
  Result := obj.GetWordResultCount(str);
End;

Function dmsoft.GetWordResultPos(str:WideString;index:Integer;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.GetWordResultPos(str,index,x,y);
End;

Function dmsoft.GetWordResultStr(str:WideString;index:Integer):WideString;
Begin
  Result := obj.GetWordResultStr(str,index);
End;

Function dmsoft.GetWords(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):WideString;
Begin
  Result := obj.GetWords(x1,y1,x2,y2,color,sim);
End;

Function dmsoft.GetWordsNoDict(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString):WideString;
Begin
  Result := obj.GetWordsNoDict(x1,y1,x2,y2,color);
End;

Function dmsoft.SetShowErrorMsg(show:Integer):Integer;
Begin
  Result := obj.SetShowErrorMsg(show);
End;

Function dmsoft.GetClientSize(hwnd:Integer;out width:OleVariant;out height:OleVariant):Integer;
Begin
  Result := obj.GetClientSize(hwnd,width,height);
End;

Function dmsoft.MoveWindow(hwnd:Integer;x:Integer;y:Integer):Integer;
Begin
  Result := obj.MoveWindow(hwnd,x,y);
End;

Function dmsoft.GetColorHSV(x:Integer;y:Integer):WideString;
Begin
  Result := obj.GetColorHSV(x,y);
End;

Function dmsoft.GetAveRGB(x1:Integer;y1:Integer;x2:Integer;y2:Integer):WideString;
Begin
  Result := obj.GetAveRGB(x1,y1,x2,y2);
End;

Function dmsoft.GetAveHSV(x1:Integer;y1:Integer;x2:Integer;y2:Integer):WideString;
Begin
  Result := obj.GetAveHSV(x1,y1,x2,y2);
End;

Function dmsoft.GetForegroundWindow():Integer;
Begin
  Result := obj.GetForegroundWindow;
End;

Function dmsoft.GetForegroundFocus():Integer;
Begin
  Result := obj.GetForegroundFocus;
End;

Function dmsoft.GetMousePointWindow():Integer;
Begin
  Result := obj.GetMousePointWindow;
End;

Function dmsoft.GetPointWindow(x:Integer;y:Integer):Integer;
Begin
  Result := obj.GetPointWindow(x,y);
End;

Function dmsoft.EnumWindow(parent:Integer;title:WideString;class_name:WideString;filter:Integer):WideString;
Begin
  Result := obj.EnumWindow(parent,title,class_name,filter);
End;

Function dmsoft.GetWindowState(hwnd:Integer;flag:Integer):Integer;
Begin
  Result := obj.GetWindowState(hwnd,flag);
End;

Function dmsoft.GetWindow(hwnd:Integer;flag:Integer):Integer;
Begin
  Result := obj.GetWindow(hwnd,flag);
End;

Function dmsoft.GetSpecialWindow(flag:Integer):Integer;
Begin
  Result := obj.GetSpecialWindow(flag);
End;

Function dmsoft.SetWindowText(hwnd:Integer;text:WideString):Integer;
Begin
  Result := obj.SetWindowText(hwnd,text);
End;

Function dmsoft.SetWindowSize(hwnd:Integer;width:Integer;height:Integer):Integer;
Begin
  Result := obj.SetWindowSize(hwnd,width,height);
End;

Function dmsoft.GetWindowRect(hwnd:Integer;out x1:OleVariant;out y1:OleVariant;out x2:OleVariant;out y2:OleVariant):Integer;
Begin
  Result := obj.GetWindowRect(hwnd,x1,y1,x2,y2);
End;

Function dmsoft.GetWindowTitle(hwnd:Integer):WideString;
Begin
  Result := obj.GetWindowTitle(hwnd);
End;

Function dmsoft.GetWindowClass(hwnd:Integer):WideString;
Begin
  Result := obj.GetWindowClass(hwnd);
End;

Function dmsoft.SetWindowState(hwnd:Integer;flag:Integer):Integer;
Begin
  Result := obj.SetWindowState(hwnd,flag);
End;

Function dmsoft.CreateFoobarRect(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer):Integer;
Begin
  Result := obj.CreateFoobarRect(hwnd,x,y,w,h);
End;

Function dmsoft.CreateFoobarRoundRect(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer;rw:Integer;rh:Integer):Integer;
Begin
  Result := obj.CreateFoobarRoundRect(hwnd,x,y,w,h,rw,rh);
End;

Function dmsoft.CreateFoobarEllipse(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer):Integer;
Begin
  Result := obj.CreateFoobarEllipse(hwnd,x,y,w,h);
End;

Function dmsoft.CreateFoobarCustom(hwnd:Integer;x:Integer;y:Integer;pic:WideString;trans_color:WideString;sim:Double):Integer;
Begin
  Result := obj.CreateFoobarCustom(hwnd,x,y,pic,trans_color,sim);
End;

Function dmsoft.FoobarFillRect(hwnd:Integer;x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString):Integer;
Begin
  Result := obj.FoobarFillRect(hwnd,x1,y1,x2,y2,color);
End;

Function dmsoft.FoobarDrawText(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer;text:WideString;color:WideString;align:Integer):Integer;
Begin
  Result := obj.FoobarDrawText(hwnd,x,y,w,h,text,color,align);
End;

Function dmsoft.FoobarDrawPic(hwnd:Integer;x:Integer;y:Integer;pic:WideString;trans_color:WideString):Integer;
Begin
  Result := obj.FoobarDrawPic(hwnd,x,y,pic,trans_color);
End;

Function dmsoft.FoobarUpdate(hwnd:Integer):Integer;
Begin
  Result := obj.FoobarUpdate(hwnd);
End;

Function dmsoft.FoobarLock(hwnd:Integer):Integer;
Begin
  Result := obj.FoobarLock(hwnd);
End;

Function dmsoft.FoobarUnlock(hwnd:Integer):Integer;
Begin
  Result := obj.FoobarUnlock(hwnd);
End;

Function dmsoft.FoobarSetFont(hwnd:Integer;font_name:WideString;size:Integer;flag:Integer):Integer;
Begin
  Result := obj.FoobarSetFont(hwnd,font_name,size,flag);
End;

Function dmsoft.FoobarTextRect(hwnd:Integer;x:Integer;y:Integer;w:Integer;h:Integer):Integer;
Begin
  Result := obj.FoobarTextRect(hwnd,x,y,w,h);
End;

Function dmsoft.FoobarPrintText(hwnd:Integer;text:WideString;color:WideString):Integer;
Begin
  Result := obj.FoobarPrintText(hwnd,text,color);
End;

Function dmsoft.FoobarClearText(hwnd:Integer):Integer;
Begin
  Result := obj.FoobarClearText(hwnd);
End;

Function dmsoft.FoobarTextLineGap(hwnd:Integer;gap:Integer):Integer;
Begin
  Result := obj.FoobarTextLineGap(hwnd,gap);
End;

Function dmsoft.Play(file_name:WideString):Integer;
Begin
  Result := obj.Play(file_name);
End;

Function dmsoft.FaqCapture(x1:Integer;y1:Integer;x2:Integer;y2:Integer;quality:Integer;delay:Integer;time:Integer):Integer;
Begin
  Result := obj.FaqCapture(x1,y1,x2,y2,quality,delay,time);
End;

Function dmsoft.FaqRelease(handle:Integer):Integer;
Begin
  Result := obj.FaqRelease(handle);
End;

Function dmsoft.FaqSend(server:WideString;handle:Integer;request_type:Integer;time_out:Integer):WideString;
Begin
  Result := obj.FaqSend(server,handle,request_type,time_out);
End;

Function dmsoft.Beep(fre:Integer;delay:Integer):Integer;
Begin
  Result := obj.Beep(fre,delay);
End;

Function dmsoft.FoobarClose(hwnd:Integer):Integer;
Begin
  Result := obj.FoobarClose(hwnd);
End;

Function dmsoft.MoveDD(dx:Integer;dy:Integer):Integer;
Begin
  Result := obj.MoveDD(dx,dy);
End;

Function dmsoft.FaqGetSize(handle:Integer):Integer;
Begin
  Result := obj.FaqGetSize(handle);
End;

Function dmsoft.LoadPic(pic_name:WideString):Integer;
Begin
  Result := obj.LoadPic(pic_name);
End;

Function dmsoft.FreePic(pic_name:WideString):Integer;
Begin
  Result := obj.FreePic(pic_name);
End;

Function dmsoft.GetScreenData(x1:Integer;y1:Integer;x2:Integer;y2:Integer):Integer;
Begin
  Result := obj.GetScreenData(x1,y1,x2,y2);
End;

Function dmsoft.FreeScreenData(handle:Integer):Integer;
Begin
  Result := obj.FreeScreenData(handle);
End;

Function dmsoft.WheelUp():Integer;
Begin
  Result := obj.WheelUp;
End;

Function dmsoft.WheelDown():Integer;
Begin
  Result := obj.WheelDown;
End;

Function dmsoft.SetMouseDelay(tpe:WideString;delay:Integer):Integer;
Begin
  Result := obj.SetMouseDelay(tpe,delay);
End;

Function dmsoft.SetKeypadDelay(tpe:WideString;delay:Integer):Integer;
Begin
  Result := obj.SetKeypadDelay(tpe,delay);
End;

Function dmsoft.GetEnv(index:Integer;name:WideString):WideString;
Begin
  Result := obj.GetEnv(index,name);
End;

Function dmsoft.SetEnv(index:Integer;name:WideString;value:WideString):Integer;
Begin
  Result := obj.SetEnv(index,name,value);
End;

Function dmsoft.SendString(hwnd:Integer;str:WideString):Integer;
Begin
  Result := obj.SendString(hwnd,str);
End;

Function dmsoft.DelEnv(index:Integer;name:WideString):Integer;
Begin
  Result := obj.DelEnv(index,name);
End;

Function dmsoft.GetPath():WideString;
Begin
  Result := obj.GetPath;
End;

Function dmsoft.SetDict(index:Integer;dict_name:WideString):Integer;
Begin
  Result := obj.SetDict(index,dict_name);
End;

Function dmsoft.FindPic(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.FindPic(x1,y1,x2,y2,pic_name,delta_color,sim,dir,x,y);
End;

Function dmsoft.FindPicEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindPicEx(x1,y1,x2,y2,pic_name,delta_color,sim,dir);
End;

Function dmsoft.SetClientSize(hwnd:Integer;width:Integer;height:Integer):Integer;
Begin
  Result := obj.SetClientSize(hwnd,width,height);
End;

Function dmsoft.ReadInt(hwnd:Integer;addr:WideString;tpe:Integer):Int64;
Begin
  Result := obj.ReadInt(hwnd,addr,tpe);
End;

Function dmsoft.ReadFloat(hwnd:Integer;addr:WideString):Single;
Begin
  Result := obj.ReadFloat(hwnd,addr);
End;

Function dmsoft.ReadDouble(hwnd:Integer;addr:WideString):Double;
Begin
  Result := obj.ReadDouble(hwnd,addr);
End;

Function dmsoft.FindInt(hwnd:Integer;addr_range:WideString;int_value_min:Int64;int_value_max:Int64;tpe:Integer):WideString;
Begin
  Result := obj.FindInt(hwnd,addr_range,int_value_min,int_value_max,tpe);
End;

Function dmsoft.FindFloat(hwnd:Integer;addr_range:WideString;float_value_min:Single;float_value_max:Single):WideString;
Begin
  Result := obj.FindFloat(hwnd,addr_range,float_value_min,float_value_max);
End;

Function dmsoft.FindDouble(hwnd:Integer;addr_range:WideString;double_value_min:Double;double_value_max:Double):WideString;
Begin
  Result := obj.FindDouble(hwnd,addr_range,double_value_min,double_value_max);
End;

Function dmsoft.FindString(hwnd:Integer;addr_range:WideString;string_value:WideString;tpe:Integer):WideString;
Begin
  Result := obj.FindString(hwnd,addr_range,string_value,tpe);
End;

Function dmsoft.GetModuleBaseAddr(hwnd:Integer;module_name:WideString):Int64;
Begin
  Result := obj.GetModuleBaseAddr(hwnd,module_name);
End;

Function dmsoft.MoveToEx(x:Integer;y:Integer;w:Integer;h:Integer):WideString;
Begin
  Result := obj.MoveToEx(x,y,w,h);
End;

Function dmsoft.MatchPicName(pic_name:WideString):WideString;
Begin
  Result := obj.MatchPicName(pic_name);
End;

Function dmsoft.AddDict(index:Integer;dict_info:WideString):Integer;
Begin
  Result := obj.AddDict(index,dict_info);
End;

Function dmsoft.EnterCri():Integer;
Begin
  Result := obj.EnterCri;
End;

Function dmsoft.LeaveCri():Integer;
Begin
  Result := obj.LeaveCri;
End;

Function dmsoft.WriteInt(hwnd:Integer;addr:WideString;tpe:Integer;v:Int64):Integer;
Begin
  Result := obj.WriteInt(hwnd,addr,tpe,v);
End;

Function dmsoft.WriteFloat(hwnd:Integer;addr:WideString;v:Single):Integer;
Begin
  Result := obj.WriteFloat(hwnd,addr,v);
End;

Function dmsoft.WriteDouble(hwnd:Integer;addr:WideString;v:Double):Integer;
Begin
  Result := obj.WriteDouble(hwnd,addr,v);
End;

Function dmsoft.WriteString(hwnd:Integer;addr:WideString;tpe:Integer;v:WideString):Integer;
Begin
  Result := obj.WriteString(hwnd,addr,tpe,v);
End;

Function dmsoft.AsmAdd(asm_ins:WideString):Integer;
Begin
  Result := obj.AsmAdd(asm_ins);
End;

Function dmsoft.AsmClear():Integer;
Begin
  Result := obj.AsmClear;
End;

Function dmsoft.AsmCall(hwnd:Integer;mode:Integer):Int64;
Begin
  Result := obj.AsmCall(hwnd,mode);
End;

Function dmsoft.FindMultiColor(x1:Integer;y1:Integer;x2:Integer;y2:Integer;first_color:WideString;offset_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.FindMultiColor(x1,y1,x2,y2,first_color,offset_color,sim,dir,x,y);
End;

Function dmsoft.FindMultiColorEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;first_color:WideString;offset_color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindMultiColorEx(x1,y1,x2,y2,first_color,offset_color,sim,dir);
End;

Function dmsoft.Assemble(base_addr:Int64;is_64bit:Integer):WideString;
Begin
  Result := obj.Assemble(base_addr,is_64bit);
End;

Function dmsoft.DisAssemble(asm_code:WideString;base_addr:Int64;is_64bit:Integer):WideString;
Begin
  Result := obj.DisAssemble(asm_code,base_addr,is_64bit);
End;

Function dmsoft.SetWindowTransparent(hwnd:Integer;v:Integer):Integer;
Begin
  Result := obj.SetWindowTransparent(hwnd,v);
End;

Function dmsoft.ReadData(hwnd:Integer;addr:WideString;length:Integer):WideString;
Begin
  Result := obj.ReadData(hwnd,addr,length);
End;

Function dmsoft.WriteData(hwnd:Integer;addr:WideString;data:WideString):Integer;
Begin
  Result := obj.WriteData(hwnd,addr,data);
End;

Function dmsoft.FindData(hwnd:Integer;addr_range:WideString;data:WideString):WideString;
Begin
  Result := obj.FindData(hwnd,addr_range,data);
End;

Function dmsoft.SetPicPwd(pwd:WideString):Integer;
Begin
  Result := obj.SetPicPwd(pwd);
End;

Function dmsoft.Log(info:WideString):Integer;
Begin
  Result := obj.Log(info);
End;

Function dmsoft.FindStrE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;
Begin
  Result := obj.FindStrE(x1,y1,x2,y2,str,color,sim);
End;

Function dmsoft.FindColorE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindColorE(x1,y1,x2,y2,color,sim,dir);
End;

Function dmsoft.FindPicE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindPicE(x1,y1,x2,y2,pic_name,delta_color,sim,dir);
End;

Function dmsoft.FindMultiColorE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;first_color:WideString;offset_color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindMultiColorE(x1,y1,x2,y2,first_color,offset_color,sim,dir);
End;

Function dmsoft.SetExactOcr(exact_ocr:Integer):Integer;
Begin
  Result := obj.SetExactOcr(exact_ocr);
End;

Function dmsoft.ReadString(hwnd:Integer;addr:WideString;tpe:Integer;length:Integer):WideString;
Begin
  Result := obj.ReadString(hwnd,addr,tpe,length);
End;

Function dmsoft.FoobarTextPrintDir(hwnd:Integer;dir:Integer):Integer;
Begin
  Result := obj.FoobarTextPrintDir(hwnd,dir);
End;

Function dmsoft.OcrEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):WideString;
Begin
  Result := obj.OcrEx(x1,y1,x2,y2,color,sim);
End;

Function dmsoft.SetDisplayInput(mode:WideString):Integer;
Begin
  Result := obj.SetDisplayInput(mode);
End;

Function dmsoft.GetTime():Integer;
Begin
  Result := obj.GetTime;
End;

Function dmsoft.GetScreenWidth():Integer;
Begin
  Result := obj.GetScreenWidth;
End;

Function dmsoft.GetScreenHeight():Integer;
Begin
  Result := obj.GetScreenHeight;
End;

Function dmsoft.BindWindowEx(hwnd:Integer;display:WideString;mouse:WideString;keypad:WideString;public_desc:WideString;mode:Integer):Integer;
Begin
  Result := obj.BindWindowEx(hwnd,display,mouse,keypad,public_desc,mode);
End;

Function dmsoft.GetDiskSerial():WideString;
Begin
  Result := obj.GetDiskSerial;
End;

Function dmsoft.Md5(str:WideString):WideString;
Begin
  Result := obj.Md5(str);
End;

Function dmsoft.GetMac():WideString;
Begin
  Result := obj.GetMac;
End;

Function dmsoft.ActiveInputMethod(hwnd:Integer;id:WideString):Integer;
Begin
  Result := obj.ActiveInputMethod(hwnd,id);
End;

Function dmsoft.CheckInputMethod(hwnd:Integer;id:WideString):Integer;
Begin
  Result := obj.CheckInputMethod(hwnd,id);
End;

Function dmsoft.FindInputMethod(id:WideString):Integer;
Begin
  Result := obj.FindInputMethod(id);
End;

Function dmsoft.GetCursorPos(out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.GetCursorPos(x,y);
End;

Function dmsoft.BindWindow(hwnd:Integer;display:WideString;mouse:WideString;keypad:WideString;mode:Integer):Integer;
Begin
  Result := obj.BindWindow(hwnd,display,mouse,keypad,mode);
End;

Function dmsoft.FindWindow(class_name:WideString;title_name:WideString):Integer;
Begin
  Result := obj.FindWindow(class_name,title_name);
End;

Function dmsoft.GetScreenDepth():Integer;
Begin
  Result := obj.GetScreenDepth;
End;

Function dmsoft.SetScreen(width:Integer;height:Integer;depth:Integer):Integer;
Begin
  Result := obj.SetScreen(width,height,depth);
End;

Function dmsoft.ExitOs(tpe:Integer):Integer;
Begin
  Result := obj.ExitOs(tpe);
End;

Function dmsoft.GetDir(tpe:Integer):WideString;
Begin
  Result := obj.GetDir(tpe);
End;

Function dmsoft.GetOsType():Integer;
Begin
  Result := obj.GetOsType;
End;

Function dmsoft.FindWindowEx(parent:Integer;class_name:WideString;title_name:WideString):Integer;
Begin
  Result := obj.FindWindowEx(parent,class_name,title_name);
End;

Function dmsoft.SetExportDict(index:Integer;dict_name:WideString):Integer;
Begin
  Result := obj.SetExportDict(index,dict_name);
End;

Function dmsoft.GetCursorShape():WideString;
Begin
  Result := obj.GetCursorShape;
End;

Function dmsoft.DownCpu(rate:Integer):Integer;
Begin
  Result := obj.DownCpu(rate);
End;

Function dmsoft.GetCursorSpot():WideString;
Begin
  Result := obj.GetCursorSpot;
End;

Function dmsoft.SendString2(hwnd:Integer;str:WideString):Integer;
Begin
  Result := obj.SendString2(hwnd,str);
End;

Function dmsoft.FaqPost(server:WideString;handle:Integer;request_type:Integer;time_out:Integer):Integer;
Begin
  Result := obj.FaqPost(server,handle,request_type,time_out);
End;

Function dmsoft.FaqFetch():WideString;
Begin
  Result := obj.FaqFetch;
End;

Function dmsoft.FetchWord(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;word:WideString):WideString;
Begin
  Result := obj.FetchWord(x1,y1,x2,y2,color,word);
End;

Function dmsoft.CaptureJpg(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString;quality:Integer):Integer;
Begin
  Result := obj.CaptureJpg(x1,y1,x2,y2,file_name,quality);
End;

Function dmsoft.FindStrWithFont(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;font_name:WideString;font_size:Integer;flag:Integer;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.FindStrWithFont(x1,y1,x2,y2,str,color,sim,font_name,font_size,flag,x,y);
End;

Function dmsoft.FindStrWithFontE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;font_name:WideString;font_size:Integer;flag:Integer):WideString;
Begin
  Result := obj.FindStrWithFontE(x1,y1,x2,y2,str,color,sim,font_name,font_size,flag);
End;

Function dmsoft.FindStrWithFontEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;font_name:WideString;font_size:Integer;flag:Integer):WideString;
Begin
  Result := obj.FindStrWithFontEx(x1,y1,x2,y2,str,color,sim,font_name,font_size,flag);
End;

Function dmsoft.GetDictInfo(str:WideString;font_name:WideString;font_size:Integer;flag:Integer):WideString;
Begin
  Result := obj.GetDictInfo(str,font_name,font_size,flag);
End;

Function dmsoft.SaveDict(index:Integer;file_name:WideString):Integer;
Begin
  Result := obj.SaveDict(index,file_name);
End;

Function dmsoft.GetWindowProcessId(hwnd:Integer):Integer;
Begin
  Result := obj.GetWindowProcessId(hwnd);
End;

Function dmsoft.GetWindowProcessPath(hwnd:Integer):WideString;
Begin
  Result := obj.GetWindowProcessPath(hwnd);
End;

Function dmsoft.LockInput(locks:Integer):Integer;
Begin
  Result := obj.LockInput(locks);
End;

Function dmsoft.GetPicSize(pic_name:WideString):WideString;
Begin
  Result := obj.GetPicSize(pic_name);
End;

Function dmsoft.GetID():Integer;
Begin
  Result := obj.GetID;
End;

Function dmsoft.CapturePng(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString):Integer;
Begin
  Result := obj.CapturePng(x1,y1,x2,y2,file_name);
End;

Function dmsoft.CaptureGif(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString;delay:Integer;time:Integer):Integer;
Begin
  Result := obj.CaptureGif(x1,y1,x2,y2,file_name,delay,time);
End;

Function dmsoft.ImageToBmp(pic_name:WideString;bmp_name:WideString):Integer;
Begin
  Result := obj.ImageToBmp(pic_name,bmp_name);
End;

Function dmsoft.FindStrFast(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.FindStrFast(x1,y1,x2,y2,str,color,sim,x,y);
End;

Function dmsoft.FindStrFastEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;
Begin
  Result := obj.FindStrFastEx(x1,y1,x2,y2,str,color,sim);
End;

Function dmsoft.FindStrFastE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;
Begin
  Result := obj.FindStrFastE(x1,y1,x2,y2,str,color,sim);
End;

Function dmsoft.EnableDisplayDebug(enable_debug:Integer):Integer;
Begin
  Result := obj.EnableDisplayDebug(enable_debug);
End;

Function dmsoft.CapturePre(file_name:WideString):Integer;
Begin
  Result := obj.CapturePre(file_name);
End;

Function dmsoft.RegEx(code:WideString;Ver:WideString;ip:WideString):Integer;
Begin
  Result := obj.RegEx(code,Ver,ip);
End;

Function dmsoft.GetMachineCode():WideString;
Begin
  Result := obj.GetMachineCode;
End;

Function dmsoft.SetClipboard(data:WideString):Integer;
Begin
  Result := obj.SetClipboard(data);
End;

Function dmsoft.GetClipboard():WideString;
Begin
  Result := obj.GetClipboard;
End;

Function dmsoft.GetNowDict():Integer;
Begin
  Result := obj.GetNowDict;
End;

Function dmsoft.Is64Bit():Integer;
Begin
  Result := obj.Is64Bit;
End;

Function dmsoft.GetColorNum(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):Integer;
Begin
  Result := obj.GetColorNum(x1,y1,x2,y2,color,sim);
End;

Function dmsoft.EnumWindowByProcess(process_name:WideString;title:WideString;class_name:WideString;filter:Integer):WideString;
Begin
  Result := obj.EnumWindowByProcess(process_name,title,class_name,filter);
End;

Function dmsoft.GetDictCount(index:Integer):Integer;
Begin
  Result := obj.GetDictCount(index);
End;

Function dmsoft.GetLastError():Integer;
Begin
  Result := obj.GetLastError;
End;

Function dmsoft.GetNetTime():WideString;
Begin
  Result := obj.GetNetTime;
End;

Function dmsoft.EnableGetColorByCapture(en:Integer):Integer;
Begin
  Result := obj.EnableGetColorByCapture(en);
End;

Function dmsoft.CheckUAC():Integer;
Begin
  Result := obj.CheckUAC;
End;

Function dmsoft.SetUAC(uac:Integer):Integer;
Begin
  Result := obj.SetUAC(uac);
End;

Function dmsoft.DisableFontSmooth():Integer;
Begin
  Result := obj.DisableFontSmooth;
End;

Function dmsoft.CheckFontSmooth():Integer;
Begin
  Result := obj.CheckFontSmooth;
End;

Function dmsoft.SetDisplayAcceler(level:Integer):Integer;
Begin
  Result := obj.SetDisplayAcceler(level);
End;

Function dmsoft.FindWindowByProcess(process_name:WideString;class_name:WideString;title_name:WideString):Integer;
Begin
  Result := obj.FindWindowByProcess(process_name,class_name,title_name);
End;

Function dmsoft.FindWindowByProcessId(process_id:Integer;class_name:WideString;title_name:WideString):Integer;
Begin
  Result := obj.FindWindowByProcessId(process_id,class_name,title_name);
End;

Function dmsoft.ReadIni(section:WideString;key:WideString;file_name:WideString):WideString;
Begin
  Result := obj.ReadIni(section,key,file_name);
End;

Function dmsoft.WriteIni(section:WideString;key:WideString;v:WideString;file_name:WideString):Integer;
Begin
  Result := obj.WriteIni(section,key,v,file_name);
End;

Function dmsoft.RunApp(path:WideString;mode:Integer):Integer;
Begin
  Result := obj.RunApp(path,mode);
End;

Function dmsoft.delay(mis:Integer):Integer;
Begin
  Result := obj.delay(mis);
End;

Function dmsoft.FindWindowSuper(spec1:WideString;flag1:Integer;type1:Integer;spec2:WideString;flag2:Integer;type2:Integer):Integer;
Begin
  Result := obj.FindWindowSuper(spec1,flag1,type1,spec2,flag2,type2);
End;

Function dmsoft.ExcludePos(all_pos:WideString;tpe:Integer;x1:Integer;y1:Integer;x2:Integer;y2:Integer):WideString;
Begin
  Result := obj.ExcludePos(all_pos,tpe,x1,y1,x2,y2);
End;

Function dmsoft.FindNearestPos(all_pos:WideString;tpe:Integer;x:Integer;y:Integer):WideString;
Begin
  Result := obj.FindNearestPos(all_pos,tpe,x,y);
End;

Function dmsoft.SortPosDistance(all_pos:WideString;tpe:Integer;x:Integer;y:Integer):WideString;
Begin
  Result := obj.SortPosDistance(all_pos,tpe,x,y);
End;

Function dmsoft.FindPicMem(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_info:WideString;delta_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.FindPicMem(x1,y1,x2,y2,pic_info,delta_color,sim,dir,x,y);
End;

Function dmsoft.FindPicMemEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_info:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindPicMemEx(x1,y1,x2,y2,pic_info,delta_color,sim,dir);
End;

Function dmsoft.FindPicMemE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_info:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindPicMemE(x1,y1,x2,y2,pic_info,delta_color,sim,dir);
End;

Function dmsoft.AppendPicAddr(pic_info:WideString;addr:Integer;size:Integer):WideString;
Begin
  Result := obj.AppendPicAddr(pic_info,addr,size);
End;

Function dmsoft.WriteFile(file_name:WideString;content:WideString):Integer;
Begin
  Result := obj.WriteFile(file_name,content);
End;

Function dmsoft.Stop(id:Integer):Integer;
Begin
  Result := obj.Stop(id);
End;

Function dmsoft.SetDictMem(index:Integer;addr:Integer;size:Integer):Integer;
Begin
  Result := obj.SetDictMem(index,addr,size);
End;

Function dmsoft.GetNetTimeSafe():WideString;
Begin
  Result := obj.GetNetTimeSafe;
End;

Function dmsoft.ForceUnBindWindow(hwnd:Integer):Integer;
Begin
  Result := obj.ForceUnBindWindow(hwnd);
End;

Function dmsoft.ReadIniPwd(section:WideString;key:WideString;file_name:WideString;pwd:WideString):WideString;
Begin
  Result := obj.ReadIniPwd(section,key,file_name,pwd);
End;

Function dmsoft.WriteIniPwd(section:WideString;key:WideString;v:WideString;file_name:WideString;pwd:WideString):Integer;
Begin
  Result := obj.WriteIniPwd(section,key,v,file_name,pwd);
End;

Function dmsoft.DecodeFile(file_name:WideString;pwd:WideString):Integer;
Begin
  Result := obj.DecodeFile(file_name,pwd);
End;

Function dmsoft.KeyDownChar(key_str:WideString):Integer;
Begin
  Result := obj.KeyDownChar(key_str);
End;

Function dmsoft.KeyUpChar(key_str:WideString):Integer;
Begin
  Result := obj.KeyUpChar(key_str);
End;

Function dmsoft.KeyPressChar(key_str:WideString):Integer;
Begin
  Result := obj.KeyPressChar(key_str);
End;

Function dmsoft.KeyPressStr(key_str:WideString;delay:Integer):Integer;
Begin
  Result := obj.KeyPressStr(key_str,delay);
End;

Function dmsoft.EnableKeypadPatch(en:Integer):Integer;
Begin
  Result := obj.EnableKeypadPatch(en);
End;

Function dmsoft.EnableKeypadSync(en:Integer;time_out:Integer):Integer;
Begin
  Result := obj.EnableKeypadSync(en,time_out);
End;

Function dmsoft.EnableMouseSync(en:Integer;time_out:Integer):Integer;
Begin
  Result := obj.EnableMouseSync(en,time_out);
End;

Function dmsoft.DmGuard(en:Integer;tpe:WideString):Integer;
Begin
  Result := obj.DmGuard(en,tpe);
End;

Function dmsoft.FaqCaptureFromFile(x1:Integer;y1:Integer;x2:Integer;y2:Integer;file_name:WideString;quality:Integer):Integer;
Begin
  Result := obj.FaqCaptureFromFile(x1,y1,x2,y2,file_name,quality);
End;

Function dmsoft.FindIntEx(hwnd:Integer;addr_range:WideString;int_value_min:Int64;int_value_max:Int64;tpe:Integer;steps:Integer;multi_thread:Integer;mode:Integer):WideString;
Begin
  Result := obj.FindIntEx(hwnd,addr_range,int_value_min,int_value_max,tpe,steps,multi_thread,mode);
End;

Function dmsoft.FindFloatEx(hwnd:Integer;addr_range:WideString;float_value_min:Single;float_value_max:Single;steps:Integer;multi_thread:Integer;mode:Integer):WideString;
Begin
  Result := obj.FindFloatEx(hwnd,addr_range,float_value_min,float_value_max,steps,multi_thread,mode);
End;

Function dmsoft.FindDoubleEx(hwnd:Integer;addr_range:WideString;double_value_min:Double;double_value_max:Double;steps:Integer;multi_thread:Integer;mode:Integer):WideString;
Begin
  Result := obj.FindDoubleEx(hwnd,addr_range,double_value_min,double_value_max,steps,multi_thread,mode);
End;

Function dmsoft.FindStringEx(hwnd:Integer;addr_range:WideString;string_value:WideString;tpe:Integer;steps:Integer;multi_thread:Integer;mode:Integer):WideString;
Begin
  Result := obj.FindStringEx(hwnd,addr_range,string_value,tpe,steps,multi_thread,mode);
End;

Function dmsoft.FindDataEx(hwnd:Integer;addr_range:WideString;data:WideString;steps:Integer;multi_thread:Integer;mode:Integer):WideString;
Begin
  Result := obj.FindDataEx(hwnd,addr_range,data,steps,multi_thread,mode);
End;

Function dmsoft.EnableRealMouse(en:Integer;mousedelay:Integer;mousestep:Integer):Integer;
Begin
  Result := obj.EnableRealMouse(en,mousedelay,mousestep);
End;

Function dmsoft.EnableRealKeypad(en:Integer):Integer;
Begin
  Result := obj.EnableRealKeypad(en);
End;

Function dmsoft.SendStringIme(str:WideString):Integer;
Begin
  Result := obj.SendStringIme(str);
End;

Function dmsoft.FoobarDrawLine(hwnd:Integer;x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;style:Integer;width:Integer):Integer;
Begin
  Result := obj.FoobarDrawLine(hwnd,x1,y1,x2,y2,color,style,width);
End;

Function dmsoft.FindStrEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;
Begin
  Result := obj.FindStrEx(x1,y1,x2,y2,str,color,sim);
End;

Function dmsoft.IsBind(hwnd:Integer):Integer;
Begin
  Result := obj.IsBind(hwnd);
End;

Function dmsoft.SetDisplayDelay(t:Integer):Integer;
Begin
  Result := obj.SetDisplayDelay(t);
End;

Function dmsoft.GetDmCount():Integer;
Begin
  Result := obj.GetDmCount;
End;

Function dmsoft.DisableScreenSave():Integer;
Begin
  Result := obj.DisableScreenSave;
End;

Function dmsoft.DisablePowerSave():Integer;
Begin
  Result := obj.DisablePowerSave;
End;

Function dmsoft.SetMemoryHwndAsProcessId(en:Integer):Integer;
Begin
  Result := obj.SetMemoryHwndAsProcessId(en);
End;

Function dmsoft.FindShape(x1:Integer;y1:Integer;x2:Integer;y2:Integer;offset_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.FindShape(x1,y1,x2,y2,offset_color,sim,dir,x,y);
End;

Function dmsoft.FindShapeE(x1:Integer;y1:Integer;x2:Integer;y2:Integer;offset_color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindShapeE(x1,y1,x2,y2,offset_color,sim,dir);
End;

Function dmsoft.FindShapeEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;offset_color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindShapeEx(x1,y1,x2,y2,offset_color,sim,dir);
End;

Function dmsoft.FindStrS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;out x:OleVariant;out y:OleVariant):WideString;
Begin
  Result := obj.FindStrS(x1,y1,x2,y2,str,color,sim,x,y);
End;

Function dmsoft.FindStrExS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;
Begin
  Result := obj.FindStrExS(x1,y1,x2,y2,str,color,sim);
End;

Function dmsoft.FindStrFastS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double;out x:OleVariant;out y:OleVariant):WideString;
Begin
  Result := obj.FindStrFastS(x1,y1,x2,y2,str,color,sim,x,y);
End;

Function dmsoft.FindStrFastExS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;str:WideString;color:WideString;sim:Double):WideString;
Begin
  Result := obj.FindStrFastExS(x1,y1,x2,y2,str,color,sim);
End;

Function dmsoft.FindPicS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer;out x:OleVariant;out y:OleVariant):WideString;
Begin
  Result := obj.FindPicS(x1,y1,x2,y2,pic_name,delta_color,sim,dir,x,y);
End;

Function dmsoft.FindPicExS(x1:Integer;y1:Integer;x2:Integer;y2:Integer;pic_name:WideString;delta_color:WideString;sim:Double;dir:Integer):WideString;
Begin
  Result := obj.FindPicExS(x1,y1,x2,y2,pic_name,delta_color,sim,dir);
End;

Function dmsoft.ClearDict(index:Integer):Integer;
Begin
  Result := obj.ClearDict(index);
End;

Function dmsoft.GetMachineCodeNoMac():WideString;
Begin
  Result := obj.GetMachineCodeNoMac;
End;

Function dmsoft.GetClientRect(hwnd:Integer;out x1:OleVariant;out y1:OleVariant;out x2:OleVariant;out y2:OleVariant):Integer;
Begin
  Result := obj.GetClientRect(hwnd,x1,y1,x2,y2);
End;

Function dmsoft.EnableFakeActive(en:Integer):Integer;
Begin
  Result := obj.EnableFakeActive(en);
End;

Function dmsoft.GetScreenDataBmp(x1:Integer;y1:Integer;x2:Integer;y2:Integer;out data:OleVariant;out size:OleVariant):Integer;
Begin
  Result := obj.GetScreenDataBmp(x1,y1,x2,y2,data,size);
End;

Function dmsoft.EncodeFile(file_name:WideString;pwd:WideString):Integer;
Begin
  Result := obj.EncodeFile(file_name,pwd);
End;

Function dmsoft.GetCursorShapeEx(tpe:Integer):WideString;
Begin
  Result := obj.GetCursorShapeEx(tpe);
End;

Function dmsoft.FaqCancel():Integer;
Begin
  Result := obj.FaqCancel;
End;

Function dmsoft.IntToData(int_value:Int64;tpe:Integer):WideString;
Begin
  Result := obj.IntToData(int_value,tpe);
End;

Function dmsoft.FloatToData(float_value:Single):WideString;
Begin
  Result := obj.FloatToData(float_value);
End;

Function dmsoft.DoubleToData(double_value:Double):WideString;
Begin
  Result := obj.DoubleToData(double_value);
End;

Function dmsoft.StringToData(string_value:WideString;tpe:Integer):WideString;
Begin
  Result := obj.StringToData(string_value,tpe);
End;

Function dmsoft.SetMemoryFindResultToFile(file_name:WideString):Integer;
Begin
  Result := obj.SetMemoryFindResultToFile(file_name);
End;

Function dmsoft.EnableBind(en:Integer):Integer;
Begin
  Result := obj.EnableBind(en);
End;

Function dmsoft.SetSimMode(mode:Integer):Integer;
Begin
  Result := obj.SetSimMode(mode);
End;

Function dmsoft.LockMouseRect(x1:Integer;y1:Integer;x2:Integer;y2:Integer):Integer;
Begin
  Result := obj.LockMouseRect(x1,y1,x2,y2);
End;

Function dmsoft.SendPaste(hwnd:Integer):Integer;
Begin
  Result := obj.SendPaste(hwnd);
End;

Function dmsoft.IsDisplayDead(x1:Integer;y1:Integer;x2:Integer;y2:Integer;t:Integer):Integer;
Begin
  Result := obj.IsDisplayDead(x1,y1,x2,y2,t);
End;

Function dmsoft.GetKeyState(vk:Integer):Integer;
Begin
  Result := obj.GetKeyState(vk);
End;

Function dmsoft.CopyFile(src_file:WideString;dst_file:WideString;over:Integer):Integer;
Begin
  Result := obj.CopyFile(src_file,dst_file,over);
End;

Function dmsoft.IsFileExist(file_name:WideString):Integer;
Begin
  Result := obj.IsFileExist(file_name);
End;

Function dmsoft.DeleteFile(file_name:WideString):Integer;
Begin
  Result := obj.DeleteFile(file_name);
End;

Function dmsoft.MoveFile(src_file:WideString;dst_file:WideString):Integer;
Begin
  Result := obj.MoveFile(src_file,dst_file);
End;

Function dmsoft.CreateFolder(folder_name:WideString):Integer;
Begin
  Result := obj.CreateFolder(folder_name);
End;

Function dmsoft.DeleteFolder(folder_name:WideString):Integer;
Begin
  Result := obj.DeleteFolder(folder_name);
End;

Function dmsoft.GetFileLength(file_name:WideString):Integer;
Begin
  Result := obj.GetFileLength(file_name);
End;

Function dmsoft.ReadFile(file_name:WideString):WideString;
Begin
  Result := obj.ReadFile(file_name);
End;

Function dmsoft.WaitKey(key_code:Integer;time_out:Integer):Integer;
Begin
  Result := obj.WaitKey(key_code,time_out);
End;

Function dmsoft.DeleteIni(section:WideString;key:WideString;file_name:WideString):Integer;
Begin
  Result := obj.DeleteIni(section,key,file_name);
End;

Function dmsoft.DeleteIniPwd(section:WideString;key:WideString;file_name:WideString;pwd:WideString):Integer;
Begin
  Result := obj.DeleteIniPwd(section,key,file_name,pwd);
End;

Function dmsoft.EnableSpeedDx(en:Integer):Integer;
Begin
  Result := obj.EnableSpeedDx(en);
End;

Function dmsoft.EnableIme(en:Integer):Integer;
Begin
  Result := obj.EnableIme(en);
End;

Function dmsoft.Reg(code:WideString;Ver:WideString):Integer;
Begin
  Result := obj.Reg(code,Ver);
End;

Function dmsoft.SelectFile():WideString;
Begin
  Result := obj.SelectFile;
End;

Function dmsoft.SelectDirectory():WideString;
Begin
  Result := obj.SelectDirectory;
End;

Function dmsoft.LockDisplay(locks:Integer):Integer;
Begin
  Result := obj.LockDisplay(locks);
End;

Function dmsoft.FoobarSetSave(hwnd:Integer;file_name:WideString;en:Integer;header:WideString):Integer;
Begin
  Result := obj.FoobarSetSave(hwnd,file_name,en,header);
End;

Function dmsoft.EnumWindowSuper(spec1:WideString;flag1:Integer;type1:Integer;spec2:WideString;flag2:Integer;type2:Integer;sort:Integer):WideString;
Begin
  Result := obj.EnumWindowSuper(spec1,flag1,type1,spec2,flag2,type2,sort);
End;

Function dmsoft.DownloadFile(url:WideString;save_file:WideString;timeout:Integer):Integer;
Begin
  Result := obj.DownloadFile(url,save_file,timeout);
End;

Function dmsoft.EnableKeypadMsg(en:Integer):Integer;
Begin
  Result := obj.EnableKeypadMsg(en);
End;

Function dmsoft.EnableMouseMsg(en:Integer):Integer;
Begin
  Result := obj.EnableMouseMsg(en);
End;

Function dmsoft.RegNoMac(code:WideString;Ver:WideString):Integer;
Begin
  Result := obj.RegNoMac(code,Ver);
End;

Function dmsoft.RegExNoMac(code:WideString;Ver:WideString;ip:WideString):Integer;
Begin
  Result := obj.RegExNoMac(code,Ver,ip);
End;

Function dmsoft.SetEnumWindowDelay(delay:Integer):Integer;
Begin
  Result := obj.SetEnumWindowDelay(delay);
End;

Function dmsoft.FindMulColor(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):Integer;
Begin
  Result := obj.FindMulColor(x1,y1,x2,y2,color,sim);
End;

Function dmsoft.GetDict(index:Integer;font_index:Integer):WideString;
Begin
  Result := obj.GetDict(index,font_index);
End;

Function dmsoft.GetBindWindow():Integer;
Begin
  Result := obj.GetBindWindow;
End;

Function dmsoft.FoobarStartGif(hwnd:Integer;x:Integer;y:Integer;pic_name:WideString;repeat_limit:Integer;delay:Integer):Integer;
Begin
  Result := obj.FoobarStartGif(hwnd,x,y,pic_name,repeat_limit,delay);
End;

Function dmsoft.FoobarStopGif(hwnd:Integer;x:Integer;y:Integer;pic_name:WideString):Integer;
Begin
  Result := obj.FoobarStopGif(hwnd,x,y,pic_name);
End;

Function dmsoft.FreeProcessMemory(hwnd:Integer):Integer;
Begin
  Result := obj.FreeProcessMemory(hwnd);
End;

Function dmsoft.ReadFileData(file_name:WideString;start_pos:Integer;end_pos:Integer):WideString;
Begin
  Result := obj.ReadFileData(file_name,start_pos,end_pos);
End;

Function dmsoft.VirtualAllocEx(hwnd:Integer;addr:Int64;size:Integer;tpe:Integer):Int64;
Begin
  Result := obj.VirtualAllocEx(hwnd,addr,size,tpe);
End;

Function dmsoft.VirtualFreeEx(hwnd:Integer;addr:Int64):Integer;
Begin
  Result := obj.VirtualFreeEx(hwnd,addr);
End;

Function dmsoft.GetCommandLine(hwnd:Integer):WideString;
Begin
  Result := obj.GetCommandLine(hwnd);
End;

Function dmsoft.TerminateProcess(pid:Integer):Integer;
Begin
  Result := obj.TerminateProcess(pid);
End;

Function dmsoft.GetNetTimeByIp(ip:WideString):WideString;
Begin
  Result := obj.GetNetTimeByIp(ip);
End;

Function dmsoft.EnumProcess(name:WideString):WideString;
Begin
  Result := obj.EnumProcess(name);
End;

Function dmsoft.GetProcessInfo(pid:Integer):WideString;
Begin
  Result := obj.GetProcessInfo(pid);
End;

Function dmsoft.ReadIntAddr(hwnd:Integer;addr:Int64;tpe:Integer):Int64;
Begin
  Result := obj.ReadIntAddr(hwnd,addr,tpe);
End;

Function dmsoft.ReadDataAddr(hwnd:Integer;addr:Int64;length:Integer):WideString;
Begin
  Result := obj.ReadDataAddr(hwnd,addr,length);
End;

Function dmsoft.ReadDoubleAddr(hwnd:Integer;addr:Int64):Double;
Begin
  Result := obj.ReadDoubleAddr(hwnd,addr);
End;

Function dmsoft.ReadFloatAddr(hwnd:Integer;addr:Int64):Single;
Begin
  Result := obj.ReadFloatAddr(hwnd,addr);
End;

Function dmsoft.ReadStringAddr(hwnd:Integer;addr:Int64;tpe:Integer;length:Integer):WideString;
Begin
  Result := obj.ReadStringAddr(hwnd,addr,tpe,length);
End;

Function dmsoft.WriteDataAddr(hwnd:Integer;addr:Int64;data:WideString):Integer;
Begin
  Result := obj.WriteDataAddr(hwnd,addr,data);
End;

Function dmsoft.WriteDoubleAddr(hwnd:Integer;addr:Int64;v:Double):Integer;
Begin
  Result := obj.WriteDoubleAddr(hwnd,addr,v);
End;

Function dmsoft.WriteFloatAddr(hwnd:Integer;addr:Int64;v:Single):Integer;
Begin
  Result := obj.WriteFloatAddr(hwnd,addr,v);
End;

Function dmsoft.WriteIntAddr(hwnd:Integer;addr:Int64;tpe:Integer;v:Int64):Integer;
Begin
  Result := obj.WriteIntAddr(hwnd,addr,tpe,v);
End;

Function dmsoft.WriteStringAddr(hwnd:Integer;addr:Int64;tpe:Integer;v:WideString):Integer;
Begin
  Result := obj.WriteStringAddr(hwnd,addr,tpe,v);
End;

Function dmsoft.Delays(min_s:Integer;max_s:Integer):Integer;
Begin
  Result := obj.Delays(min_s,max_s);
End;

Function dmsoft.FindColorBlock(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;count:Integer;width:Integer;height:Integer;out x:OleVariant;out y:OleVariant):Integer;
Begin
  Result := obj.FindColorBlock(x1,y1,x2,y2,color,sim,count,width,height,x,y);
End;

Function dmsoft.FindColorBlockEx(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double;count:Integer;width:Integer;height:Integer):WideString;
Begin
  Result := obj.FindColorBlockEx(x1,y1,x2,y2,color,sim,count,width,height);
End;

Function dmsoft.OpenProcess(pid:Integer):Integer;
Begin
  Result := obj.OpenProcess(pid);
End;

Function dmsoft.EnumIniSection(file_name:WideString):WideString;
Begin
  Result := obj.EnumIniSection(file_name);
End;

Function dmsoft.EnumIniSectionPwd(file_name:WideString;pwd:WideString):WideString;
Begin
  Result := obj.EnumIniSectionPwd(file_name,pwd);
End;

Function dmsoft.EnumIniKey(section:WideString;file_name:WideString):WideString;
Begin
  Result := obj.EnumIniKey(section,file_name);
End;

Function dmsoft.EnumIniKeyPwd(section:WideString;file_name:WideString;pwd:WideString):WideString;
Begin
  Result := obj.EnumIniKeyPwd(section,file_name,pwd);
End;

Function dmsoft.SwitchBindWindow(hwnd:Integer):Integer;
Begin
  Result := obj.SwitchBindWindow(hwnd);
End;

Function dmsoft.InitCri():Integer;
Begin
  Result := obj.InitCri;
End;

Function dmsoft.SendStringIme2(hwnd:Integer;str:WideString;mode:Integer):Integer;
Begin
  Result := obj.SendStringIme2(hwnd,str,mode);
End;

Function dmsoft.EnumWindowByProcessId(pid:Integer;title:WideString;class_name:WideString;filter:Integer):WideString;
Begin
  Result := obj.EnumWindowByProcessId(pid,title,class_name,filter);
End;

Function dmsoft.GetDisplayInfo():WideString;
Begin
  Result := obj.GetDisplayInfo;
End;

Function dmsoft.EnableFontSmooth():Integer;
Begin
  Result := obj.EnableFontSmooth;
End;

Function dmsoft.OcrExOne(x1:Integer;y1:Integer;x2:Integer;y2:Integer;color:WideString;sim:Double):WideString;
Begin
  Result := obj.OcrExOne(x1,y1,x2,y2,color,sim);
End;

Function dmsoft.SetAero(en:Integer):Integer;
Begin
  Result := obj.SetAero(en);
End;

Function dmsoft.FoobarSetTrans(hwnd:Integer;trans:Integer;color:WideString;sim:Double):Integer;
Begin
  Result := obj.FoobarSetTrans(hwnd,trans,color,sim);
End;

Function dmsoft.EnablePicCache(en:Integer):Integer;
Begin
  Result := obj.EnablePicCache(en);
End;

Function dmsoft.FaqIsPosted():Integer;
Begin
  Result := obj.FaqIsPosted;
End;

Function dmsoft.LoadPicByte(addr:Integer;size:Integer;name:WideString):Integer;
Begin
  Result := obj.LoadPicByte(addr,size,name);
End;

Function dmsoft.MiddleDown():Integer;
Begin
  Result := obj.MiddleDown;
End;

Function dmsoft.MiddleUp():Integer;
Begin
  Result := obj.MiddleUp;
End;

Function dmsoft.FaqCaptureString(str:WideString):Integer;
Begin
  Result := obj.FaqCaptureString(str);
End;

Function dmsoft.VirtualProtectEx(hwnd:Integer;addr:Int64;size:Integer;tpe:Integer;old_protect:Integer):Integer;
Begin
  Result := obj.VirtualProtectEx(hwnd,addr,size,tpe,old_protect);
End;

Function dmsoft.SetMouseSpeed(speed:Integer):Integer;
Begin
  Result := obj.SetMouseSpeed(speed);
End;

Function dmsoft.GetMouseSpeed():Integer;
Begin
  Result := obj.GetMouseSpeed;
End;

Function dmsoft.EnableMouseAccuracy(en:Integer):Integer;
Begin
  Result := obj.EnableMouseAccuracy(en);
End;

Function dmsoft.SetExcludeRegion(tpe:Integer;info:WideString):Integer;
Begin
  Result := obj.SetExcludeRegion(tpe,info);
End;

Function dmsoft.EnableShareDict(en:Integer):Integer;
Begin
  Result := obj.EnableShareDict(en);
End;

Function dmsoft.DisableCloseDisplayAndSleep():Integer;
Begin
  Result := obj.DisableCloseDisplayAndSleep;
End;

Function dmsoft.Int64ToInt32(v:Int64):Integer;
Begin
  Result := obj.Int64ToInt32(v);
End;

Function dmsoft.GetLocale():Integer;
Begin
  Result := obj.GetLocale;
End;

Function dmsoft.SetLocale():Integer;
Begin
  Result := obj.SetLocale;
End;

Function dmsoft.ReadDataToBin(hwnd:Integer;addr:WideString;length:Integer):Integer;
Begin
  Result := obj.ReadDataToBin(hwnd,addr,length);
End;

Function dmsoft.WriteDataFromBin(hwnd:Integer;addr:WideString;data:Integer;length:Integer):Integer;
Begin
  Result := obj.WriteDataFromBin(hwnd,addr,data,length);
End;

Function dmsoft.ReadDataAddrToBin(hwnd:Integer;addr:Int64;length:Integer):Integer;
Begin
  Result := obj.ReadDataAddrToBin(hwnd,addr,length);
End;

Function dmsoft.WriteDataAddrFromBin(hwnd:Integer;addr:Int64;data:Integer;length:Integer):Integer;
Begin
  Result := obj.WriteDataAddrFromBin(hwnd,addr,data,length);
End;

Function dmsoft.SetParam64ToPointer():Integer;
Begin
  Result := obj.SetParam64ToPointer;
End;

Function dmsoft.GetDPI():Integer;
Begin
  Result := obj.GetDPI;
End;

Function dmsoft.SetDisplayRefreshDelay(t:Integer):Integer;
Begin
  Result := obj.SetDisplayRefreshDelay(t);
End;

Function dmsoft.IsFolderExist(folder:WideString):Integer;
Begin
  Result := obj.IsFolderExist(folder);
End;

Function dmsoft.GetCpuType():Integer;
Begin
  Result := obj.GetCpuType;
End;

Function dmsoft.ReleaseRef():Integer;
Begin
  Result := obj.ReleaseRef;
End;

Function dmsoft.SetExitThread(en:Integer):Integer;
Begin
  Result := obj.SetExitThread(en);
End;

Function dmsoft.GetFps():Integer;
Begin
  Result := obj.GetFps;
End;

Function dmsoft.VirtualQueryEx(hwnd:Integer;addr:Int64;pmbi:Integer):WideString;
Begin
  Result := obj.VirtualQueryEx(hwnd,addr,pmbi);
End;

Function dmsoft.AsmCallEx(hwnd:Integer;mode:Integer;base_addr:WideString):Int64;
Begin
  Result := obj.AsmCallEx(hwnd,mode,base_addr);
End;

Function dmsoft.GetRemoteApiAddress(hwnd:Integer;base_addr:Int64;fun_name:WideString):Int64;
Begin
  Result := obj.GetRemoteApiAddress(hwnd,base_addr,fun_name);
End;

Function dmsoft.ExecuteCmd(cmd:WideString;current_dir:WideString;time_out:Integer):WideString;
Begin
  Result := obj.ExecuteCmd(cmd,current_dir,time_out);
End;

Function dmsoft.SpeedNormalGraphic(en:Integer):Integer;
Begin
  Result := obj.SpeedNormalGraphic(en);
End;

Function dmsoft.UnLoadDriver():Integer;
Begin
  Result := obj.UnLoadDriver;
End;

Function dmsoft.GetOsBuildNumber():Integer;
Begin
  Result := obj.GetOsBuildNumber;
End;

Function dmsoft.HackSpeed(rate:Double):Integer;
Begin
  Result := obj.HackSpeed(rate);
End;

Function dmsoft.GetRealPath(path:WideString):WideString;
Begin
  Result := obj.GetRealPath(path);
End;

Function dmsoft.ShowTaskBarIcon(hwnd:Integer;is_show:Integer):Integer;
Begin
  Result := obj.ShowTaskBarIcon(hwnd,is_show);
End;

End.
