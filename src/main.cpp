/**********************************************************************
main.cpp - Sieve
 
Copyright (C) 2005-2010 by Silicos NV
 
This file is part of the Open Babel project.
For more information, see <http://openbabel.sourceforge.net/>
 
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation version 2 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
***********************************************************************/



#include <options.h>
#include <parseCommandLine.h>
#include <calculator.h>
#include <counter.h>



int main (int argc, char* argv[])
{
   	// Parse command line
   	Options* uo = new Options();
  	parseCommandLine(argc, argv, uo);
   	version();
  
   	// Initiate the filter cards
   	Calculator filter;
   	std::cerr << "## INITIATING FILTER PARAMETERS ##" << std::endl << std::endl;
  	filter.ParseFilterFile(uo->GetFilterFilename(), uo);

   	// Filter
   	Counter counts = filter.Calculate(uo);
	std::cerr << "CALCULATED" << std::endl; 
   	std::cerr << std::endl << counts.Results();
   	std::cerr << "## FINISHED CALCULATIONS ##" << std::endl << std::endl;

   	// Return
   	delete uo;
   	uo = NULL;
   	return 0;
}
