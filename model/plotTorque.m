function [] = plotTorque(modelObj,simPrepObj)



exportActive = false;
exportFormat = 'png';
labelsFontSize = 17;
titleFontSize = 28;

% Getting time data for number of samples.
timeData = modelObj.tout;


ctuBlue = '#0065BD';
ctuRed = '#C60C30';
ctuGreen = '#A2AD00';
ctuYellow = '#F0AB00';
ctuGreenyBlue = '#00B2A9';
ctuLightBlue = '#6AADE4';
ctuOrange = '#E05206';

% R2 change
graphName = '{\it M}_h = f(n), torque characteristics with the change of rotor rezistance';
mh_dyn_nGraphR2=figure('color','w','Name',graphName,'NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
hold on;
plot(modelObj(1).n.data,modelObj(1).Mh.data,'color','#0065BD','LineWidth',2)
plot(modelObj(2).n.data,modelObj(2).Mh.data,'color',ctuRed,'LineWidth',2)
plot(modelObj(3).n.data,modelObj(3).Mh.data,'color',ctuGreen,'LineWidth',2)
hold off;
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-150,300,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it n} (min^{-1})', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-150,0,-1], 'Interpreter', 'tex')
set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title(graphName,'FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')
%ylim([0 180])
grid on;
grid minor;
legend({'{\it R}_2= '+string(simPrepObj(1).Variables(1,2).Value),'{\it R}_2= '+string(simPrepObj(2).Variables(1,2).Value),'{\it R}_2= '+string(simPrepObj(3).Variables(1,2).Value)},'Location', 'northeast')


% R1 change
graphName = '{\it M}_h = f(n), torque characteristics with the change of stator rezistance';
mh_dyn_nGraphR1=figure('color','w','Name',graphName,'NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
hold on;
plot(modelObj(1).n.data,modelObj(1).Mh.data,'color','#0065BD','LineWidth',2)
plot(modelObj(4).n.data,modelObj(4).Mh.data,'color',ctuRed,'LineWidth',2)
plot(modelObj(5).n.data,modelObj(5).Mh.data,'color',ctuGreen,'LineWidth',2)
hold off;
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-150,300,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it n} (min^{-1})', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-150,0,-1], 'Interpreter', 'tex')
set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title(graphName,'FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')
%ylim([0 180])
grid on;
grid minor;
legend({'{\it R}_1= '+string(simPrepObj(1).Variables(1,1).Value),'{\it R}_1= '+string(simPrepObj(4).Variables(1,1).Value),'{\it R}_1= '+string(simPrepObj(5).Variables(1,1).Value)},'Location', 'northeast')


% L1sigma change
graphName = '{\it M}_h = f({\it n}), torque characteristics with the change of stator leakage inductance';
mh_dyn_nGraphL1sigma=figure('color','w','Name',graphName,'NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
hold on;
plot(modelObj(1).n.data,modelObj(1).Mh.data,'color','#0065BD','LineWidth',2)
plot(modelObj(8).n.data,modelObj(8).Mh.data,'color',ctuRed,'LineWidth',2)
plot(modelObj(9).n.data,modelObj(9).Mh.data,'color',ctuGreen,'LineWidth',2)
hold off;
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-150,300,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it n} (min^{-1})', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-150,0,-1], 'Interpreter', 'tex')
set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title(graphName,'FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')
%ylim([0 180])
grid on;
grid minor;
legend({'{\it L}_{1\sigma}= '+string(simPrepObj(1).Variables(1,3).Value),'{\it L}_{1\sigma}= '+string(simPrepObj(8).Variables(1,3).Value),'{\it L}_{1\sigma}= '+string(simPrepObj(9).Variables(1,3).Value)},'Location', 'northeast')

% L2sigma change
graphName = '{\it M}_h = f({\it n}), torque characteristics with the change of rotor leakage inductance';
mh_dyn_nGraphL2sigma=figure('color','w','Name',graphName,'NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
hold on;
plot(modelObj(1).n.data,modelObj(1).Mh.data,'color','#0065BD','LineWidth',2)
plot(modelObj(10).n.data,modelObj(10).Mh.data,'color',ctuRed,'LineWidth',2)
plot(modelObj(11).n.data,modelObj(11).Mh.data,'color',ctuGreen,'LineWidth',2)
hold off;
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-150,300,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it n} (min^{-1})', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-150,0,-1], 'Interpreter', 'tex')
set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title(graphName,'FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')
%ylim([0 180])
grid on;
grid minor;
legend({'{\it L}_{2\sigma}= '+string(simPrepObj(1).Variables(1,4).Value),'{\it L}_{2\sigma}= '+string(simPrepObj(10).Variables(1,4).Value),'{\it L}_{2\sigma}= '+string(simPrepObj(11).Variables(1,4).Value)},'Location', 'northeast')

% Lm change
graphName = '{\it M}_h = f({\it n}), torque characteristics with the change of magnetizing inductance';
mh_dyn_nGraphLm=figure('color','w','Name',graphName,'NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
hold on;
plot(modelObj(1).n.data,modelObj(1).Mh.data,'color','#0065BD','LineWidth',2)
plot(modelObj(6).n.data,modelObj(6).Mh.data,'color',ctuRed,'LineWidth',2)
plot(modelObj(7).n.data,modelObj(7).Mh.data,'color',ctuGreen,'LineWidth',2)
hold off;
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-150,300,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it n} (min^{-1})', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-150,0,-1], 'Interpreter', 'tex')
set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title(graphName,'FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')
%ylim([0 180])
grid on;
grid minor;
legend({'{\it L}_{m}= '+string(simPrepObj(1).Variables(1,5).Value),'{\it L}_{m}= '+string(simPrepObj(6).Variables(1,5).Value),'{\it L}_{m}= '+string(simPrepObj(7).Variables(1,5).Value)},'Location', 'northeast')


% Export Section
if exportActive == true
disp('EXPORT STARTED');
saveas(mh_dyn_nGraphR2,'graph/mh_dyn_nGraphR2',exportFormat);
saveas(mh_dyn_nGraphR1,'graph/mh_dyn_nGraphR1',exportFormat);
saveas(mh_dyn_nGraphL1sigma,'graph/mh_dyn_nGraphL1sigma',exportFormat);
saveas(mh_dyn_nGraphL2sigma,'graph/mh_dyn_nGraphL2sigma',exportFormat);
saveas(mh_dyn_nGraphLm,'graph/mh_dyn_nGraphLm',exportFormat);
disp('EXPORT COMPLETED');
end

end
