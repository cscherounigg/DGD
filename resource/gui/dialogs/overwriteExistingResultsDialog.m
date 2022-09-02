%{
    Copyright (C) 2022  Christoph Scherounigg

    This file is part of DeepGeoDoublet.

    DeepGeoDoublet is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or (at 
    your option) any later version.

    This program is distributed in the hope that it will be useful, but 
    WITHOUT ANY WARRANTY; without even the implied warranty of 
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
%}

function decision = overwriteExistingResultsDialog(figure)
%OVERWRITEEXISTINGRESULTSDIALOG Summary of this function goes here
%   Detailed explanation goes here
decision = uiconfirm(figure, 'For this Task a set of results already exists on disk. Executing a new simulation will overwrite the existing set. Continue?',...
                'Exiting', 'Icon', 'warning', 'Options', {'Yes', 'No'}, 'CancelOption', 2);
end

