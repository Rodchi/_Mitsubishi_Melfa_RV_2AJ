%tratatr de enviar un vacio ''
classdef RobotUwU2    
    methods(Static)

        function IniciarComu(puerto)
            % Se inicializa el puerto del serial, con todos los valores
            % para que se parezca al serial del robot
            
             delete(instrfindall); % vacia todos los com
             UwUserial=serial(puerto);%serial en el puerto
             set(UwUserial,'BaudRate',9600,'DataBits',8);%datos del serial
             UwUserial.StopBits= 1; % bit de parada
             UwUserial.Parity= 'none'; %paridad
             fopen(UwUserial);%abre el puerto
             pause(0.1); %deja tiempo para enviar
             UwUserial.Terminator = 'CR'; %terminador carro
            get(UwUserial);% obtiene las propiedades del com
            pause(0.1);
            save Mypuerto UwUserial %salvar el puerto
            
        end
        
        %%%%%%%%%%%%%%%%%%%%%%%%
        %test
          function escribire
              load Mypuerto UwUserial 
                 fprintf(UwUserial,'lololo');
                 
          end

           %%%%%%%%%%%%%%%%%%%
          % envia ordenes al robot
          function ordenRobot(ordenaqui)
               load Mypuerto UwUserial %se carga el peurto que usamos
              orden=['1;1;',ordenaqui] %se acorta la orden pegando el 1;1
              fprintf(UwUserial,'%s\r',orden); %se nvia atraves del serial
               pause(0.1);
              temp=fgets(UwUserial)%obtenemos la confiramcion
              pause(0.3);
          end
          
          
           %%%%%%%%%%%%%%%%%%%
          %posicion actual del robot
              function posicionActual
                     load Mypuerto UwUserial %se carga el puerto que se usa
                    RobotUwU2.ordenRobot('CNTLON'); %envia esto
                %    temp=fscanf(UwUserial)%obtenemos la confiramcion
                     RobotUwU2.ordenRobot('PPOSF');
                   %  RobotUwU2.ordenRobot('CNTLON'); %envia esto
                   temp=fgets(UwUserial)%obtenemos la confiramcion
                     pause(0.8);
                     %temp1=split(temp,';');
                     %    ['X= ', temp1(2)]
                    % postemp=['X= ',temp1(2),' Y= ',temp1(4),' Z= ',temp1(6),' A= ',temp1(8),' B= ',temp1(10)]       
              end
               
          %%%%%%%%%%%%%%%%%%%
          %mover uniones
          function goToJoint (J1,J2,J3,J5,J6)
                RobotUwU2.ordenRobot('CNTLON');
                RobotUwU2.ordenRobot('SRVON');
                RobotUwU2.ordenRobot('OVRD=20');              
                tempp1=['EXECJ1=',RobotUwU2.PuntoANum(P1)]
                RobotUwU2.ordenRobot(tempp1);
                RobotUwU2.ordenRobot('EXECMOV J1');
                RobotUwU2.ordenRobot('CNTLON');
            %RobotUwU2.ordenRobot('CNTLON');
               RobotUwU2.ordenRobot('SRVON');
          end
          
 
           %%%%%%%%%%%%%%%%%%%%
          % se dibuja un cuadrado con una longitud de L
          function drawASquare (P1,L)
              
              P2=[P1(1)+L P1(2) P1(3) P1(4) P1(5)] %se suman la lognitud atraves de los ejes
              P3=[P1(1)+L P1(2)+L P1(3) P1(4) P1(5)]
              P4=[P1(1) P1(2)+L P1(3) P1(4) P1(5)]
              
              RobotUwU2.goTo(P1)
           %   RobotUwU2.goTo(P1)
              
              RobotUwU2.goTo(P2)
        %      RobotUwU2.goTo(P2)
              
              RobotUwU2.goTo(P3)
         %     RobotUwU2.goTo(P3)
              
              RobotUwU2.goTo(P4)
         %     RobotUwU2.goTo(P4)
         
                RobotUwU2.goTo(P1)


          end
          
          
          %%%%%%%%%%%%%%%%%%%%%%%
          % se mueve de punto a punto atraves de iteraciones
          function drawALine(P1a,P2a,iteraciones)
              
             
              P1=[P1a(1) P1a(2) P1a(3) P1a(4) P1a(5)] %pi se fragmenta para evaluar individual
              
              % las distancias entre el punto 1 y punto 2
              distanciaX= P2a(1)-P1(1); 
              distanciaY= P2a(2)-P1(2);
              distanciaZ= P2a(3)-P1(3);
              distanciaA= P2a(4)-P1(4);
              distanciaB= P2a(5)-P1(5);
           
              % la diferencia de las distancias partidas en interaciones
              distanciaX=distanciaX/iteraciones;
              distanciaY=distanciaY/iteraciones;
              distanciaZ=distanciaZ/iteraciones;
              distanciaA=distanciaA/iteraciones;
              distanciaB=distanciaB/iteraciones;
              
              
              temp1=RobotUwU2.PuntoANum(P1a); %muestra P1
              temp=RobotUwU2.PuntoANum(P2a); % muestra P2
              x=['de = ',temp1,' ir a ', temp] 
              
              for a = 1:iteraciones %inicio de iteraciones desde 1 a N
                  
                  %a la posicion actual se le va sumando la diferencia por
                  %cada iteracion que pase, esto es multiplicandolo con a
                  %para subbir su valor
                  P1x=P1a(1)+distanciaX*a; 
                  P1y=P1a(2)+distanciaY*a;
                  P1z=P1a(3)+distanciaZ*a;
                  P1aa=P1a(4)+distanciaA*a;
                  P1b=P1a(5)+distanciaB*a;
                  
                  %se obtiene el punto a mover en eta iteracion
                  P1=[P1x P1y P1z P1aa P1b]
                  
                  %enviar al robot
                  
                  
                  pause(0.5);%insertar punto de esperar
   
              end
        
          end
          
          
          %%%%%%%%%%%%%%%%%%%%%%
          % le ordena al robot ir de un punto a otro
          function goTo(P1)
              
              RobotUwU2.ordenRobot('CNTLON');
              pause(0.2);
              RobotUwU2.ordenRobot('SRVON');
              pause(0.2);
              RobotUwU2.ordenRobot('OVRD=20');     
              pause(0.2);
              tempp1=['EXECP1=',RobotUwU2.PuntoANum(P1),'(6,0)']
              RobotUwU2.ordenRobot(tempp1);
              pause(0.2);
              RobotUwU2.ordenRobot('EXECMOV P1');
              pause(0.2);
              RobotUwU2.ordenRobot('CNTLON');
              pause(0.2);
           RobotUwU2.ordenRobot('CNTLON');
              RobotUwU2.ordenRobot('SRVON');
              pause(0.2);
          end
          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          %Otro punto de prueba
          function goTo2(P1)
              RobotUwU2.ordenRobot('CNTLON');
              RobotUwU2.ordenRobot('');
              RobotUwU2.ordenRobot('SRVON');
              RobotUwU2.ordenRobot('');
              RobotUwU2.ordenRobot('OVRD=20');
              RobotUwU2.ordenRobot('');
              tempp1=['EXECP1=',RobotUwU2.PuntoANum(P1),'(6,0)']
              RobotUwU2.ordenRobot(tempp1);
              RobotUwU2.ordenRobot('');
              RobotUwU2.ordenRobot('EXECMOV P1');
              RobotUwU2.ordenRobot('');
             % RobotUwU2.ordenRobot('CNTLON');
           %RobotUwU2.ordenRobot('CNTLON');
             % RobotUwU2.ordenRobot('SRVON');
          end
          
          %%%%%%%%%%%%%%%%%%%%%%
          % Transforma una matriz a un punto string
          function punto=PuntoANum(P)
           
              punto=['(',num2str(P(1)),',',num2str(P(2)),',',num2str(P(3)),',',num2str(P(4)),',',num2str(P(5)),')']
             
          end
          
         %%%%%%%%%%%%%%%%%%%%%%%
         % se cierra el puerto de comunicacion
          function cerrarCOMS
               load Mypuerto UwUserial                
               fclose (UwUserial)%cierra serial
               delete(UwUserial);
               delete Mypuerto.mat
          end
          
         
    end
end