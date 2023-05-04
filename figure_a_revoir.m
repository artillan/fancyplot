function h_fig=figure(varargin)

h_fig=builtin('figure', varargin{:});
%Eventually, customize the figure
ptype=getpref('fancyplot','plottype','matlab');
if ~strcmpi(ptype, 'matlab')
    set(h_fig,'Units','Normalized','Position',[0.15 0.65 0.25 0.25]);
end

end