include <imports/puzzlecutlib.scad>

import("lightbox_2m_front.svg", center=true);
module cutInTwo()
{
	translate([5,0,0])
		yMaleCut() drawDemoObject();

	translate([-5,0,0])
		yFemaleCut() drawDemoObject();
}

stampSize = [500,3,3];		//size of cutting stamp (should cover 1/2 of object)

cutSize = 4;	//size of the puzzle cuts

xCut1 = [-64, -8, 8, 27, 45, 64];	//locations of puzzle cuts relative to X axis center
yCut1 = [-64, -8, 8, 64];				//for Y axis

kerf = 0;		//supports +/- numbers (greater value = tighter fit)
					//using a small negative number may be useful to assure easy fit for 3d printing
					//using positive values useful for lasercutting
					//negative values can also help visualize cuts without seperating pieces

cutInTwo(); //cuts in two along y axis
