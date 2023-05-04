function h_lineseries=semilogx(varargin)

%Call the builtin graphic function
h_lineseries=builtin('semilogx', varargin{:});
    
setgraph;


end