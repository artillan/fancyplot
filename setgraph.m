function setgraph(varargin)

% p = inputParser;
% p.addParamValue('ModifyLine', true);
% p.parse(varargin{:});
% p.Results.ModifyLine

ptype=getpref('fancyplot','plottype','matlab');

if ~strcmpi(ptype, 'matlab')
        
    %Set figure
    set(gcf, 'Color', 'w');
    
    %Set axes
    ax = gca;
    set(ax, ...
        'GridLineStyle',':', ...
        'XGrid','on', ...
        'XMinorGrid', 'off', ...
        'YGrid','on')
    
    %Set Font Size
    pfontsize=getpref('fancyplot','plotfontsize','normal');
    if strcmpi(pfontsize, 'small')
        set(ax, 'FontWeight','bold', 'FontSize',8);
        set(get(ax,'XLabel'),'FontWeight','bold','FontSize',8);
        set(get(ax,'YLabel'),'FontWeight','bold','FontSize',8);
        set(get(ax,'ZLabel'),'FontWeight','bold','FontSize',8);
    elseif strcmpi(pfontsize, 'normal')
        set(ax, 'FontWeight','bold', 'FontSize',16);
        h_children=get(gcf, 'Children'); h_legend=h_children(strcmpi(get(h_children, 'Tag'), 'legend'));
        set(h_legend,'FontWeight','bold','FontSize',6);
        set(get(ax,'XLabel'),'FontWeight','bold','FontSize',16);
        set(get(ax,'YLabel'),'FontWeight','bold','FontSize',16);
        set(get(ax,'ZLabel'),'FontWeight','bold','FontSize',16);
    elseif strcmpi(pfontsize, 'big')
        set(ax, 'FontWeight','bold', 'FontSize',28);
        set(get(ax,'XLabel'),'FontWeight','bold','FontSize',28);
        set(get(ax,'YLabel'),'FontWeight','bold','FontSize',28);
        set(get(ax,'ZLabel'),'FontWeight','bold','FontSize',28);
    end
%     hold('on')
    
    %Configure Lines
    h_lineseries=get(ax,'Children');
    h_lineseries=h_lineseries(strcmp(get(h_lineseries, 'Type'), 'line'));
    
    LineSpecOrder={'-', '--', ':', '-.'};
    ColorOrder={'b', 'r', 'k', 'g', 'm', 'c'};
        
    for ind=1:length(h_lineseries)
        hL=h_lineseries(end-ind+1);  %attention, les handlers sont dans l'ordre inverse de creation des courbes
        %Get graph2d.plottype or create this preference with default value 'monochrome'
        
        if strcmpi(ptype, 'monochrome')
            set(hL, 'LineStyle', LineSpecOrder{1+rem(ind-1, length(LineSpecOrder))}); %Apres avoir atteint l'index max, on revient a 1
            set(hL, 'LineWidth', 2);
            set(hL, 'Color', 'k');
            
        elseif strcmpi(ptype, 'color')
            set(hL, 'LineStyle', '-'); %Apres avoir atteint l'index max, on revient a 1
            set(hL, 'LineWidth', 2);
            set(hL, 'Color', ColorOrder{1+rem(ind-1, length(ColorOrder))});
            
        elseif strcmpi(ptype, 'cool')
            set(hL, 'LineWidth', 2);
            
        end
        
    end
    
    %Display/Update legend
    %     hLegend = findobj(gcf, 'Type', 'Legend');
    %     hLegend = findobj('type','legend')
    %     set(hLegend,'visible','off')
    %     set(hLegend,'visible','on')
    
    
    l = legend; set(l, 'Interpreter', 'none')

    %      set(findobj('type','legend'),'visible','off')
    %     set(findobj('type','legend'),'visible','on')
    
end

% drawnow

end