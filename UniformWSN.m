function WSN = UniformWSN(WSN)

% This function generats a WSN coordinates in 2D plan. the coordinates x
% and y follow a Uniform spatial distribution. 
%
%
% WSN : Sensor Nodes data structure.
% WSN.M : Number of sensor nodes.
% WSN.R : Cluster radius.
% WSN.x : x coordinates of the sensor node locations.
% WSN.y : y coordinates of the sensor node locations.

    WSN.x=(rand(1,WSN.M)-0.5)*2*WSN.R; 
    WSN.y=(rand(1,WSN.M)-0.5)*2*WSN.R;
    I=0;

    while ~isempty(I)
        I=find(WSN.x.^2+WSN.y.^2>WSN.R^2);
        WSN.x(I)=(rand(1,length(I))-0.5)*2*WSN.R;
        WSN.y(I)=(rand(1,length(I))-0.5)*2*WSN.R;
    end

end