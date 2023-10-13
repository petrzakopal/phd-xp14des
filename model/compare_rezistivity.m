ctuBlue = '#0065BD';
ctuRed = '#C60C30';
ctuGreen = '#A2AD00';
ctuYellow = '#F0AB00';
ctuGreenyBlue = '#00B2A9';
ctuLightBlue = '#6AADE4';

exportFormat = 'png';

omegaFirst=readtable('csv/omega_wanted_real.csv', 'PreserveVariableNames',true);
omegaSecond=readtable('csv/double-rezistance/omega_wanted_real.csv', 'PreserveVariableNames',true);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GraphName='Porovnání úhlové rychlosti {\it \Omega} beze změny a se změnou rotorového odporu';
omega_compareGraph=figure('color','w','Name',GraphName,'NumberTitle','on');
set(gcf,'Position',[164 139 1744 639])
plot(omegaFirst.Var1,omegaFirst.Var3,'color',ctuBlue,'LineWidth',2)
yyaxis left
ylabel('{\it \Omega}_{normal} (s^{-1})', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [-0.085,105,-1], 'Color', ctuBlue, 'Interpreter', 'tex')
set(gca,'YColor',ctuBlue)
ylim([0 120])
yyaxis right
plot(omegaSecond.Var1,omegaSecond.Var3,'color',ctuRed,'LineWidth',2)
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', 17, 'Position',[-0.05,0,-1], 'Interpreter', 'tex')
ylabel('{\it \Omega}_{inc. rez.} (s^{-1})', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [1.378,95,-1], 'Color', ctuRed, 'Interpreter', 'tex')

set(gca,'FontSize', 20,'FontName','Times New Roman','YColor',ctuRed)
title(GraphName,'FontName', 'Times New Roman', 'FontSize', 28, 'Interpreter', 'tex')
ylim([0 120])
xlim([0 1.3])
legend('{\it \Omega}_{normal}', '{\it \Omega}_{increased rezistivity}', 'Location', 'northwest' )
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i_1_moduleFirst=readtable('csv/i_1_module.csv', 'PreserveVariableNames',true);
i_1_moduleSecond=readtable('csv/double-rezistance/i_1_module.csv', 'PreserveVariableNames',true);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GraphName='Porovnání velikosti vektoru statorového proudu {\it i}_1 beze změny a se změnou rotorového odporu';
current_compareGraph=figure('color','w','Name',GraphName,'NumberTitle','on');
set(gcf,'Position',[164 139 1744 639])
plot(i_1_moduleFirst.Var1,i_1_moduleFirst.Var2,'color',ctuBlue,'LineWidth',2)
yyaxis left
ylabel('{\it i}_{1 normal} (A)', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [-0.085,26.5,-1], 'Color', ctuBlue, 'Interpreter', 'tex')
set(gca,'YColor',ctuBlue)
%ylim([0 120])
yyaxis right
plot(i_1_moduleSecond.Var1,i_1_moduleSecond.Var2,'color',ctuRed,'LineWidth',2)
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', 17, 'Position',[-0.05,0,-1], 'Interpreter', 'tex')
ylabel('{\it i}_{1 inc. rez.} (A)', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [1.378,29,-1], 'Color', ctuRed, 'Interpreter', 'tex')

set(gca,'FontSize', 20,'FontName','Times New Roman','YColor',ctuRed)
title(GraphName,'FontName', 'Times New Roman', 'FontSize', 28, 'Interpreter', 'tex')
%ylim([0 40])
xlim([0 1.3])
legend('{\it i}_{1 normal}', '{\it i}_{1 increased rezistivity}', 'Location', 'northwest' )
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Psi_2_wanted_realFirst=readtable('csv/Psi_2_wanted_real.csv', 'PreserveVariableNames',true);
Psi_2_wanted_realSecond=readtable('csv/double-rezistance/Psi_2_wanted_real.csv', 'PreserveVariableNames',true);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GraphName='Porovnání velikosti vektoru rotorového toku {\it \psi}_2 beze změny a se změnou rotorového odporu';
psi_compareGraph=figure('color','w','Name',GraphName,'NumberTitle','on');
set(gcf,'Position',[164 139 1744 639])
plot(Psi_2_wanted_realFirst.Var1,Psi_2_wanted_realFirst.Var3,'color',ctuBlue,'LineWidth',2)
yyaxis left
ylabel('{\it \psi}_{2 normal} (Wb)', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [-0.095,0.815,-1], 'Color', ctuBlue, 'Interpreter', 'tex')
set(gca,'YColor',ctuBlue)
%ylim([0 120])
yyaxis right
plot(Psi_2_wanted_realSecond.Var1,Psi_2_wanted_realSecond.Var3,'color',ctuRed,'LineWidth',2)
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', 17, 'Position',[-0.05,0,-1], 'Interpreter', 'tex')
ylabel('{\it \psi}_{2 inc. rez.} (Wb)', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [1.390,0.785,-1], 'Color', ctuRed, 'Interpreter', 'tex')

set(gca,'FontSize', 20,'FontName','Times New Roman','YColor',ctuRed)
title(GraphName,'FontName', 'Times New Roman', 'FontSize', 28, 'Interpreter', 'tex')
%ylim([0 40])
xlim([0 1.3])
legend('{\it \psi}_{2 normal}', '{\it \psi}_{2 increased rezistivity}', 'Location', 'northwest' )
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


MhFirst=readtable('csv/Mh.csv', 'PreserveVariableNames',true);
MhSecond=readtable('csv/double-rezistance/Mh.csv', 'PreserveVariableNames',true);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GraphName='Porovnání velikosti hnacího momentu {\it M}_h motoru beze změny a se změnou rotorového odporu';
Mh_compareGraph=figure('color','w','Name',GraphName,'NumberTitle','on');
set(gcf,'Position',[164 139 1744 639])
plot(MhFirst.Var1,MhFirst.Var2,'color',ctuBlue,'LineWidth',2)
yyaxis left
ylabel('{\it M}_{h normal} (Nm)', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [-0.0958,63,-1], 'Color', ctuBlue, 'Interpreter', 'tex')
set(gca,'YColor',ctuBlue)
ylim([-100 120])
yyaxis right
plot(MhSecond.Var1,MhSecond.Var2,'color',ctuRed,'LineWidth',2)
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', 17, 'Position',[-0.05,0,-1], 'Interpreter', 'tex')
ylabel('{\it M}_{h inc. rez.} (Nm)', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [1.382,35.5,-1], 'Color', ctuRed, 'Interpreter', 'tex')

set(gca,'FontSize', 20,'FontName','Times New Roman','YColor',ctuRed)
title(GraphName,'FontName', 'Times New Roman', 'FontSize', 28, 'Interpreter', 'tex')
ylim([-100 120])
xlim([0 1.3])
legend('{\it M}_{h normal}', '{\it M}_{h increased rezistivity}', 'Location', 'northwest' )
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%saveas(omega_compareGraph,'graph/compare_rezistivity/omega_compareGraph',exportFormat);
%saveas(current_compareGraph,'graph/compare_rezistivity/current_compareGraph',exportFormat);
%saveas(psi_compareGraph,'graph/compare_rezistivity/psi_compareGraph',exportFormat);
%saveas(Mh_compareGraph,'graph/compare_rezistivity/Mh_compareGraph',exportFormat);