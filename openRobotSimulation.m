function openRobotSimulation(th1,th2,th3,th5,th6)
%open simulation
% uiopen('robot.mdl',1);

load_system('robot');

if(th1>0 || th2>0 || th3>0 ||th5>0||th6>0)
    th1=num2str(th1);
    th2=num2str(th2);
    th3=num2str(th3);
    th5=num2str(th5);
    th6=num2str(th6);
    set_param('robot/bb1','Value',th1)
    set_param('robot/b1b2','Value',th2);
    set_param('robot/b2b3','Value',th3);
    set_param('robot/b3b4','Value',th5);
    set_param('robot/b4fl','Value',th6);
else
set_param('robot/bb1','Value','0')
set_param('robot/b1b2','Value','0');
set_param('robot/b2b3','Value','0');
set_param('robot/b3b4','Value','0');
set_param('robot/b4fl','Value','0');
w = vrworld('robot_nou');
open(w);
view(w);
end


set_param('robot/Motion_Subsystem/bb1_speed','Value','25');
set_param('robot/Motion_Subsystem/b1b2_speed','Value','0');
set_param('robot/Motion_Subsystem/b2b3_speed','Value','0');
set_param('robot/Motion_Subsystem/b3b4_speed','Value','0');
set_param('robot/Motion_Subsystem/b4fl_speed','Value','0');
set_param('robot/second','Value','3');
bb1_s=get_param('robot/bb1','Value');
set_param('robot/Motion_Subsystem/bb1_time','Value','0');
set_param('robot/Motion_Subsystem/bb1_s','Value',bb1_s);
b1b2_s=get_param('robot/b1b2','Value');
set_param('robot/Motion_Subsystem/b1b2_time','Value','0');
set_param('robot/Motion_Subsystem/b1b2_s','Value',b1b2_s);
b2b3_s=get_param('robot/b2b3','Value');
set_param('robot/Motion_Subsystem/b2b3_time','Value','0');
set_param('robot/Motion_Subsystem/b2b3_s','Value',b2b3_s);
b3b4_s=get_param('robot/b3b4','Value');
set_param('robot/Motion_Subsystem/b3b4_time','Value','0');
set_param('robot/Motion_Subsystem/b3b4_s','Value',b3b4_s);
b4fl_s=get_param('robot/b4fl','Value');
set_param('robot/Motion_Subsystem/b4fl_time','Value','0');
set_param('robot/Motion_Subsystem/b4fl_s','Value',b4fl_s);

set_param('robot', 'SimulationCommand', 'start')

% Obtain vrworld and construct canvas
%w = vrworld('robot_nou');
%open(w);
%view(w);

end
