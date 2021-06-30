function send_intruction(initial_point,final_point)

ModelName='Simulation_straight_line';
robotJ1a='/AnguloInicial';
robotJ1b='/AnguloFinal';
robotJ2a='/AnguloInicial1';
robotJ2b='/AnguloFinal1';
robotJ3a='/AnguloInicial2';
robotJ3b='/AnguloFinal2';
robotJ5a='/AnguloInicial3';
robotJ5b='/AnguloFinal3';
robotJ6a='/AnguloInicial4';
robotJ6b='/AnguloFinal4';





% robotJ5='/Slider Gain3';
% robotJ6='/Slider Gain4';
% robotJefector='/Slider Gain5';% no se usa?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%poner esos en el function start de la gui%%%%%%%%
% load_system('robot_Rva2j');
% vrview('robot_Rva2j#test');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pause(3)
% set_param('robot_Rva2j', 'SimulationCommand', 'start');


set_param([ModelName robotJ1a],'Value',num2str(initial_point(1)));
set_param([ModelName robotJ2a],'Value',num2str(initial_point(2)));
set_param([ModelName robotJ3a],'Value',num2str(initial_point(3)));
set_param([ModelName robotJ5a],'Value',num2str(initial_point(4)));
set_param([ModelName robotJ6a],'Value',num2str(initial_point(5)));


% set_param('robot_Rva2j', 'SimulationCommand', 'start');

set_param([ModelName robotJ1b],'Value',num2str(final_point(1)));
set_param([ModelName robotJ2b],'Value',num2str(final_point(2)));
set_param([ModelName robotJ3b],'Value',num2str(final_point(3)));
set_param([ModelName robotJ5b],'Value',num2str(final_point(4)));
set_param([ModelName robotJ6b],'Value',num2str(final_point(5)));
set_param('Simulation_straight_line', 'SimulationCommand', 'start');
pause(5)

set_param('Simulation_straight_line', 'SimulationCommand', 'stop');


    

    
    
    
    
    
    



end



   
              

            
              
    
        









