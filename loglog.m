function h_lineseries=loglog(varargin)


%Call the builtin graphic function
h_lineseries=builtin('loglog', varargin{:});
    
setgraph;


end