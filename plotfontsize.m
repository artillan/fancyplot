function plotfontsize(propVal)

if ~(strcmpi(propVal,'') ||...
     strcmpi(propVal,'small') ||...
     strcmpi(propVal,'normal') ||...
        strcmpi(propVal,'big'))
    error('plotTypeVal undefined')
end

if ispref('fancyplot','plottype')
    setpref('fancyplot','plotfontsize',propVal) 
else
    addpref('fancyplot','plotfontsize',propVal)
end
end