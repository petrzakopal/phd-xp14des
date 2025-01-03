function [] = plotGraph(modelObj,simPrepObj,i)
% PLOT FCE
% When exportActive variable is true, graphs are going to be exported.
% Variable exportFormat - set your desired global format for exporting.
% Did not create graph creating function, because one single edit of color,
% width etc. would affect other plots, not accepted solution.
plotActive = false;
exportActive = false;
exportFormat = 'png';
isTiled = true;

fprintf('plotActive is %2i\n',plotActive);

% Getting time data for number of samples.
timeData = modelObj.tout;


ctuBlue = '#0065BD';
ctuRed = '#C60C30';
ctuGreen = '#A2AD00';
ctuYellow = '#F0AB00';
ctuGreenyBlue = '#00B2A9';
ctuLightBlue = '#6AADE4';
ctuOrange = '#E05206';

if plotActive == true
disp('FIGURE PLOT FUNCTION STARTED');


if isTiled == true
    figure('color','w','Name',string(i)+'simulation - R1='+simPrepObj(i).Variables(1,1).Value+'R2='+simPrepObj(i).Variables(1,2).Value+'L1sigma='+simPrepObj(i).Variables(1,3).Value+'L2sigma='+simPrepObj(i).Variables(1,4).Value+'Lm='+simPrepObj(i).Variables(1,5).Value,'NumberTitle','on');
    tLayout = tiledlayout(6,6);
    labelsFontSize = 10;
    titleFontSize = 10;
else
    labelsFontSize = 17;
    titleFontSize = 28;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
