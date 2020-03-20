%%% SetupBipedRobot2.m
%%% ‚Q‘«•à?sƒ?ƒ{ƒbƒg?\‘¢ƒf?[ƒ^?F?}2.19?C?}2.20ŽQ?Æ
%%% ŠeƒtƒB?[ƒ‹ƒh‚Ì’è‹`‚Í?u•\2.1?@ƒŠƒ“ƒN?î•ñ?v‚ðŽQ?Æ‚Ì‚±‚Æ

ToDeg = 180/pi;
ToRad = pi/180;
UX = [1 0 0]';
UY = [0 1 0]';
UZ = [0 0 1]';
U0 = [0 0 0]';

uLINK    = struct('name','BODY'    , 'm', 10, 'sister', 0, 'child', 2, 'b',[0  0    0.7]','a',UZ,'q',0);

uLINK(2) = struct('name','RLEG_J0' , 'm',  5, 'sister', 8, 'child', 3, 'b',[0 -0.1 0]'   ,'a',UZ,'q',0);
uLINK(3) = struct('name','RLEG_J1' , 'm',  1, 'sister', 0, 'child', 4, 'b',[0  0   0]'   ,'a',UX,'q',0);
uLINK(4) = struct('name','RLEG_J2' , 'm',  5, 'sister', 0, 'child', 5, 'b',[0  0   0]'   ,'a',UY,'q',0);
uLINK(5) = struct('name','RLEG_J3' , 'm',  1, 'sister', 0, 'child', 6, 'b',[0  0  -0.3]' ,'a',UY,'q',0);
uLINK(6) = struct('name','RLEG_J4' , 'm',  6, 'sister', 0, 'child', 7, 'b',[0  0  -0.3]' ,'a',UY,'q',0);
uLINK(7) = struct('name','RLEG_J5' , 'm',  2, 'sister', 0, 'child', 0, 'b',[0  0   0  ]' ,'a',UX,'q',0);

uLINK(8) = struct('name','LLEG_J0' , 'm',  5, 'sister', 14, 'child', 9, 'b',[0  0.1 0]'   ,'a',UZ,'q',0);
uLINK(9) = struct('name','LLEG_J1' , 'm',  1, 'sister', 0 , 'child',10, 'b',[0  0   0]'   ,'a',UX,'q',0);
uLINK(10)= struct('name','LLEG_J2' , 'm',  5, 'sister', 0 , 'child',11, 'b',[0  0   0]'   ,'a',UY,'q',0);
uLINK(11)= struct('name','LLEG_J3' , 'm',  1, 'sister', 0 , 'child',12, 'b',[0  0  -0.3]' ,'a',UY,'q',0);
uLINK(12)= struct('name','LLEG_J4' , 'm',  6, 'sister', 0 , 'child',13, 'b',[0  0  -0.3]' ,'a',UY,'q',0);
uLINK(13)= struct('name','LLEG_J5' , 'm',  2, 'sister', 0 , 'child', 0, 'b',[0  0   0  ]' ,'a',UX,'q',0);

uLINK(14) = struct('name','UpperBody' , 'm',  0, 'sister', 0, 'child', 15, 'b',[0 0 0.4]'   ,'a',U0,'q',0); 
% uLINK(15) = struct('name','LShoulder' , 'm',  5, 'sister', 0, 'child', 16, 'b',[0 0.2 0]'   ,'a',UZ,'q',0);

uLINK(15) = struct('name','LARM_J0' , 'm',  5, 'sister', 21, 'child', 16, 'b',[0  0.2 0]'   ,'a',UZ,'q',0);
uLINK(16) = struct('name','LARM_J1' , 'm',  1, 'sister', 0, 'child',17 , 'b',[0  0   0]'   ,'a',UX,'q',0);
uLINK(17) = struct('name','LARM_J2' , 'm',  5, 'sister', 0, 'child',18 , 'b',[0  0   0]'   ,'a',UY,'q',0);
uLINK(18) = struct('name','LARM_J3' , 'm',  1, 'sister', 0, 'child',19 , 'b',[0  0  -0.2]' ,'a',UY,'q',0);
uLINK(19) = struct('name','LARM_J4' , 'm',  6, 'sister', 0, 'child',20 , 'b',[0  0  -0.2]' ,'a',UY,'q',0);
uLINK(20) = struct('name','LARM_J5' , 'm',  2, 'sister', 0, 'child', 0 , 'b',[0  0   0  ]' ,'a',UX,'q',0);

uLINK(21) = struct('name','RARM_J0' , 'm',  5, 'sister', 27, 'child', 22, 'b',[0  -0.2 0]'   ,'a',UZ,'q',0);
uLINK(22) = struct('name','RARM_J1' , 'm',  1, 'sister', 0, 'child',23 , 'b',[0  0   0]'   ,'a',UX,'q',0);
uLINK(23) = struct('name','RARM_J2' , 'm',  5, 'sister', 0, 'child',24 , 'b',[0  0   0]'   ,'a',UY,'q',0);
uLINK(24) = struct('name','RARM_J3' , 'm',  1, 'sister', 0, 'child',25 , 'b',[0  0  -0.2]' ,'a',UY,'q',0);
uLINK(25) = struct('name','RARM_J4' , 'm',  6, 'sister', 0, 'child',26 , 'b',[0  0  -0.2]' ,'a',UY,'q',0);
uLINK(26) = struct('name','RARM_J5' , 'm',  2, 'sister', 0, 'child', 0 , 'b',[0  0   0  ]' ,'a',UX,'q',0);

uLINK(27) = struct('name','Head_J0' , 'm',  0, 'sister', 0, 'child', 28, 'b',[0 0 0.2]'   ,'a',UZ,'q',0); 
uLINK(28) = struct('name','Head_J1' , 'm',  0, 'sister', 0, 'child', 29, 'b',[0 0 0]'   ,'a',UY,'q',0); 
uLINK(29) = struct('name','Head_J2' , 'm',  4, 'sister', 0, 'child', 0, 'b',[0 0 0.12]'   ,'a',U0,'q',0); 


FindMother(1);   %?@–…?C–ºƒŠƒ“ƒN‚Ì?î•ñ‚ð‚à‚Æ‚É•êƒŠƒ“ƒN‚ð?Ý’è‚·‚é

%% ƒtƒB?[ƒ‹ƒh‚Ì’Ç‰Á
for n=1:length(uLINK)
    uLINK(n).dq     = 0;            % Velocity   [rad/s]
    uLINK(n).ddq    = 0;            % Acceleration [rad/s^2]
    uLINK(n).c      = [0 0 0]';     % ?d?SˆÊ’u   [m]
    uLINK(n).I      = zeros(3,3);   %  [kg.m^2]
    uLINK(n).Ir     = 0.0;          % ƒ‚?[ƒ^‚Ì“d‹CŽqŠµ?«ƒ‚?[ƒ?ƒ“ƒg [kg.m^2]
    uLINK(n).gr     = 0.0;          % ƒ‚?[ƒ^‚ÌŒ¸‘¬”ä [-]
    uLINK(n).u      = 0.0;          %  ŠÖ?ßƒgƒ‹ƒN [Nm]
end

%%% ƒvƒ?ƒOƒ‰ƒ€‚ðŒ©‚â‚·‚­‚·‚é‚½‚ß?CƒŠƒ“ƒNname‚Æ“¯–¼‚Ì•Ï?”‚ÉID”Ô?†‚ðƒZƒbƒg
for n=1:length(uLINK)
    eval([uLINK(n).name,'=',num2str(n),';']);
end

%%%%%%%%% Rigid Bodys %%%%%%%%%
shape = [0.1 0.3 0.5];     % ‰œ?s‚«?C•??C?‚‚³ [m]
com   = [0 0 0.3]';        % ?d?SˆÊ’u
SetupRigidBody(BODY, shape,com);

shape = [0.2 0.1 0.02];    % ‰œ?s‚«?C•??C?‚‚³ [m]
com   = [0.05  0 -0.04]';   % ?d?SˆÊ’u
SetupRigidBody(RLEG_J5, shape,com); %Right foot

shape = [0.2 0.1 0.02];     % ‰œ?s‚«?C•??C?‚‚³ [m]
com   = [0.05  0 -0.04]';    % ?d?SˆÊ’u
SetupRigidBody(LLEG_J5, shape,com); %Left foot

shape = [0.15 0.075 0.02];     % ‰œ?s‚«?C•??C?‚‚³ [m]
com   = [0.0375  0 -0.04]';    % ?d?SˆÊ’u
SetupRigidBody(LARM_J5, shape,com); %Left Arm

shape = [0.15 0.075 0.02];     % ‰œ?s‚«?C•??C?‚‚³ [m]
com   = [0.0375  0 -0.04]';    % ?d?SˆÊ’u
SetupRigidBody(RARM_J5, shape,com); %Right Arm

shape = [0.12 0.12 0.12];     % ‰œ?s‚«?C•??C?‚‚³ [m]
com   = [0.03  0 -0.04]';    % ?d?SˆÊ’u
SetupRigidBody(Head_J2, shape,com); %Head

%%%%%%%%%%% ”ñ“ÁˆÙŽp?¨‚ÖˆÚ?s?@%%%%%%%%%%%%
uLINK(RLEG_J2).q = -10.0*ToRad;
uLINK(RLEG_J3).q = 20.0*ToRad;
uLINK(RLEG_J4).q = -10.0*ToRad;

uLINK(LLEG_J2).q = -10.0*ToRad;
uLINK(LLEG_J3).q = 20.0*ToRad;
uLINK(LLEG_J4).q = -10.0*ToRad;

uLINK(LARM_J2).q = -10.0*ToRad;
uLINK(LARM_J3).q = 20.0*ToRad;
uLINK(LARM_J4).q = -10.0*ToRad;

uLINK(RARM_J2).q = -10.0*ToRad;
uLINK(RARM_J3).q = 20.0*ToRad;
uLINK(RARM_J4).q = -10.0*ToRad;

uLINK(BODY).p = [0.0, 0.0, 0.7]'; % Position  
uLINK(BODY).R = eye(3);

ForwardKinematics(1);