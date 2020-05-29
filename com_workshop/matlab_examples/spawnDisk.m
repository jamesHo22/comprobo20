function spawnBox(modelName, x, y, z, m, r, l)
% TODO: controrl width height length and start position
system(['source ~/catkin_ws/devel/setup.bash; rosrun xacro xacro ~/catkin_ws/src/comprobo18/com_workshop/urdf/blueCylinder.xacro',...
        ' mass:=',num2str(m),...
        ' radius:=',num2str(r),...
        ' length:=',num2str(l),...
        '| rosrun gazebo_ros spawn_model -stdin',...
        ' -model ',modelName,...
        ' -urdf -x ', num2str(x),...
        ' -y ', num2str(y),...
        ' -z ', num2str(z)]);
end