OmegaTimeGraph=figure('color','w','Name','{\Omega} = f(t), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.Omega,'color','#0065BD','LineWidth',2)
ylabel('{\it \Omega} (s^{-1})', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-0.14,165,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-0.1,0,-1], 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title('{\it \Omega} = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')


ylim([0 180])
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
i1Alpha_i1BetaGraph=figure('color','w','Name','{\it i}_{\alpha 1} a  {\it i}_{\beta 1} = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.i_1alpha,'color',ctuBlue,'LineWidth',2)
yyaxis left
ylabel('{\it i}_{1\alpha} (A)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-0.1,230,-1], 'Color', ctuBlue, 'Interpreter', 'tex')
set(gca,'YColor',ctuBlue)
ylim([-300 300])
yyaxis right
plot(modelObj.i_1beta,'color',ctuRed,'LineWidth',2)
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-0.1,0,-1], 'Interpreter', 'tex')
ylabel('{\it i}_{1\beta} (s^{-1})', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [1.50,230,-1], 'Color', ctuRed, 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor',ctuRed)
title('{\it i}_{1\alpha} a  {\it i}_{1\beta} = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

legend('{\it i}_{1\alpha}', '{\it i}_{1\beta}')
ylim([-300 300])
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
modulI1Graph=figure('color','w','Name','{\it i}_1 = f(t), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.i_1_alpha_beta_module,'color','#0065BD','LineWidth',2)
ylabel('{\it i}_1 (A)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-0.14,260,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-0.1,0,-1], 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title('{\it i}_1 = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

%ylim([0 180])
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
psi2Alpha_psi2BetaGraph=figure('color','w','Name','{\it i}_{\alpha 1} a  {\it i}_{\beta 1} = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.psi_2_alpha,'color',ctuBlue,'LineWidth',2)
yyaxis left
ylabel('{\it \psi}_{2\alpha} (Wb)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-0.1,0.7,-1], 'Color', ctuBlue, 'Interpreter', 'tex')
set(gca,'YColor',ctuBlue)

yyaxis right
plot(modelObj.psi_2_beta,'color',ctuRed,'LineWidth',2)
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-0.1,0,-1], 'Interpreter', 'tex')
ylabel('{\it \psi}_{2\beta} (Wb)', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [1.5,0.7,-1], 'Color', ctuRed, 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor',ctuRed)
title('{\it \psi}_{2\alpha} a  {\it \psi}_{2\beta} = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

legend('{\it \psi}_{2\alpha}', '{\it \psi}_{2\beta}' )
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
modulPsi2Graph=figure('color','w','Name','{\it i}_1 = f(t), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.psi_2_alpha_beta_module,'color','#0065BD','LineWidth',2)
ylabel('{\it \psi}_2 (Wb)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-0.14,0.7,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-0.1,0,-1], 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title('{\it \psi}_2 = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

%ylim([0 180])
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
psimAlpha_psimBetaGraph=figure('color','w','Name','{\it \psi}_{m\alpha} a  {\it \psi}_{m\beta} = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.psi_m_alpha,'color',ctuBlue,'LineWidth',2)
yyaxis left
ylabel('{\it \psi}_{m\alpha} (Wb)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-0.1,0.7,-1], 'Color', ctuBlue, 'Interpreter', 'tex')
set(gca,'YColor',ctuBlue)

yyaxis right
plot(modelObj.psi_m_beta,'color',ctuRed,'LineWidth',2)
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-0.1,0,-1], 'Interpreter', 'tex')
ylabel('{\it \psi}_{m\beta} (Wb)', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [1.5,0.7,-1], 'Color', ctuRed, 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor',ctuRed)
title('{\it \psi}_{m\alpha} a  {\it \psi}_{m\beta} = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

legend('{\it \psi}_{m\alpha}', '{\it \psi}_{m\beta}' )
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
modulPsimGraph=figure('color','w','Name','{\it \psi}_m = f(t), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.psi_m_alpha_beta_module,'color','#0065BD','LineWidth',2)
ylabel('{\it \psi}_m (Wb)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-0.1,0.7,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-0.1,0,-1], 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title('{\it \psi}_m = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

%ylim([0 180])
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
mhGraph=figure('color','w','Name','{\it M}_h = f(t), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.Mh,'color','#0065BD','LineWidth',2)
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-0.14,300,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-0.1,0,-1], 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title('{\it M}_h = f({\it t}), při skokovém připojení na síť v 0. s, zatížení {\it M}_z = 0 Nm','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

%ylim([0 180])
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
mh_dyn_nGraph=figure('color','w','Name','{\it M}_h = f(n), dynamická momentová charakteristika','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.n.data,modelObj.Mh.data,'color','#0065BD','LineWidth',2)
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-150,300,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it n} (min^{-1})', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-150,0,-1], 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title('{\it M}_h = f({\it n}), dynamická momentová charakteristika','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

%ylim([0 180])
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
mhStat_nGraph=figure('color','w','Name','{\it M}_h = f(n), statická momentová charakteristika','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.n.data,modelObj.mh_static.data,'color','#0065BD','LineWidth',2)
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-150,300,-1], 'Color', '#000000', 'Interpreter', 'tex')
xlabel('{\it n} (min^{-1})', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-150,0,-1], 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor','#000000')
title('{\it M}_h = f({\it n}), statická momentová charakteristika','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

%ylim([0 180])
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == true
nexttile
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isTiled == false
mh_mhStat_Dyn_nGraph=figure('color','w','Name','Porovnání dynamické a statické momentové charakteristiky {\it M}_h = f({\it n})','NumberTitle','on');
set(gcf,'Position',[164 139 1244 639])
end
plot(modelObj.n.data,modelObj.Mh.data,'color','#0065BD','LineWidth',2)
yyaxis left
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize,'rotation',0, 'Position', [-150,320,-1], 'Color', ctuBlue, 'Interpreter', 'tex')
set(gca,'YColor',ctuBlue)
ylim([-150 400])


yyaxis right
plot(modelObj.n.data,modelObj.mh_static.data,'color',ctuRed,'LineWidth',2)
xlabel('{\it t} (s)', 'FontName', 'Times New Roman', 'FontSize', labelsFontSize, 'Position',[-80,0,-1], 'Interpreter', 'tex')
ylabel('{\it M}_h (Nm)', 'FontName', 'Times New Roman', 'FontSize', 17,'rotation',0, 'Position', [1700,340,-1], 'Color', ctuRed, 'Interpreter', 'tex')

set(gca,'FontSize', labelsFontSize,'FontName','Times New Roman','YColor',ctuRed)
title('Porovnání dynamické a statické momentové charakteristiky {\it M}_h = f({\it n})','FontName', 'Times New Roman', 'FontSize', titleFontSize, 'Interpreter', 'tex')

legend({'dynamická momentová charakteristika','statická momentová charakteristika'},'Location', 'northwest')
ylim([-150 400])
grid on;
grid minor;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('ALL FIGURES CREATED');
end


% Export Section
if exportActive == true
disp('EXPORT STARTED');
saveas(OmegaTimeGraph,'graph/OmegaTimeGraph',exportFormat);
saveas(i1Alpha_i1BetaGraph,'graph/i1Alpha_i1BetaGraph',exportFormat);
saveas(modulI1Graph,'graph/modulI1Graph',exportFormat);
saveas(psi2Alpha_psi2BetaGraph,'graph/psi2Alpha_psi2BetaGraph',exportFormat);
saveas(modulPsi2Graph,'graph/modulPsi2Graph',exportFormat);
saveas(psimAlpha_psimBetaGraph,'graph/psimAlpha_psimBetaGraph',exportFormat);
saveas(modulPsimGraph,'graph/modulPsimGraph',exportFormat);
saveas(mhGraph,'graph/mhGraph',exportFormat);
%saveas(mh_nGraph,'graph/mh_nGraph',exportFormat);
%saveas(mhStat_nGraph,'graph/mhStat_nGraph',exportFormat);
%saveas(mh_mhStat_nGraph,'graph/mh_mhStat_nGraph',exportFormat);
disp('EXPORT COMPLETED');
end

disp('FUNCTION COMPLETED');
end

