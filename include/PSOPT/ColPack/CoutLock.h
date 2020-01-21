/************************************************************************************
    Copyright (C) 2005-2008 Assefaw H. Gebremedhin, Arijit Tarafdar, Duc Nguyen,
    Alex Pothen

    This file is part of ColPack.

    ColPack is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    ColPack is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with ColPack.  If not, see <http://www.gnu.org/licenses/>.
************************************************************************************/

#ifndef COUTLOCK_H
#define COUTLOCK_H

#ifdef _OPENMP
	#include <omp.h>
#endif

namespace ColPack
{
	/** @ingroup group4
	 *  @brief class CoutLock in @link group4@endlink.

	 The CoutLock class is used in a multi-thread environment to support printing strings to standard output in a readable manner.
	 Here is how you do cout:
	 CoutLock::set(); cout<<"blah blah blah"<<int<<endl;CoutLock::unset();
	 */

	class CoutLock
	{
	public:
#ifdef _OPENMP
		static omp_lock_t coutLock;
#endif

		static int set();
		static int unset();
	};
}
#endif
